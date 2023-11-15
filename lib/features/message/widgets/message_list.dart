import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:driver/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MessageList extends StatefulWidget {
  const MessageList({super.key, required this.type, required this.controller});

  final MessageType type;
  final RefreshController controller;

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  @override
  void initState() {
    super.initState();
    context.read<MessageCubit>().postMessages(widget.type);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MessageCubit, MessageState>(
      builder: (context, state) {
        final messages = switch (widget.type) {
          MessageType.all => state.allMessages ?? [],
          MessageType.alerts => state.alertMessages ?? [],
          MessageType.requests => state.requestMessages ?? [],
          MessageType.broadcast => state.broadcastMessages ?? [],
        };

        return Stack(
          children: [
            SmartRefresher(
              controller: widget.controller,
              header: const ClassicHeader(),
              child: messages.isNotEmpty
                  ? ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final message = messages[index];
                        return InkWell(
                          onTap: () async {
                            showDialog(
                              context: context,
                              builder: (context) =>
                                  MessageDialog(message: message),
                            );

                            await context
                                .read<MessageCubit>()
                                .onMessageIsRead(message.id, widget.type);
                          },
                          child: ColoredBox(
                            color: message.isRead
                                ? context.colorScheme.background
                                : context.colorScheme.primary.withOpacity(0.15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        message.title.orEmpty,
                                        style: context.textTheme.titleMedium
                                            ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        message.date?.ddMmmYyyyHhMmA ?? "",
                                        style: context.textTheme.labelMedium
                                            ?.copyWith(
                                          color: context
                                              .colorScheme.onBackground
                                              .withOpacity(0.6),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  child: Text(
                                    message.message.orEmpty,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Spaces.h8.size,
                                Divider(
                                  color: context.colorScheme.onBackground
                                      .withOpacity(0.2),
                                  height: 0,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Padding(
                        padding: Paddings.a16.size,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Assets.images.emptyMessage.image(scale: 6),
                            Text(
                              context.localization.emptyMessageTitle,
                              style: context.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              context.localization.emptyMessageDesc(
                                widget.type.name.capitalize(),
                              ),
                              style: context.textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
              onRefresh: () =>
                  context.read<MessageCubit>().postMessages(widget.type),
            ),
            if (state.state == PageState.loading &&
                !widget.controller.isRefresh)
              const LoadingIndicator()
            else
              Container(),
          ],
        );
      },
      listener: (context, state) {
        if (state.state != PageState.loading) {
          widget.controller.refreshCompleted();
        }
      },
    );
  }
}
