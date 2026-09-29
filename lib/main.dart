import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/features/doc_app.dart';

void main() {
  // Setup the router configuration
  AppRouter.setupRouter();
  runApp(const DocApp());
}


