void main() {
  var maps1 = {
    'key1': 'value1',
    'key2': 'value2',
    'key3': 'value3',
  };

  var maps2 = Map<String, String>();
  maps2['key1'] = 'value1';
  maps2['key2'] = 'value2';
  maps2['key3'] = 'value3';

  var maps3 = <String, String>{
    'key1': 'value1',
    'key2': 'value2',
    'key3': 'value3',
  };

  var mapsTantangan = <int, String>{
    1: 'satu',
    2: 'dua',
    3: 'tiga',
    4: 'empat',
    5: 'lima',
    6: 'enam',
    7: 'tujuh',
    8: 'delapan',
    9: 'sembilan',
    10: 'sepuluh',
  };

  var mapsTantangan2 = <String, String>{
    "jakarta": "1",
    "bandung": "2",
    "surabaya": "3",
    "malang": "4",
    "papua": "5",
  };

  print("hello $mapsTantangan");
  print(mapsTantangan2);
}
