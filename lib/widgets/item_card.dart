import 'package:flutter/material.dart';
import 'package:popp/models/memo.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.item});
  final MemoModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(item.title),
        subtitle: Text(item.url),
      ),
    );
  }
}
