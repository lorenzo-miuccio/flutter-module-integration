//const env = String.fromEnvironment('env', defaultValue: 'dev');

abstract class Env {
  String get appName;

  factory Env.dev() = _Dev;

  factory Env.prod() = _Prod;
}

class _Dev implements Env {
  @override
  String get appName => 'Flutter module DEV';
  
}

class _Prod implements Env {
  @override
  String get appName => 'Flutter module PROD';
  
}
