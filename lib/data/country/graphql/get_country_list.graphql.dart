import 'package:gql/ast.dart';

class Query$GetCountryList {
  Query$GetCountryList({
    required this.countries,
    this.$__typename = 'Query',
  });

  factory Query$GetCountryList.fromJson(Map<String, dynamic> json) {
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$GetCountryList(
      countries: (l$countries as List<dynamic>)
          .map((e) => Query$GetCountryList$countries.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetCountryList$countries> countries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countries = countries;
    _resultData['countries'] = l$countries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countries = countries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$countries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCountryList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries.length != lOther$countries.length) {
      return false;
    }
    for (int i = 0; i < l$countries.length; i++) {
      final l$countries$entry = l$countries[i];
      final lOther$countries$entry = lOther$countries[i];
      if (l$countries$entry != lOther$countries$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCountryList on Query$GetCountryList {
  CopyWith$Query$GetCountryList<Query$GetCountryList> get copyWith =>
      CopyWith$Query$GetCountryList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCountryList<TRes> {
  factory CopyWith$Query$GetCountryList(
    Query$GetCountryList instance,
    TRes Function(Query$GetCountryList) then,
  ) = _CopyWithImpl$Query$GetCountryList;

  factory CopyWith$Query$GetCountryList.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCountryList;

  TRes call({
    List<Query$GetCountryList$countries>? countries,
    String? $__typename,
  });
  TRes countries(
      Iterable<Query$GetCountryList$countries> Function(
              Iterable<
                  CopyWith$Query$GetCountryList$countries<
                      Query$GetCountryList$countries>>)
          _fn);
}

class _CopyWithImpl$Query$GetCountryList<TRes>
    implements CopyWith$Query$GetCountryList<TRes> {
  _CopyWithImpl$Query$GetCountryList(
    this._instance,
    this._then,
  );

  final Query$GetCountryList _instance;

  final TRes Function(Query$GetCountryList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCountryList(
        countries: countries == _undefined || countries == null
            ? _instance.countries
            : (countries as List<Query$GetCountryList$countries>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes countries(
          Iterable<Query$GetCountryList$countries> Function(
                  Iterable<
                      CopyWith$Query$GetCountryList$countries<
                          Query$GetCountryList$countries>>)
              _fn) =>
      call(
          countries: _fn(_instance.countries
              .map((e) => CopyWith$Query$GetCountryList$countries(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetCountryList<TRes>
    implements CopyWith$Query$GetCountryList<TRes> {
  _CopyWithStubImpl$Query$GetCountryList(this._res);

  TRes _res;

  call({
    List<Query$GetCountryList$countries>? countries,
    String? $__typename,
  }) =>
      _res;

  countries(_fn) => _res;
}

const documentNodeQueryGetCountryList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCountryList'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'countries'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'capital'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currency'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'languages'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'emoji'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetCountryList$countries {
  Query$GetCountryList$countries({
    required this.code,
    required this.name,
    this.capital,
    this.currency,
    required this.languages,
    required this.emoji,
    this.$__typename = 'Country',
  });

  factory Query$GetCountryList$countries.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$name = json['name'];
    final l$capital = json['capital'];
    final l$currency = json['currency'];
    final l$languages = json['languages'];
    final l$emoji = json['emoji'];
    final l$$__typename = json['__typename'];
    return Query$GetCountryList$countries(
      code: (l$code as String),
      name: (l$name as String),
      capital: (l$capital as String?),
      currency: (l$currency as String?),
      languages: (l$languages as List<dynamic>)
          .map((e) => Query$GetCountryList$countries$languages.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      emoji: (l$emoji as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String name;

  final String? capital;

  final String? currency;

  final List<Query$GetCountryList$countries$languages> languages;

  final String emoji;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$capital = capital;
    _resultData['capital'] = l$capital;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$languages = languages;
    _resultData['languages'] = l$languages.map((e) => e.toJson()).toList();
    final l$emoji = emoji;
    _resultData['emoji'] = l$emoji;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$name = name;
    final l$capital = capital;
    final l$currency = currency;
    final l$languages = languages;
    final l$emoji = emoji;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$name,
      l$capital,
      l$currency,
      Object.hashAll(l$languages.map((v) => v)),
      l$emoji,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCountryList$countries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$capital = capital;
    final lOther$capital = other.capital;
    if (l$capital != lOther$capital) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$languages = languages;
    final lOther$languages = other.languages;
    if (l$languages.length != lOther$languages.length) {
      return false;
    }
    for (int i = 0; i < l$languages.length; i++) {
      final l$languages$entry = l$languages[i];
      final lOther$languages$entry = lOther$languages[i];
      if (l$languages$entry != lOther$languages$entry) {
        return false;
      }
    }
    final l$emoji = emoji;
    final lOther$emoji = other.emoji;
    if (l$emoji != lOther$emoji) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCountryList$countries
    on Query$GetCountryList$countries {
  CopyWith$Query$GetCountryList$countries<Query$GetCountryList$countries>
      get copyWith => CopyWith$Query$GetCountryList$countries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCountryList$countries<TRes> {
  factory CopyWith$Query$GetCountryList$countries(
    Query$GetCountryList$countries instance,
    TRes Function(Query$GetCountryList$countries) then,
  ) = _CopyWithImpl$Query$GetCountryList$countries;

  factory CopyWith$Query$GetCountryList$countries.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCountryList$countries;

  TRes call({
    String? code,
    String? name,
    String? capital,
    String? currency,
    List<Query$GetCountryList$countries$languages>? languages,
    String? emoji,
    String? $__typename,
  });
  TRes languages(
      Iterable<Query$GetCountryList$countries$languages> Function(
              Iterable<
                  CopyWith$Query$GetCountryList$countries$languages<
                      Query$GetCountryList$countries$languages>>)
          _fn);
}

class _CopyWithImpl$Query$GetCountryList$countries<TRes>
    implements CopyWith$Query$GetCountryList$countries<TRes> {
  _CopyWithImpl$Query$GetCountryList$countries(
    this._instance,
    this._then,
  );

  final Query$GetCountryList$countries _instance;

  final TRes Function(Query$GetCountryList$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? name = _undefined,
    Object? capital = _undefined,
    Object? currency = _undefined,
    Object? languages = _undefined,
    Object? emoji = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCountryList$countries(
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        capital:
            capital == _undefined ? _instance.capital : (capital as String?),
        currency:
            currency == _undefined ? _instance.currency : (currency as String?),
        languages: languages == _undefined || languages == null
            ? _instance.languages
            : (languages as List<Query$GetCountryList$countries$languages>),
        emoji: emoji == _undefined || emoji == null
            ? _instance.emoji
            : (emoji as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes languages(
          Iterable<Query$GetCountryList$countries$languages> Function(
                  Iterable<
                      CopyWith$Query$GetCountryList$countries$languages<
                          Query$GetCountryList$countries$languages>>)
              _fn) =>
      call(
          languages: _fn(_instance.languages
              .map((e) => CopyWith$Query$GetCountryList$countries$languages(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetCountryList$countries<TRes>
    implements CopyWith$Query$GetCountryList$countries<TRes> {
  _CopyWithStubImpl$Query$GetCountryList$countries(this._res);

  TRes _res;

  call({
    String? code,
    String? name,
    String? capital,
    String? currency,
    List<Query$GetCountryList$countries$languages>? languages,
    String? emoji,
    String? $__typename,
  }) =>
      _res;

  languages(_fn) => _res;
}

class Query$GetCountryList$countries$languages {
  Query$GetCountryList$countries$languages({
    required this.name,
    this.$__typename = 'Language',
  });

  factory Query$GetCountryList$countries$languages.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetCountryList$countries$languages(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCountryList$countries$languages) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCountryList$countries$languages
    on Query$GetCountryList$countries$languages {
  CopyWith$Query$GetCountryList$countries$languages<
          Query$GetCountryList$countries$languages>
      get copyWith => CopyWith$Query$GetCountryList$countries$languages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCountryList$countries$languages<TRes> {
  factory CopyWith$Query$GetCountryList$countries$languages(
    Query$GetCountryList$countries$languages instance,
    TRes Function(Query$GetCountryList$countries$languages) then,
  ) = _CopyWithImpl$Query$GetCountryList$countries$languages;

  factory CopyWith$Query$GetCountryList$countries$languages.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCountryList$countries$languages;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCountryList$countries$languages<TRes>
    implements CopyWith$Query$GetCountryList$countries$languages<TRes> {
  _CopyWithImpl$Query$GetCountryList$countries$languages(
    this._instance,
    this._then,
  );

  final Query$GetCountryList$countries$languages _instance;

  final TRes Function(Query$GetCountryList$countries$languages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCountryList$countries$languages(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCountryList$countries$languages<TRes>
    implements CopyWith$Query$GetCountryList$countries$languages<TRes> {
  _CopyWithStubImpl$Query$GetCountryList$countries$languages(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
