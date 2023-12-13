import 'package:driver/services/service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late StorageService storageService;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    storageService = StorageService(mockSharedPreferences);
  });

  group('StorageService', () {
    test('write and read String', () async {
      when(mockSharedPreferences.setString('key', 'value'))
          .thenReturn(Future.value(true));
      await storageService.write(key: 'key', value: 'value');
      verify(mockSharedPreferences.setString('key', 'value'));

      when(mockSharedPreferences.getString('key')).thenReturn('value');
      expect(storageService.getString('key'), 'value');
    });

    test('write and read bool', () async {
      when(mockSharedPreferences.setBool('key', true))
          .thenAnswer((_) async => true);
      await storageService.write(key: 'key', value: true);
      verify(mockSharedPreferences.setBool('key', true));

      when(mockSharedPreferences.getBool('key')).thenReturn(true);
      expect(storageService.getBool('key'), true);
    });

    test('write and read double', () async {
      when(mockSharedPreferences.setDouble('key', 1.0))
          .thenAnswer((_) async => true);
      await storageService.write(key: 'key', value: 1.0);
      verify(mockSharedPreferences.setDouble('key', 1.0));

      when(mockSharedPreferences.getDouble('key')).thenReturn(1.0);
      expect(storageService.getDouble('key'), 1.0);
    });

    test('write and read int', () async {
      when(mockSharedPreferences.setInt('key', 1))
          .thenAnswer((_) async => true);
      await storageService.write(key: 'key', value: 1);
      verify(mockSharedPreferences.setInt('key', 1));

      when(mockSharedPreferences.getInt('key')).thenReturn(1);
      expect(storageService.getInt('key'), 1);
    });

    test('write and read List<String>', () async {
      when(mockSharedPreferences.setStringList('key', ['value']))
          .thenAnswer((_) async => true);
      await storageService.write(key: 'key', value: ['value']);
      verify(mockSharedPreferences.setStringList('key', ['value']));

      when(mockSharedPreferences.getStringList('key')).thenReturn(['value']);
      expect(storageService.getStringList('key'), ['value']);
    });

    test('write unsupported type', () async {
      expect(
        () => storageService.write(key: 'key', value: {}),
        throwsA(isA<String>()),
      );
    });
  });
}
