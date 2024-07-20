import 'package:learn_riverpod/domain/models/item_model.dart';

abstract interface class IDataRepository {
  Future<List<ItemModel>> fetchItems();
}
