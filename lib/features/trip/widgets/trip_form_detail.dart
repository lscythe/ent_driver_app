import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/models/models.dart';
import 'package:driver/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TripFormDetail extends StatefulWidget {
  const TripFormDetail({super.key, this.isEdit = false, this.response});

  final bool isEdit;
  final ListTripFormResponse? response;

  static const path = "/trip-form-detail";
  static const name = "tripFormDetail";

  @override
  State<TripFormDetail> createState() => _TripFormDetailState();
}

class _TripFormDetailState extends State<TripFormDetail> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TripCubit, TripState>(
      builder: (context, state) => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text(
                widget.isEdit
                    ? context.localization.editTripForm
                    : context.localization.addTripForm,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => context.pop(false),
              ),
            ),
            body: Padding(
              padding: Paddings.a16.size,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            labelText: context.localization.containerNo,
                          ),
                          onChanged:
                              context.read<TripCubit>().onContainerNoChanged,
                          initialValue: widget.response?.containerNumber,
                        ),
                        Spaces.h16.size,
                        DropdownButtonFormField(
                          items: state.transportLocations
                              .map<DropdownMenuItem<String>>(
                                (e) => DropdownMenuItem(
                                  value: e.location.orEmpty,
                                  child: Text(e.location.orEmpty),
                                ),
                              )
                              .toList(),
                          onChanged:
                              context.read<TripCubit>().onTransportFromChanged,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            labelText: context.localization.transportFrom,
                          ),
                          value: state.transportFrom,
                        ),
                        Spaces.h16.size,
                        DropdownButtonFormField(
                          items: state.transportLocations
                              .map<DropdownMenuItem<String>>(
                                (e) => DropdownMenuItem(
                                  value: e.location.orEmpty,
                                  child: Text(e.location.orEmpty),
                                ),
                              )
                              .toList(),
                          onChanged:
                              context.read<TripCubit>().onDeliverToChanged,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            labelText: context.localization.deliverTo,
                          ),
                          value: state.deliveryTo,
                        ),
                        Spaces.h16.size,
                        DropdownButtonFormField<int>(
                          items: [20, 40]
                              .map<DropdownMenuItem<int>>(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text("$e"),
                                ),
                              )
                              .toList(),
                          onChanged:
                              context.read<TripCubit>().onContainerSizeChanged,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            labelText: context.localization.containerSize,
                          ),
                          value: widget.response != null
                              ? widget.response?.size
                              : state.containerSize,
                        ),
                      ],
                    ),
                  ),
                  KElevatedButton(
                    onPressed: state.containerNumber.isNotEmpty
                        ? () async {
                            await context
                                .read<TripCubit>()
                                .postTripForm()
                                .whenComplete(() => context.pop(true));
                          }
                        : null,
                    mainAxisSize: MainAxisSize.max,
                    label: context.localization.submit,
                  ),
                ],
              ),
            ),
          ),
          if (state.state == PageState.loading)
            const LoadingIndicator()
          else
            Container(),
        ],
      ),
      listener: (context, state) {
        if (state.state == PageState.failure) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(state.errorMessage.orEmpty),
            ),
          );
        }
      },
    );
  }
}
