import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/core/services/get_it_sevice.dart';
import 'package:flutter_advanced/features/doc_app.dart';
import 'package:flutter/services.dart';

void main() {
  setupGetIt();
  // Setup the router configuration
  AppRouter.setupRouter();
  log('Current app flavor $appFlavor');
  // appFlavor will match the flavor name from build.gradle.kts
  if (appFlavor == 'production') {
    // Logic for production environment
  } else if (appFlavor == 'development') {
    // Logic for staging environment
  }
  runApp(const DocApp());
}
