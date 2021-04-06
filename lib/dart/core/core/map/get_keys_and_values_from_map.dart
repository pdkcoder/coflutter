void main() {
  Map<String, String> map = {
    'name': 'Phuc Tran',
    'email': 'phuc.tran@nextfunc.com',
    'website': 'https://coflutter.com'
  };

  getKeysFromMap(map);
  getValuesFromMap(map);
  getKeysAndValuesUsingForEach(map);
  getKeysAndValuesUsingEntries(map);
}

void getKeysFromMap(Map map) {
  print('----------');
  print('Get keys:');
  // Get all keys
  map.keys.forEach((key) {
    print(key);
  });
}

void getValuesFromMap(Map map) {
  // Get all values
  print('----------');
  print('Get values:');
  map.values.forEach((value) {
    print(value);
  });
}

void getKeysAndValuesUsingForEach(Map map) {
  // Get all keys and values at the same time using map.forEach
  print('----------');
  print('Get keys and values using map.forEach:');
  map.forEach((key, value) {
    print('Key = $key : Value = $value');
  });
}

void getKeysAndValuesUsingEntries(Map map) {
  // Get all keys and values at the same time using entries
  print('----------');
  print('Get keys and values using entries:');
  map.entries.forEach((entry) {
    print('Key = ${entry.key} : Value = ${entry.value}');
  });
}
