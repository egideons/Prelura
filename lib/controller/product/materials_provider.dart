import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/model/product/material/material_model.dart';

final materialsProvider =
    AsyncNotifierProvider<_MaterialsProvider, List<MaterialModel>>(
        _MaterialsProvider.new);

class _MaterialsProvider extends AsyncNotifier<List<MaterialModel>> {
  late final _repository = ref.read(productRepo);
  // List<ServicePackageModel>? services;
  final int _pageCount = 20;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  @override
  Future<List<MaterialModel>> build() async {
    state = const AsyncLoading();
    _currentPage = 1;
    await _getMaterials(pageNumber: _currentPage);
    return state.value!;
  }

  Future<void> _getMaterials({int? pageNumber}) async {
    // final sort = ref.watch(sortAllServiceProvider);
    final result = await _repository.getMaterial(
      pageCount: _pageCount,
      pageNumber: pageNumber,
    );

    _brandTotalItems = result.materialsTotalNumber!;

    final newState =
        result.materials!.map((e) => MaterialModel.fromJson(e!.toJson()));
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      if (currentState.isNotEmpty &&
          newState.any((element) => currentState.last.id == element.id)) {
        return;
      }

      state = AsyncData([...currentState, ...newState]);
    }
    _currentPage = pageNumber!;
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;

    if (canLoadMore) {
      await _getMaterials(
        pageNumber: _currentPage + 1,
      );
    }
  }

  Future<void> fetchMoreHandler() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}

final searchMaterial =
    FutureProvider.family.autoDispose<List<MaterialModel>, String>(
  (ref, query) async {
    final repo = ref.watch(productRepo);

    final result = await repo.getMaterial(search: query);

    return result.materials!
        .map((e) => MaterialModel.fromJson(e!.toJson()))
        .toList();
  },
);
