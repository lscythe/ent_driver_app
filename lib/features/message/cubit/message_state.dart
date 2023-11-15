part of 'message_cubit.dart';

class MessageState extends Equatable {
  const MessageState({
    required this.state,
    this.errorMessage,
    this.alertMessages,
    this.allMessages,
    this.requestMessages,
    this.broadcastMessages,
    required this.unreadAlertMessageTotal,
    required this.unreadAllMessageTotal,
    required this.unreadBroadcastMessageTotal,
    required this.unreadRequestMessageTotal,
  });

  const MessageState.init()
      : state = PageState.idle,
        errorMessage = null,
        allMessages = null,
        alertMessages = null,
        requestMessages = null,
        broadcastMessages = null,
        unreadAllMessageTotal = 0,
        unreadRequestMessageTotal = 0,
        unreadAlertMessageTotal = 0,
        unreadBroadcastMessageTotal = 0;

  final PageState state;
  final String? errorMessage;
  final List<MessageResponse>? allMessages;
  final List<MessageResponse>? alertMessages;
  final List<MessageResponse>? requestMessages;
  final List<MessageResponse>? broadcastMessages;
  final int unreadAllMessageTotal;
  final int unreadAlertMessageTotal;
  final int unreadRequestMessageTotal;
  final int unreadBroadcastMessageTotal;

  MessageState copyWith({
    PageState? state,
    String? errorMessage,
    List<MessageResponse>? allMessages,
    List<MessageResponse>? alertMessages,
    List<MessageResponse>? requestMessages,
    List<MessageResponse>? broadcastMessages,
    int? unreadAllMessageTotal,
    int? unreadAlertMessageTotal,
    int? unreadRequestMessageTotal,
    int? unreadBroadcastMessageTotal,
  }) =>
      MessageState(
        state: state ?? this.state,
        errorMessage: errorMessage ?? this.errorMessage,
        allMessages: allMessages ?? this.allMessages,
        alertMessages: alertMessages ?? this.alertMessages,
        requestMessages: requestMessages ?? this.requestMessages,
        broadcastMessages: broadcastMessages ?? this.broadcastMessages,
        unreadAllMessageTotal:
            unreadAllMessageTotal ?? this.unreadAllMessageTotal,
        unreadAlertMessageTotal:
            unreadAlertMessageTotal ?? this.unreadAlertMessageTotal,
        unreadRequestMessageTotal:
            unreadRequestMessageTotal ?? this.unreadRequestMessageTotal,
        unreadBroadcastMessageTotal:
            unreadBroadcastMessageTotal ?? this.unreadBroadcastMessageTotal,
      );

  @override
  List<Object?> get props => [state, errorMessage];
}
