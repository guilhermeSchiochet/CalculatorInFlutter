import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body,
    );
  }

  Widget get _body {
    return Row(
      children: [
        _containerExpanded(Colors.white),
        _containerExpanded(Colors.grey)
      ],
    );
  }

  Widget _containerExpanded(Color? color) {
    return Expanded(
      child: Container(
        color: color,
        child: const Center(child: Text('Hello world!')),
      )
    );
  }

}