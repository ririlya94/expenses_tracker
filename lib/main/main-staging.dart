import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../common.dart';
import 'FlavorConfig.dart';

void main() {
  FlavorConfig(flavor: Flavor.STAGING);
  // initializeApp();
  runApp(ProviderScope(
    child: const MyApp(),
  ));
}