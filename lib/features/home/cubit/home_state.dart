part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.index,
    required this.state,
    required this.hasCheckIn,
    required this.homeError,
  });

  const HomeState.init()
      : index = 0,
        state = PageState.idle,
        hasCheckIn = false,
        homeError = HomeError.none;

  final int index;
  final PageState state;
  final bool hasCheckIn;
  final HomeError homeError;

  HomeState copyWith({
    int? index,
    PageState? state,
    bool? hasCheckIn,
    HomeError? homeError,
  }) =>
      HomeState(
        index: index ?? this.index,
        state: state ?? this.state,
        hasCheckIn: hasCheckIn ?? this.hasCheckIn,
        homeError: homeError ?? this.homeError,
      );

  @override
  List<Object?> get props => <Object?>[index, state, hasCheckIn];
}
