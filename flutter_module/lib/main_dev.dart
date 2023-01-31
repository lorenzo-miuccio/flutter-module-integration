import 'package:flutter/material.dart';
import 'package:flutter_module/app.dart';
import 'package:flutter_module/config/env.dart';

export 'package:flutter_module/main_prod.dart';

@pragma('vm:entry-point')
void main() => runApp(MyApp(Env.dev()));