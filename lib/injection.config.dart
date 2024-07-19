// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'data/app/graphql_module.dart' as _i7;
import 'data/country/country_repository_impl.dart' as _i5;
import 'domain/country/country_repository.dart' as _i4;
import 'ui/country/home/country_home_provider.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final graphqlModule = _$GraphqlModule();
    gh.lazySingleton<_i3.GraphQLClient>(() => graphqlModule.client());
    gh.lazySingleton<_i4.CountryRepository>(
        () => _i5.CountryRepositoryImpl(gh<_i3.GraphQLClient>()));
    gh.factory<_i6.CountryHomeProvider>(
        () => _i6.CountryHomeProvider(gh<_i4.CountryRepository>()));
    return this;
  }
}

class _$GraphqlModule extends _i7.GraphqlModule {}
