import 'package:food_recipe/domain/repository/book_mark_repository.dart';

class MockBookmarRepositoryImpl implements BookMarkRepository {
  final _ids = <int>{2, 3, 4};

  @override
  Future<List<int>> getBookmarkIds() async {
    return _ids.toList();
  }

  @override
  Future<void> clear() async {
    _ids.clear();
  }

  @override
  Future<void> save(int id) async {
    _ids.add(id);
  }

  @override
  Future<void> unSave(int id) async {
    _ids.remove(id);
  }

  @override
  Future<void> toggle(int id) async {
    if (_ids.contains(id)) {
      unSave(id);
    } else {
      save(id);
    }
  }
}
