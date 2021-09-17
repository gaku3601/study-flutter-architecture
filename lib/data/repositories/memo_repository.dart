import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:study_flutter_architecture/data/models/memo.dart';

final memoRepositoryProvider = Provider((ref) => MemoRepository());

class MemoRepository {
  Future<Memo> fetchMemo() async {
    return Memo(
      id: 'id',
      title: 'title',
      contents: 'contents',
    );
  }

  Future<Memo> updateMemo() async {
    return Memo(
      id: 'id',
      title: 'updateTitle',
      contents: 'updateContents',
    );
  }
}
