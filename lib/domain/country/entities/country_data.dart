import 'package:equatable/equatable.dart';

class CountryData extends Equatable {
  final String code;
  final String name;
  final String capital;
  final String currency;
  final List<LanguageData> languageList;
  final String emoji;

  const CountryData({
    required this.code,
    required this.name,
    required this.capital,
    required this.currency,
    required this.languageList,
    required this.emoji,
  });

  CountryData copyWith({
    String? code,
    String? name,
    String? capital,
    String? currency,
    List<LanguageData>? languageList,
    String? emoji,
  }) {
    return CountryData(
      code: code ?? this.code,
      name: name ?? this.name,
      capital: capital ?? this.capital,
      currency: currency ?? this.currency,
      languageList: languageList ?? this.languageList,
      emoji: emoji ?? this.emoji,
    );
  }

  @override
  String toString() {
    return 'CountryData(code: $code, name: $name, capital: $capital, currency: $currency, languageList: $languageList, emoji: $emoji)';
  }

  @override
  List<Object> get props {
    return [
      code,
      name,
      capital,
      currency,
      languageList,
      emoji,
    ];
  }
}

class LanguageData extends Equatable {
  final String name;

  const LanguageData({
    required this.name,
  });

  LanguageData copyWith({
    String? name,
  }) {
    return LanguageData(
      name: name ?? this.name,
    );
  }

  @override
  String toString() => 'LanguageData(name: $name)';

  @override
  List<Object> get props => [name];
}
