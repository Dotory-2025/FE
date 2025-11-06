import 'package:dotori/core/widgets/app_bars/app_bar_logo.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBarLogo.logo(),);
  }
}
