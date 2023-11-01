import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:popp/models/memo.dart';
import 'package:popp/services/memo_service.dart';
import 'package:popp/widgets/item_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final Future<List<MemoModel>> futureMemos;

  @override
  void initState() {
    super.initState();
    futureMemos = MemoService.fetchMemos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: FutureBuilder(
          future: futureMemos,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else {
              if (snapshot.hasData) {
                final item = snapshot.data?[1];
                return ItemCard(item: item!);
              } else {
                throw Exception('Failed to load memos data.');
              }
            }
          }),
    );
  }
}
