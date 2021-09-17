import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:study_flutter_architecture/data/models/memo.dart';
import 'package:study_flutter_architecture/data/repositories/memo_repository.dart';

final homeViewModelProvider = ChangeNotifierProvider((ref) => HomeViewModel(ref.read));

class HomeViewModel extends ChangeNotifier {
  final Reader _reader;
  HomeViewModel(this._reader);

  late final MemoRepository _repository = _reader(memoRepositoryProvider);

  Memo _memo = Memo.initialize();
  Memo get memo => _memo;

  Future fetchMemo() {
    return _repository.fetchMemo().then((value) => _memo = value).whenComplete(notifyListeners);
  }

  Future updateMemo() {
    return _repository.updateMemo().then((value) => _memo = value).whenComplete(notifyListeners);
  }
}
