import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Lang {
  Lang(this.locale);

  final Locale locale;

  static Lang of(BuildContext context) {
    return Localizations.of<Lang>(context, Lang);
  }

  Map<String, String> _sentences;

  Future<bool> load() async {
    String data = await rootBundle.loadString('resources/lang/${this.locale.languageCode}.json');
    this._sentences = json.decode(data);
    return true;
  }

  String get(String key) {
    return this._sentences[key];
  }
}