import 'package:flutter/material.dart';
import 'package:popp/models/memo.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.item});
  final MemoModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            child: item.image != null ? Image.memory(item.image!) : null,
          ),
          ListTile(
            title: Text(item.title),
            subtitle: Text(item.url),
          ),
        ],
      ),
    );
  }
}
