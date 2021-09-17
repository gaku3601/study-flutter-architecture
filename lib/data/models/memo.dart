class Memo {
  final String id;
  final String title;
  final String contents;

  Memo({
    required this.id,
    required this.title,
    required this.contents,
  });

  Memo.initialize()
      : id = '',
        title = '',
        contents = '';
}
