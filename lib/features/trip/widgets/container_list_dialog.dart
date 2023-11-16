import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/models/models.dart';
import 'package:driver/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ContainerListDialog extends StatefulWidget {
  const ContainerListDialog({super.key, required this.selectedDate});

  final DateTime selectedDate;

  @override
  State<ContainerListDialog> createState() => _ContainerListDialogState();
}

class _ContainerListDialogState extends State<ContainerListDialog> {
  late List<ContainerFilter> _containerFilters;

  @override
  void initState() {
    super.initState();

    _containerFilters = context.read<TripCubit>().state.containerFilters;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripCubit, TripState>(
      builder: (context, state) => ColoredBox(
        color: context.colorScheme.background,
        child: Padding(
          padding: Paddings.a18.size,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${context.localization.filter}: ${context.localization.vehicleFilter}",
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spaces.h12.size,
              const Divider(),
              Spaces.h4.size,
              Expanded(
                child: ListView.builder(
                  itemCount: state.containerFilters.length,
                  itemBuilder: (context, index) {
                    final container = state.containerFilters[index];

                    return InkWell(
                      onTap: () {
                        setState(() {
                          _containerFilters[index].isEnable =
                              !_containerFilters[index].isEnable;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(container.name),
                                if (container.isEnable)
                                  const Icon(Icons.check)
                                else
                                  Container(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              KElevatedButton(
                label: context.localization.filter,
                mainAxisSize: MainAxisSize.max,
                onPressed: () {
                  context
                      .read<TripCubit>()
                      .filterByContainer(_containerFilters);
                  context.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
