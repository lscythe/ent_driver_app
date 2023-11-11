import 'dart:async';

abstract class UseCase<T, P> {
  FutureOr<T> invoke({required P params});
}
