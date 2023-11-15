import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:flutter/material.dart';

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

  final _tabViews = [
    Center(child: Text("1")),
    Center(child: Text("2")),
    Center(child: Text("3")),
    Center(child: Text("4")),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabViews.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
      print(_currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColoredBox(
          color: context.colorScheme.primary,
          child: TabBar(
            labelStyle: context.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            labelColor: context.colorScheme.onSecondary,
            unselectedLabelStyle: context.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor:
                context.colorScheme.onPrimary.withOpacity(0.6),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(KRadius.r10.size),
              color: context.colorScheme.secondary,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 0.0,
            tabs: [
              Tab(text: context.localization.allMessage),
              Tab(text: context.localization.alertMessage),
              Tab(text: context.localization.requestMessage),
              Tab(text: context.localization.broadcastMessage),
            ],
            controller: _tabController,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: _tabViews,
          ),
        ),
      ],
    );
  }
}
