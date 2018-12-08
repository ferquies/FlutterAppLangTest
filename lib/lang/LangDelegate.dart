import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/lang/Lang.dart';


class LangDelegate extends LocalizationsDelegate<Lang> {
  const LangDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<Lang> load(Locale locale) async {
    Lang lang = new Lang(locale);
    await lang.load();

    print("Load ${locale.languageCode}");

    return lang;
  }

  @override
  bool shouldReload(LocalizationsDelegate<Lang> old) => false;
}