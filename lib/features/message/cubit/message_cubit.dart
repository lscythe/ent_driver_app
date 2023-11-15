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

  Future<void> init() async {
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
    final user = await _authRepository.getCurrentUser();
    final request = MessageRequest(
      drivers: [user?.id ?? 0],
      type: type != MessageType.all ? type.name : null,
    );

    final result = await _driverRepository.postMessage(request);

    if (result is Success) {
      emit(
        state.copyWith(
          state: PageState.success,
          broadcastMessages: type == MessageType.broadcast ? result.data : null,
          requestMessages: type == MessageType.requests ? result.data : null,
          alertMessages: type == MessageType.alerts ? result.data : null,
          allMessages: type == MessageType.all ? result.data : null,
        ),
      );
    } else {
      emit(
        state.copyWith(
          state: PageState.failure,
          errorMessage: result.message,
        ),
      );
    }
  }

  Future<int> getUnreadMessageCount(String type) async =>
      _driverRepository.getUnreadMessageCount(type);
}
