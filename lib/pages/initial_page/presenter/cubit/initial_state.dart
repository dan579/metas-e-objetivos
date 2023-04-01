import 'package:equatable/equatable.dart';

abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

class SearchConfigurationsState extends SplashState{
 const SearchConfigurationsState();
}

class SuccessSplashState extends SplashState{
  const SuccessSplashState();
}

class LoadingSplashState extends SplashState {
const LoadingSplashState();
}