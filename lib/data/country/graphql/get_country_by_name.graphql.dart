import 'package:gql/ast.dart';

class Variables$Query$GetCountryByName {
  factory Variables$Query$GetCountryByName({required String name}) =>
      Variables$Query$GetCountryByName._({
        r'name': name,
      });

  Variables$Query$GetCountryByName._(this._$data);

  factory Variables$Query$GetCountryByName.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Query$GetCountryByName._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Query$GetCountryByName<Variables$Query$GetCountryByName>
      get copyWith => CopyWith$Variables$Query$GetCountryByName(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCountryByName) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Variables$Query$GetCountryByName<TRes> {
  factory CopyWith$Variables$Query$GetCountryByName(
    Variables$Query$GetCountryByName instance,
    TRes Function(Variables$Query$GetCountryByName) then,
  ) = _CopyWithImpl$Variables$Query$GetCountryByName;

  factory CopyWith$Variables$Query$GetCountryByName.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCountryByName;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$GetCountryByName<TRes>
    implements CopyWith$Variables$Query$GetCountryByName<TRes> {
  _CopyWithImpl$Variables$Query$GetCountryByName(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCountryByName _instance;

  final TRes Function(Variables$Query$GetCountryByName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Query$GetCountryByName._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCountryByName<TRes>
    implements CopyWith$Variables$Query$GetCountryByName<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCountryByName(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$GetCountryByName {
  Query$GetCountryByName({
    required this.countries,
    this.$__typename = 'Query',
  });

  factory Query$GetCountryByName.fromJson(Map<String, dynamic> json) {
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$GetCountryByName(
      countries: (l$countries as List<dynamic>)
          .map((e) => Query$GetCountryByName$countries.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetCountryByName$countries> countries;

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
    if (!(other is Query$GetCountryByName) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetCountryByName on Query$GetCountryByName {
  CopyWith$Query$GetCountryByName<Query$GetCountryByName> get copyWith =>
      CopyWith$Query$GetCountryByName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCountryByName<TRes> {
  factory CopyWith$Query$GetCountryByName(
    Query$GetCountryByName instance,
    TRes Function(Query$GetCountryByName) then,
  ) = _CopyWithImpl$Query$GetCountryByName;

  factory CopyWith$Query$GetCountryByName.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCountryByName;

  TRes call({
    List<Query$GetCountryByName$countries>? countries,
    String? $__typename,
  });
  TRes countries(
      Iterable<Query$GetCountryByName$countries> Function(
              Iterable<
                  CopyWith$Query$GetCountryByName$countries<
                      Query$GetCountryByName$countries>>)
          _fn);
}

class _CopyWithImpl$Query$GetCountryByName<TRes>
    implements CopyWith$Query$GetCountryByName<TRes> {
  _CopyWithImpl$Query$GetCountryByName(
    this._instance,
    this._then,
  );

  final Query$GetCountryByName _instance;

  final TRes Function(Query$GetCountryByName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCountryByName(
        countries: countries == _undefined || countries == null
            ? _instance.countries
            : (countries as List<Query$GetCountryByName$countries>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes countries(
          Iterable<Query$GetCountryByName$countries> Function(
                  Iterable<
                      CopyWith$Query$GetCountryByName$countries<
                          Query$GetCountryByName$countries>>)
              _fn) =>
      call(
          countries: _fn(_instance.countries
              .map((e) => CopyWith$Query$GetCountryByName$countries(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetCountryByName<TRes>
    implements CopyWith$Query$GetCountryByName<TRes> {
  _CopyWithStubImpl$Query$GetCountryByName(this._res);

  TRes _res;

  call({
    List<Query$GetCountryByName$countries>? countries,
    String? $__typename,
  }) =>
      _res;

  countries(_fn) => _res;
}

const documentNodeQueryGetCountryByName = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCountryByName'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'countries'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'name'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'regex'),
                    value: VariableNode(name: NameNode(value: 'name')),
                  )
                ]),
              )
            ]),
          )
        ],
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

class Query$GetCountryByName$countries {
  Query$GetCountryByName$countries({
    required this.code,
    required this.name,
    this.capital,
    this.currency,
    required this.languages,
    required this.emoji,
    this.$__typename = 'Country',
  });

  factory Query$GetCountryByName$countries.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$name = json['name'];
    final l$capital = json['capital'];
    final l$currency = json['currency'];
    final l$languages = json['languages'];
    final l$emoji = json['emoji'];
    final l$$__typename = json['__typename'];
    return Query$GetCountryByName$countries(
      code: (l$code as String),
      name: (l$name as String),
      capital: (l$capital as String?),
      currency: (l$currency as String?),
      languages: (l$languages as List<dynamic>)
          .map((e) => Query$GetCountryByName$countries$languages.fromJson(
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

  final List<Query$GetCountryByName$countries$languages> languages;

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
    if (!(other is Query$GetCountryByName$countries) ||
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

extension UtilityExtension$Query$GetCountryByName$countries
    on Query$GetCountryByName$countries {
  CopyWith$Query$GetCountryByName$countries<Query$GetCountryByName$countries>
      get copyWith => CopyWith$Query$GetCountryByName$countries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCountryByName$countries<TRes> {
  factory CopyWith$Query$GetCountryByName$countries(
    Query$GetCountryByName$countries instance,
    TRes Function(Query$GetCountryByName$countries) then,
  ) = _CopyWithImpl$Query$GetCountryByName$countries;

  factory CopyWith$Query$GetCountryByName$countries.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCountryByName$countries;

  TRes call({
    String? code,
    String? name,
    String? capital,
    String? currency,
    List<Query$GetCountryByName$countries$languages>? languages,
    String? emoji,
    String? $__typename,
  });
  TRes languages(
      Iterable<Query$GetCountryByName$countries$languages> Function(
              Iterable<
                  CopyWith$Query$GetCountryByName$countries$languages<
                      Query$GetCountryByName$countries$languages>>)
          _fn);
}

class _CopyWithImpl$Query$GetCountryByName$countries<TRes>
    implements CopyWith$Query$GetCountryByName$countries<TRes> {
  _CopyWithImpl$Query$GetCountryByName$countries(
    this._instance,
    this._then,
  );

  final Query$GetCountryByName$countries _instance;

  final TRes Function(Query$GetCountryByName$countries) _then;

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
      _then(Query$GetCountryByName$countries(
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
            : (languages as List<Query$GetCountryByName$countries$languages>),
        emoji: emoji == _undefined || emoji == null
            ? _instance.emoji
            : (emoji as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes languages(
          Iterable<Query$GetCountryByName$countries$languages> Function(
                  Iterable<
                      CopyWith$Query$GetCountryByName$countries$languages<
                          Query$GetCountryByName$countries$languages>>)
              _fn) =>
      call(
          languages: _fn(_instance.languages
              .map((e) => CopyWith$Query$GetCountryByName$countries$languages(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetCountryByName$countries<TRes>
    implements CopyWith$Query$GetCountryByName$countries<TRes> {
  _CopyWithStubImpl$Query$GetCountryByName$countries(this._res);

  TRes _res;

  call({
    String? code,
    String? name,
    String? capital,
    String? currency,
    List<Query$GetCountryByName$countries$languages>? languages,
    String? emoji,
    String? $__typename,
  }) =>
      _res;

  languages(_fn) => _res;
}

class Query$GetCountryByName$countries$languages {
  Query$GetCountryByName$countries$languages({
    required this.name,
    this.$__typename = 'Language',
  });

  factory Query$GetCountryByName$countries$languages.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetCountryByName$countries$languages(
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
    if (!(other is Query$GetCountryByName$countries$languages) ||
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

extension UtilityExtension$Query$GetCountryByName$countries$languages
    on Query$GetCountryByName$countries$languages {
  CopyWith$Query$GetCountryByName$countries$languages<
          Query$GetCountryByName$countries$languages>
      get copyWith => CopyWith$Query$GetCountryByName$countries$languages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCountryByName$countries$languages<TRes> {
  factory CopyWith$Query$GetCountryByName$countries$languages(
    Query$GetCountryByName$countries$languages instance,
    TRes Function(Query$GetCountryByName$countries$languages) then,
  ) = _CopyWithImpl$Query$GetCountryByName$countries$languages;

  factory CopyWith$Query$GetCountryByName$countries$languages.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCountryByName$countries$languages;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCountryByName$countries$languages<TRes>
    implements CopyWith$Query$GetCountryByName$countries$languages<TRes> {
  _CopyWithImpl$Query$GetCountryByName$countries$languages(
    this._instance,
    this._then,
  );

  final Query$GetCountryByName$countries$languages _instance;

  final TRes Function(Query$GetCountryByName$countries$languages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCountryByName$countries$languages(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCountryByName$countries$languages<TRes>
    implements CopyWith$Query$GetCountryByName$countries$languages<TRes> {
  _CopyWithStubImpl$Query$GetCountryByName$countries$languages(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
