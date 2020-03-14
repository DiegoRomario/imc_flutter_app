import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:imc_flutter_app/ui/android/my-material-app.dart';
import 'package:imc_flutter_app/ui/ios/my-cupertino-app.dart';

void main() =>
    Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());
