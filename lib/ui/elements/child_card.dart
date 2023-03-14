import 'package:flutter/cupertino.dart';

import '../../models/child.dart';

class ChildCard extends StatefulWidget {
  const ChildCard({required this.child, Key? key}) : super(key: key);
  final Child child;

  @override
  State<ChildCard> createState() => _ChildCardState();
}

class _ChildCardState extends State<ChildCard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
