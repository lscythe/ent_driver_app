part of 'connectivity_cubit.dart';

class ConnectivityState extends Equatable {
  
  final bool isConnected;

  const ConnectivityState.init() : isConnected = false;
  const ConnectivityState.connected() : isConnected = true;
  const ConnectivityState.disconnected() : isConnected = false;


  @override
  List<Object?> get props => [isConnected];
}
