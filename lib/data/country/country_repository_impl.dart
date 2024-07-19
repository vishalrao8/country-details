import 'package:country/data/country/graphql/get_country_by_name.graphql.dart';
import 'package:country/data/country/graphql/get_country_list.graphql.dart';
import 'package:country/domain/country/country_repository.dart';
import 'package:country/domain/country/entities/country_data.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

@LazySingleton(as: CountryRepository)
class CountryRepositoryImpl extends CountryRepository {
  final GraphQLClient client;

  CountryRepositoryImpl(this.client);
  @override
  Future<Result<List<CountryData>, String>> getCountryList() async {
    final QueryOptions options = QueryOptions(
      document: documentNodeQueryGetCountryList,
    );

    return _queryCountryBy(options);
  }

  @override
  Future<Result<List<CountryData>, String>> getCountryListByName(String name) {
    final QueryOptions options = QueryOptions(
      document: documentNodeQueryGetCountryByName,
      variables: {'name': '^$name'},
    );

    return _queryCountryBy(options);
  }

  Future<Result<List<CountryData>, String>> _queryCountryBy(
      QueryOptions options) async {
    try {
      final result = await client.query(options);

      if (result.hasException) {
        return Error(result.exception.toString());
      }

      final parsedData = Query$GetCountryList.fromJson(result.data!);

      return Success(parsedData.countries
          .map(
            (country) => CountryData(
              name: country.name,
              capital: country.capital ?? 'NA',
              currency: country.currency ?? 'NA',
              languageList: country.languages
                  .map((e) => LanguageData(name: e.name))
                  .toList(),
              emoji: country.emoji,
              code: country.code,
            ),
          )
          .toList());
    } catch (e) {
      return const Error('Something went wrong');
    }
  }
}
