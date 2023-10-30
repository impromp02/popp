import 'package:flutter/material.dart';
import 'package:popp/models/memo.dart';
import 'package:popp/services/memo_service.dart';

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
      body: FutureBuilder(
          future: futureMemos,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            } else {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      print(index);
                      final item = snapshot.data![index];
                      return ListTile(
                        title: Text(item.title),
                        subtitle: Text(item.url),
                      );
                    });
              } else {
                throw Exception('Failed to load memos data.');
              }
            }
          }),
    );
  }
}
