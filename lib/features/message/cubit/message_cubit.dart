import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'message_state.dart';

@lazySingleton
class MessageCubit extends Cubit<MessageState> {
  MessageCubit(this._driverRepository, this._authRepository)
      : super(const MessageState.init());

  final DriverRepository _driverRepository;
  final AuthRepository _authRepository;

  Future<void> getUnreadMessage() async {
    for (final type in MessageType.values) {
      final count = await _driverRepository.getUnreadMessageCount(type.name);
      emit(
        state.copyWith(
          unreadAllMessageTotal: type == MessageType.all ? count : null,
          unreadAlertMessageTotal: type == MessageType.alerts ? count : null,
          unreadRequestMessageTotal:
              type == MessageType.requests ? count : null,
          unreadBroadcastMessageTotal:
              type == MessageType.broadcast ? count : null,
        ),
      );
    }
  }

  Future<void> postMessages(MessageType type) async {
    emit(state.copyWith(state: PageState.loading));
    final user = await _authRepository.getCurrentUser();
    final request = MessageRequest(
      drivers: [user?.id ?? 0],
      type: type != MessageType.all ? type.name : null,
    );
    final result = await _driverRepository.postMessage(request);

    if (result is Success) {
      switch (type) {
        case MessageType.all:
          emit(
            state.copyWith(
              state: PageState.success,
              allMessages: result.data,
            ),
          );
        case MessageType.alerts:
          emit(
            state.copyWith(
              state: PageState.success,
              alertMessages: result.data,
            ),
          );
        case MessageType.requests:
          emit(
            state.copyWith(
              state: PageState.success,
              requestMessages: result.data,
            ),
          );
        case MessageType.broadcast:
          emit(
            state.copyWith(
              state: PageState.success,
              broadcastMessages: result.data,
            ),
          );
      }
      await getUnreadMessage();
    } else {
      emit(
        state.copyWith(
          state: PageState.failure,
          errorMessage: result.message,
        ),
      );
    }
  }

  Future<void> onMessageIsRead(int id, MessageType type) async {
    await _driverRepository.updateMessageOnRead(id);
    await postMessages(type);
    emit(state);
  }

  void resetErrorMessage() => emit(state.copyWith(errorMessage: ""));
}
