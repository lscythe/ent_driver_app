import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:driver/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({super.key});

  static const String path = "/trip";
  static const String name = "trip_screen";

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  late RefreshController _refreshController;

  DateTime _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();

    _refreshController = RefreshController();
    context.read<TripCubit>().postTransportLocation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TripCubit, TripState>(
      builder: (context, state) => Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: Paddings.a16.size,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        if (state.containerFilters.isNotEmpty) {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => ContainerListDialog(
                              selectedDate: _selectedDate,
                            ),
                          );
                        } else {
                          context.scaffoldMessage.showSnackBar(
                            SnackBar(
                              content:
                                  Text(context.localization.changeDateError),
                            ),
                          );
                        }
                      },
                      child: _filterWidget(
                        context.localization.vehicleFilter,
                      ),
                    ),
                    Spaces.w8.size,
                    InkWell(
                      onTap: () async {
                        await _filterByDate();
                        _getNewDataByDate();
                      },
                      child: _filterWidget(context.localization.date),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SmartRefresher(
                  controller: _refreshController,
                  header: const ClassicHeader(),
                  child: state.tripForms.isNotEmpty ||
                          (state.isFiltered &&
                              state.filteredTripForms.isNotEmpty)
                      ? ListView.builder(
                          itemCount: !state.isFiltered
                              ? state.tripForms.length
                              : state.filteredTripForms.length,
                          itemBuilder: (context, index) {
                            final tripForm = !state.isFiltered
                                ? state.tripForms[index]
                                : state.filteredTripForms[index];

                            return InkWell(
                              onTap: () async {
                                final bool? refresh = await context.push<bool>(
                                  TripFormDetail.path,
                                  extra: tripForm,
                                );

                                if (refresh ?? false) {
                                  _refreshController.requestRefresh();
                                }
                              },
                              child: Padding(
                                padding: Paddings.a10.size,
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          tripForm.containerNumber.orEmpty,
                                          style: context.textTheme.titleMedium
                                              ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              tripForm.shiftDate
                                                      ?.ddMmmYyyyHhMmA ??
                                                  "",
                                              style: context.textTheme.bodySmall
                                                  ?.copyWith(
                                                color: context
                                                    .colorScheme.onBackground
                                                    .withOpacity(0.5),
                                              ),
                                            ),
                                            Spaces.w4.size,
                                            const Icon(
                                              Icons.edit,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Spaces.h8.size,
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            context.localization.tripFrom(
                                              tripForm.transportFrom.orEmpty,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Spaces.w12.size,
                                        Expanded(
                                          child: Text(
                                            context.localization.tripTo(
                                              tripForm.deliveryTo.orEmpty,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Spaces.w12.size,
                                        Expanded(
                                          child: Text(
                                            context.localization.tripSize(
                                              tripForm.size.toString(),
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
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
                                Assets.images.emptyForm.image(scale: 6),
                                Text(
                                  context.localization.tripFormFilterErrorTitle,
                                  style: context.textTheme.titleMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  context.localization.tripFormFilterErrorDesc,
                                  style: context.textTheme.bodyMedium,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                  onRefresh: () => context
                      .read<TripCubit>()
                      .postListTrip(date: _selectedDate),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 1,
            right: 1,
            child: Padding(
              padding: Paddings.a18.size,
              child: FloatingActionButton(
                onPressed: () async {
                  final bool? refresh =
                      await context.push<bool>(TripFormDetail.path);

                  if (refresh ?? false) {
                    _refreshController.requestRefresh();
                  }
                },
                shape: const CircleBorder(),
                child: Icon(
                  Icons.add,
                  color: context.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          if (state.state == PageState.loading && !_refreshController.isRefresh)
            const LoadingIndicator()
          else
            Container(),
        ],
      ),
      listener: (context, state) {
        if (state.state != PageState.loading) {
          _refreshController.refreshCompleted();
        }
        if (state.errorMessage?.isNotEmpty ?? false) {
          context.scaffoldMessage
              .showSnackBar(_errorSnackBar(state.errorMessage!));
          context.read<TripCubit>().resetErrorMessage();
        }
      },
    );
  }

  Widget _filterWidget(String label, {VoidCallback? onPressed}) => InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Text(
              label,
              style: context.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      );

  Future<void> _filterByDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2050),
      builder: (context, child) => Theme(
        data: context.theme.copyWith(
          datePickerTheme: DatePickerThemeData(
            surfaceTintColor: context.colorScheme.background,
          ),
        ),
        child: child!,
      ),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  void _getNewDataByDate() =>
      context.read<TripCubit>().postListTrip(date: _selectedDate);

  SnackBar _errorSnackBar(String message) => SnackBar(content: Text(message));
}
