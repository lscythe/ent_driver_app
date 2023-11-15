import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'message_state.dart';

@lazySingleton
class MessageCubit extends Cubit<MessageState> {
  MessageCubit(this._repository) : super(const MessageState.init());

  final DriverRepository _repository;
}
