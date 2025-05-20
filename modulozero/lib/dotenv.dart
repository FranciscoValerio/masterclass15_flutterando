import 'dart:async';
import 'dart:convert';
import 'dart:io';

void dotenv() async {
  final dotenv = ReaderDotEnv();
  await dotenv.readFile('dados.env');

  print('DotEnv');
  print(
    'DATABASE_URL -> ${dotenv.getValue('DATABASE_URL')}, type: ${dotenv.getValue('DATABASE_URL').runtimeType}',
  );
  print(
    'IS_ADMIN -> ${dotenv.getValue('IS_ADMIN')}, type: ${dotenv.getValue('IS_ADMIN').runtimeType}',
  );
  print(
    'REFRESH_TIME -> ${dotenv.getValue('REFRESH_TIME')}, type: ${dotenv.getValue('REFRESH_TIME').runtimeType}',
  );
}

class ReaderDotEnv {
  Map<String, dynamic>? _rows;

  dynamic getValue(String key) {
    dynamic value;
    if (_rows != null && _rows!.containsKey(key)) {
      value = _rows?[key];
    }

    return value;
  }

  Future<void> readFile(String fileName) async {
    _rows = {};
    final file = File(fileName);
    Stream<String> lines = file
        .openRead()
        .transform(utf8.decoder)
        .transform(LineSplitter());

    await for (var line in lines) {
      final index = line.indexOf('=');

      if (index >= 0) {
        final key = line.substring(0, index).trim();
        final value = _getValue(line.substring(index + 1));
        _rows?[key] = value;
      }
    }
  }

  dynamic _getValue(String value) {
    dynamic primitive;
    String newValue;
    final index = value.indexOf('#');

    if (index >= 0) {
      newValue = value.substring(0, index).trim();
    } else {
      newValue = value.trim();
    }

    if (newValue.contains('"') || newValue.contains("'")) {
      primitive = newValue;
    } else if (newValue.contains('true') || newValue.contains("false")) {
      if (newValue == 'true') {
        primitive = true;
      } else {
        primitive = false;
      }
    } else if (newValue.contains('.')) {
      primitive = double.tryParse(newValue) ?? 0.0;
    } else if (RegExp(r'^[0-9]+$').hasMatch(newValue)) {
      primitive = int.tryParse(newValue) ?? 0;
    }

    return primitive;
  }
}
