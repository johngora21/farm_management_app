import 'package:flutter/material.dart';

class FarmManagementPage extends StatelessWidget {
  const FarmManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farm Management'),
      ),
      body: const Center(
        child: Text('Farm Management Page'),
      ),
    );
  }
}
