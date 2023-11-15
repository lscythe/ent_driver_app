import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/checkin/cubit/checkin_cubit.dart';
import 'package:driver/features/features.dart';
import 'package:driver/models/models.dart';
import 'package:driver/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VehicleCheckListDialog extends StatefulWidget {
  const VehicleCheckListDialog({super.key});

  @override
  State<VehicleCheckListDialog> createState() => _VehicleCheckListDialogState();
}

class _VehicleCheckListDialogState extends State<VehicleCheckListDialog> {
  late List<Question> answer;

  @override
  void initState() {
    super.initState();
    answer = context.read<CheckInCubit>().state.vehicleCheckAnswer;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckInCubit, CheckInState>(
      builder: (context, state) => Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: Paddings.a16.size,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localization.vehicleCheckList,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spaces.h16.size,
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.vehicleChecks?.length,
                        itemBuilder: (context, index) {
                          final title =
                              state.vehicleChecks?[index].value.orEmpty ?? "";

                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${index + 1}."),
                                  Spaces.w8.size,
                                  Expanded(child: Text(title)),
                                ],
                              ),
                              Row(
                                children: [
                                  _radioAnswer(
                                    answer[index].value,
                                    true,
                                    onChanged: (value) => _updateAnswer(
                                      value ?? false,
                                      index,
                                    ),
                                  ),
                                  _radioAnswer(
                                    answer[index].value,
                                    false,
                                    onChanged: (value) => _updateAnswer(
                                      value ?? false,
                                      index,
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(),
                            ],
                          );
                        },
                      ),
                    ),
                    Spaces.h16.size,
                    KElevatedButton(
                      onPressed: () =>
                          context.read<CheckInCubit>().postVehicleCheck(
                                answer,
                              ),
                      label: context.localization.submit,
                      mainAxisSize: MainAxisSize.max,
                    ),
                  ],
                ),
              ),
              if (state.state == PageState.loading)
                const LoadingIndicator()
              else
                Container(),
            ],
          ),
        ),
      ),
      listener: (context, state) {
        if (state.state == PageState.success) {
          context.dismiss();
        }
      },
    );
  }

  Widget _radioAnswer(
    bool groupValue,
    bool value, {
    Function(bool? value)? onChanged,
  }) =>
      BlocBuilder<CheckInCubit, CheckInState>(
        builder: (context, state) => Row(
          children: [
            Radio<bool>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
            ),
            Text(
              value ? context.localization.yes : context.localization.no,
            ),
          ],
        ),
      );

  void _updateAnswer(bool value, int index) {
    setState(() {
      answer[index].value = value;
    });
  }
}
