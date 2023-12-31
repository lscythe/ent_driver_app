import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  static const String path = "/message";
  static const String name = "message_screen";

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  final RefreshController _allMessageController = RefreshController();
  final RefreshController _alertMessageController = RefreshController();
  final RefreshController _requestMessageController = RefreshController();
  final RefreshController _broadcastMessageController = RefreshController();

  late List<Widget> _tabViews;

  @override
  void initState() {
    super.initState();
    _tabViews = [
      MessageList(
        type: MessageType.all,
        controller: _allMessageController,
      ),
      MessageList(
        type: MessageType.alerts,
        controller: _alertMessageController,
      ),
      MessageList(
        type: MessageType.requests,
        controller: _requestMessageController,
      ),
      MessageList(
        type: MessageType.broadcast,
        controller: _broadcastMessageController,
      ),
    ];
    _tabController = TabController(length: _tabViews.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MessageCubit, MessageState>(
      builder: (context, state) => Column(
        children: [
          PreferredSize(
            preferredSize: _tabBar(state).preferredSize,
            child: ColoredBox(
              color: context.colorScheme.primary,
              child: _tabBar(state),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _tabViews,
            ),
          ),
        ],
      ),
      listener: (context, state) {
        if (state.errorMessage?.isNotEmpty ?? false) {
          context.scaffoldMessage
              .showSnackBar(_errorSnackBar(state.errorMessage!));
          context.read<MessageCubit>().resetErrorMessage();
        }
      },
    );
  }

  TabBar _tabBar(MessageState state) => TabBar(
        labelStyle: context.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        labelColor: context.colorScheme.onSecondary,
        unselectedLabelStyle: context.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: context.colorScheme.onPrimary.withOpacity(0.6),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(KRadius.r10.size),
          color: context.colorScheme.secondary,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.tab,
        tabAlignment: TabAlignment.center,
        indicatorWeight: 0,
        tabs: [
          KTab(
            label: context.localization.allMessage,
            messageTotal: state.unreadAllMessageTotal,
            isSelected: _currentIndex == 0,
          ),
          KTab(
            label: context.localization.alertMessage,
            messageTotal: state.unreadAlertMessageTotal,
            isSelected: _currentIndex == 1,
          ),
          KTab(
            label: context.localization.requestMessage,
            messageTotal: state.unreadRequestMessageTotal,
            isSelected: _currentIndex == 2,
          ),
          KTab(
            label: context.localization.broadcastMessage,
            messageTotal: state.unreadBroadcastMessageTotal,
            isSelected: _currentIndex == 3,
          ),
        ],
        controller: _tabController,
      );

  SnackBar _errorSnackBar(String message) => SnackBar(content: Text(message));
}
