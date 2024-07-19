import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'package:country/domain/country/country_repository.dart';
import 'package:country/domain/country/entities/country_data.dart';

/// Controller of home page responsible for handling user input
/// and providing relevant state updates.
@injectable
class CountryHomeProvider {
  static const debounceTag = 'query_debouncer';
  final CountryRepository _repository;
  late CountryHomeState state;
  late List<CountryData> _cachedCountryList;
  bool isFilterActive = false;

  CountryHomeProvider(this._repository) {
    state = CountryHomeState.initial();
    fetchCountryList();
  }

  void fetchCountryList() async {
    final result = await _repository.getCountryList();

    result.when((data) {
      if (data.isEmpty) {
        state.uiState = UiState.empty;
        return;
      }
      state.countryList = data;
      _cachedCountryList = data;
      state.uiState = UiState.success;
    }, (error) {
      state.errorMessage = error;
      state.uiState = UiState.error;
    });

    state.notifyWidgets();
  }

  void fetchCountryListByName(String name) async {
    final result = await _repository.getCountryListByName(name);

    result.when((data) {
      if (isFilterActive) {
        if (data.isEmpty) {
          state.uiState = UiState.empty;
          return;
        }
        state.countryList = data;
        state.uiState = UiState.success;
      }
    }, (error) {
      if (isFilterActive) {
        state.errorMessage = error;
        state.uiState = UiState.error;
      }
    });

    state.queryResultLoading = false;
    state.notifyWidgets();
  }

  // Removes country from displayed list.
  void removeCountry(String code) {
    state.countryList = state.countryList
      ..removeWhere((country) => country.code == code);
    _cachedCountryList.removeWhere((country) => country.code == code);
    state.notifyWidgets();
  }

  /// Sends filter [query] to get response from network with throlling in action.
  void onSearchQueryChanged(String query) {
    if (query.isEmpty) {
      isFilterActive = false;
      EasyDebounce.cancelAll();
      // Updates UI with initial cached country list.
      state.countryList = _cachedCountryList;
      state.uiState = UiState.success;
      state.queryResultLoading = false;

      state.notifyWidgets();
      return;
    }
    isFilterActive = true;

    state.queryResultLoading = true;
    state.notifyWidgets();

    EasyDebounce.debounce(debounceTag, const Duration(milliseconds: 500),
        () => fetchCountryListByName(query));
  }

  void dispose() {
    state.dispose();
    EasyDebounce.cancelAll();
  }
}

class CountryHomeState extends ChangeNotifier {
  UiState uiState;
  List<CountryData> countryList;
  String errorMessage;

  /// Flag to monitor if query request is under progress.
  bool queryResultLoading;

  CountryHomeState({
    required this.uiState,
    required this.countryList,
    required this.errorMessage,
    required this.queryResultLoading,
  });

  factory CountryHomeState.initial() => CountryHomeState(
        countryList: [],
        errorMessage: '',
        uiState: UiState.loading,
        queryResultLoading: false,
      );

  /// Notifies widget listeners to rebuild.
  void notifyWidgets() => notifyListeners();
}

/// Different states of UI based on result of network call.
enum UiState {
  empty,
  loading,
  success,
  error;
}
