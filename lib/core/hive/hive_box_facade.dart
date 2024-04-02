import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveBoxFacade<TableType> {
  HiveBoxFacade({
    required this.boxName,
  }) {
    _init();
  }

  final String boxName;
  late final Future<Box<TableType>> boxInstance;

  void _init() {
    boxInstance = Hive.openBox(boxName);
  }

  void registerAdapter<T>(TypeAdapter<T> adapterToRegister) {
    if (!Hive.isAdapterRegistered(adapterToRegister.typeId)) {
      Hive.registerAdapter<T>(adapterToRegister);
    }
  }

  Future<Box<TableType>> _openBox() async {
    final box = await boxInstance;
    if (!box.isOpen) {
      _init();
      return boxInstance;
    }
    return box;
  }

  Future<Option<TableType>> get(String key) async {
    final box = await _openBox();
    return Option.fromNullable(box.get(key));
  }

  Future<List<TableType>> getAll() async {
    final box = await _openBox();
    return box.toMap().values.toList();
  }

  Future<Unit> put(String key, TableType value) async {
    final box = await _openBox();
    await box.put(key, value);
    return unit;
  }

  Future<Unit> add(TableType value) async {
    final box = await _openBox();
    await box.add(value);
    return unit;
  }

  Future<Unit> putAll(Map<String, TableType> items) async {
    final box = await _openBox();
    await box.putAll(items);
    return unit;
  }

  Future<Unit> addAll(List<TableType> items) async {
    final box = await _openBox();
    await box.addAll(items);
    return unit;
  }

  Future<Unit> delete(String key) async {
    final box = await _openBox();
    await box.delete(key);
    return unit;
  }

  Future<Unit> deleteAll() async {
    final box = await _openBox();
    final boxKeys = await keys;
    await box.deleteAll(boxKeys);
    return unit;
  }

  Future<List<String>> get keys async {
    final box = await _openBox();
    return box.keys.map((k) => k.toString()).toList();
  }
}
