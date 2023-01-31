import 'package:flutter/material.dart';
import 'package:flutter_module/app.dart';
import 'package:flutter_module/config/env.dart';

@pragma('vm:entry-point')
void main() => runApp(MyApp(Env.dev()));