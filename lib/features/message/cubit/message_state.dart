part of 'message_cubit.dart';

class MessageState extends Equatable {
  const MessageState({
    required this.state,
    this.errorMessage,
  });

  const MessageState.init()
      : state = PageState.idle,
        errorMessage = null;

  final PageState state;
  final String? errorMessage;

  MessageState copyWith({PageState? state, String? errorMessage}) =>
      MessageState(
        state: state ?? this.state,
        errorMessage: errorMessage ?? this.errorMessage,
      );

  @override
  List<Object?> get props => [state, errorMessage];
}
