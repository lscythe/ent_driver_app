import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RequestLeaveDialog extends StatefulWidget {
  const RequestLeaveDialog({super.key, required this.day});

  final DateTime day;

  @override
  State<RequestLeaveDialog> createState() => _RequestLeaveDialogState();
}

class _RequestLeaveDialogState extends State<RequestLeaveDialog> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleCubit, ScheduleState>(
      builder: (context, state) => Container(
        color: context.colorScheme.background,
        padding: EdgeInsets.only(
          bottom: context.mediaQuery.viewInsets.bottom,
        ),
        child: Padding(
          padding: Paddings.a16.size,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.localization.requestLeave,
                    style: context.textTheme.titleLarge,
                  ),
                  IconButton(
                    onPressed: () => context.pop(),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const Divider(),
              Spaces.h12.size,
              DropdownButtonFormField<String>(
                isExpanded: true,
                items: state.leaveTypes
                    .map<DropdownMenuItem<String>>(
                      (e) => DropdownMenuItem(
                        value: e.description.orEmpty,
                        child: Center(child: Text(e.description.orEmpty)),
                      ),
                    )
                    .toList(),
                onChanged: context.read<ScheduleCubit>().onLeaveTypeChanges,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  labelText: context.localization.leaveType,
                ),
                value: state.leaveType,
              ),
              Spaces.h18.size,
              TextFormField(
                enabled: false,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  labelText: context.localization.leaveDate,
                ),
                textAlign: TextAlign.center,
                initialValue: widget.day.ddMMMyyyy,
              ),
              Spaces.h18.size,
              TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  labelText: context.localization.days,
                ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                onChanged: context.read<ScheduleCubit>().onLeaveDaysChanges,
              ),
              Spaces.h32.size,
              KElevatedButton(
                label: context.localization.submit,
                mainAxisSize: MainAxisSize.max,
                onPressed: state.leaveDays.isNotEmpty &&
                        state.leaveType.isNotEmpty
                    ? () async {
                        context.pop();
                        await context
                            .read<ScheduleCubit>()
                            .postRequestLeave(
                              widget.day,
                              errorMessage:
                                  context.localization.insufficientLeaveBalance(
                                state.leaveQuota.toString(),
                                state.leaveDays,
                              ),
                            )
                            .whenComplete(
                              () => context
                                  .read<HomeCubit>()
                                  .postTracking("REQUEST_LEAVE"),
                            );
                      }
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
