import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.action = const Icon(Icons.arrow_forward_ios_outlined),
  });
  final String title;
  final Icon action;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 10, 15, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white,
            size: 25,
          )
        ],
      ),
    );
  }
}
