import 'package:flutter/material.dart';
import 'package:travel_app/representation/widget/app_bar_container.dart';

class HoneScreen extends StatefulWidget {
  const HoneScreen({super.key});

  @override
  State<HoneScreen> createState() => _HoneScreenState();
}

class _HoneScreenState extends State<HoneScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      child: Container(
        color: Colors.amber,
      ),
    );
  }
}
