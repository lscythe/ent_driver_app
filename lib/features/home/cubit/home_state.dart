part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.index,
    required this.state,
    required this.hasCheckIn,
    required this.homeError,
    this.errorMessage,
  });

  const HomeState.init()
      : index = 0,
        state = PageState.idle,
        hasCheckIn = false,
        homeError = HomeError.none,
        errorMessage = null;

  final int index;
  final PageState state;
  final bool hasCheckIn;
  final HomeError homeError;
  final String? errorMessage;

  HomeState copyWith({
    int? index,
    PageState? state,
    bool? hasCheckIn,
    HomeError? homeError,
    String? errorMessage,
  }) =>
      HomeState(
        index: index ?? this.index,
        state: state ?? this.state,
        hasCheckIn: hasCheckIn ?? this.hasCheckIn,
        homeError: homeError ?? this.homeError,
        errorMessage: errorMessage ?? this.errorMessage,
      );

  @override
  List<Object?> get props => <Object?>[
        index,
        state,
        hasCheckIn,
        homeError,
        errorMessage,
      ];
}
