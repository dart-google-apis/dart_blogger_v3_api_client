part of blogger_v3_api;

class SchemaArray<E> extends dart_collection.ListBase<E> {
  core.List innerList = new core.List();

  core.int get length => innerList.length;

  void set length(core.int length) {
    innerList.length = length;
  }

  void operator[]=(core.int index, E value) {
    innerList[index] = value;
  }

  E operator [](core.int index) => innerList[index];

  // Though not strictly necessary, for performance reasons
  // you should implement add and addAll.

  void add(E value) => innerList.add(value);

  void addAll(core.Iterable<E> all) => innerList.addAll(all);
}


class SchemaAnyObject implements core.Map {
  core.Map innerMap = new core.Map();
  void clear() => innerMap.clear();
  core.bool containsKey(core.Object key) => innerMap.containsKey(key);
  core.bool containsValue(core.Object value) => innerMap.containsValue(value);
  void forEach(void f(key, value)) => innerMap.forEach(f);
  core.bool get isEmpty => innerMap.isEmpty;
  core.bool get isNotEmpty => innerMap.isNotEmpty;
  core.Iterable get keys => innerMap.keys;
  core.int get length => innerMap.length;
  putIfAbsent(key, ifAbsent()) => innerMap.putIfAbsent(key, ifAbsent);
  remove(core.Object key) => innerMap.remove(key);
  core.Iterable get values => innerMap.values;
  void addAll(core.Map other) => innerMap.addAll(other);
  operator [](core.Object key) => innerMap[key];
  void operator []=(key, value) { 
    innerMap[key] = value;
  }
}

