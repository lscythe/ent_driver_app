part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.index,
    required this.state,
    this.path = CheckInScreen.path,
    this.hasCheckIn = false,
  });

  const HomeState.init()
      : index = 0,
        state = PageState.idle,
        path = CheckInScreen.path,
        hasCheckIn = false;

  final int index;
  final String path;
  final PageState state;
  final bool hasCheckIn;

  HomeState copyWith(
          {int? index, String? path, PageState? state, bool? hasCheckIn}) =>
      HomeState(
        index: index ?? this.index,
        state: state ?? this.state,
        path: path ?? this.path,
        hasCheckIn: hasCheckIn ?? this.hasCheckIn,
      );

  @override
  List<Object?> get props => <Object?>[index, path];
}
