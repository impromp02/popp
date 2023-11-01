import 'dart:typed_data';

class MemoModel {
  final int id;
  final String title;
  final String url;
  final String source;
  final int dateAdded;
  final int? dateLastUsed;
  final bool flagged;
  final String mediaType;
  final String? description;
  final Uint8List? image;

  const MemoModel(
      {required this.id,
      required this.title,
      required this.url,
      required this.source,
      required this.dateAdded,
      this.dateLastUsed,
      required this.flagged,
      required this.mediaType,
      this.description,
      this.image});

  factory MemoModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic>? byteArray = json['image']?['data'];
    final List<int> intArray =
        byteArray?.map((e) => int.parse(e.toString())).toList() ?? List.empty();
    final Uint8List buff = Uint8List.fromList(intArray);

    return MemoModel(
      id: json['id'],
      title: json['title'],
      url: json['url'],
      source: json['source'],
      dateAdded: json['dateAdded'],
      dateLastUsed: json['dateLastUsed'],
      flagged: json['flagged'],
      mediaType: json['mediaType'],
      description: json['description'],
      image: buff,
    );
  }
}
