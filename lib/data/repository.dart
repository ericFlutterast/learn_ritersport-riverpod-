import 'package:learn_riverpod/data/fake_data_sours.dart';
import 'package:learn_riverpod/domain/models/item_model.dart';
import 'package:learn_riverpod/domain/repository/data_repository_interface.dart';

class DataRepository implements IDataRepository {
  DataRepository({
    required FakeDataSours fakeDataSours,
  }) : _fakeDataSours = fakeDataSours;

  final FakeDataSours _fakeDataSours;

  @override
  Future<List<ItemModel>> fetchItems() async {
    final response = await _fakeDataSours.getItemsModelsJson();
    final data = (response as List).map((element) => ItemModel.fromJson(element)).toList();
    return data;
  }
}
