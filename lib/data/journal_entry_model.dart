class JournalEntry {
  final String id;
  final String title;
  final String content;
  final DateTime date;
  bool isCompleted;

  JournalEntry({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
    this.isCompleted = false,
  });
}