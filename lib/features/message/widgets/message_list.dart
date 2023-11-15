import 'package:driver/constants/constants.dart';
import 'package:driver/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MessageList extends StatefulWidget {
  const MessageList({super.key, required this.type});

  final MessageType type;

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  late RefreshController _refreshController;

  @override
  void initState() {
    super.initState();

    _refreshController = RefreshController();
    context.read<MessageCubit>().postMessages(widget.type);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MessageCubit, MessageState>(
      builder: (context, state) => SmartRefresher(
        controller: _refreshController,
        header: const ClassicHeader(),
        child: ListView.builder(
          itemCount: widget.type == MessageType.all
              ? state.allMessages?.length
              : widget.type == MessageType.alerts
                  ? state.alertMessages?.length
                  : widget.type == MessageType.requests
                      ? state.requestMessages?.length
                      : state.broadcastMessages?.length,
          itemBuilder: (context, index) {},
        ),
      ),
      listener: (context, state) {},
    );
  }
}
