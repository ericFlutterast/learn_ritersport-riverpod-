import 'package:learn_riverpod/data/fake_data_sours.dart';
import 'package:learn_riverpod/data/repository.dart';
import 'package:learn_riverpod/domain/models/item_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'items_controller.g.dart';

@Riverpod()
Future<List<ItemModel>> fetchItemModels(FetchItemModelsRef ref) async {
  //TODO: something that's wrong
  final repository = DataRepository(fakeDataSours: FakeDataSours());
  return await repository.fetchItems();
}

// @Riverpod()
// class ItemsController extends _$ItemsController {
//   //TODO: hard in order for it to work
//   final IDataRepository repository = DataRepository(
//     fakeDataSours: FakeDataSours(),
//   );
//
//   @override
//   Future<List<ItemModel>> build() async => [];
//
//   Future<void> fetchData() async {
//     final result = await repository.fetchItems();
//     state = AsyncData(result);
//   }
// }
