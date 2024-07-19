import 'package:country/domain/country/entities/country_data.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class CountryRepository {
  /// Fetches list of country.
  Future<Result<List<CountryData>, String>> getCountryList();

  /// Fetches list of country filtered by provided country [name].
  Future<Result<List<CountryData>, String>> getCountryListByName(String name);
}
