class MemoModel {
  final int id;
  final String title;
  final String url;
  final String source;
  final int dateAdded;
  final int dateLastUsed;
  final bool flagged;
  final String mediaType;

  const MemoModel(
      {required this.id,
      required this.title,
      required this.url,
      required this.source,
      required this.dateAdded,
      required this.dateLastUsed,
      required this.flagged,
      required this.mediaType});

  factory MemoModel.fromJson(Map<String, dynamic> json) {
    return MemoModel(
      id: json['id'],
      title: json['title'],
      url: json['url'],
      source: json['source'],
      dateAdded: json['dateAdded'],
      dateLastUsed: json['dateLastUsed'],
      flagged: json['flagged'],
      mediaType: json['mediaType'],
    );
  }
}
