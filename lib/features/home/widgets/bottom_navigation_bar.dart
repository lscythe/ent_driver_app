import 'package:driver/app/themes/themes.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KBottomNavigationBar extends StatelessWidget {
  const KBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listenWhen: (previous, current) => previous.hasCheckIn != current.hasCheckIn,
      buildWhen: (previous, current) => previous.index != current.index,
      listener: (context, state) {},
      builder: (context, state) {
        return Container();
      },
    );
  }
}
