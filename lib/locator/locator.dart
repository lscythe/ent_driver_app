import 'package:driver/locator/locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt locator = GetIt.instance;

@injectableInit
Future<void> configureDependencies() => locator.init();
