import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bool isSuccess;
  const ResultScreen({super.key, required this.isSuccess});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          isSuccess ? "Success" : "Fail",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: isSuccess ? Colors.green : Colors.red,
                fontSize: 24,
              ),
        ),
      ),
    );
  }
}
