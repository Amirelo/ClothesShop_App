import 'package:flutter/material.dart';

class CustomScafford extends StatelessWidget {
  final Widget body;
  final Color? backgroundColor;
  const CustomScafford({super.key, required this.body, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
            child: Center(
          child: body,
        ))));
  }
}
