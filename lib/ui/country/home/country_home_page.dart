import 'package:country/domain/country/entities/country_data.dart';
import 'package:country/injection.dart';
import 'package:country/ui/app/widgets/system_ui_overlay_widget.dart';
import 'package:country/ui/country/home/country_home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class CountryHomePage extends StatefulWidget {
  const CountryHomePage({super.key});

  @override
  State<CountryHomePage> createState() => _CountryHomePageState();
}

class _CountryHomePageState extends State<CountryHomePage> {
  final _provider = getIt<CountryHomeProvider>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => _provider,
          dispose: (_, __) => _provider.dispose(),
        ),
        ChangeNotifierProvider.value(
          value: _provider.state,
        )
      ],
      child: const _CountryHomeBody(),
    );
  }
}

class _CountryHomeBody extends StatelessWidget {
  const _CountryHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final uiState = context.select((CountryHomeState state) => state.uiState);
    return SystemUiOverlayWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const _SearchBar(),
              Expanded(
                child: Center(
                  child: switch (uiState) {
                    UiState.empty => Text(
                        'No countries found',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    UiState.loading => const CircularProgressIndicator(),
                    UiState.success => const _CountryList(),
                    UiState.error => Builder(builder: (context) {
                        final errorMessage = context.select(
                            (CountryHomeState state) => state.errorMessage);
                        return Text(
                          errorMessage,
                          style: Theme.of(context).textTheme.headlineSmall,
                        );
                      }),
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CountryList extends StatelessWidget {
  const _CountryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final countryList = context.watch<CountryHomeState>().countryList;
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            key: ObjectKey(countryList),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemCount: countryList.length,
            itemBuilder: (_, index) {
              return _CountryItem(country: countryList[index]);
            },
            separatorBuilder: (context, index) => const Divider(),
          ),
        ),
      ],
    );
  }
}

class _CountryItem extends StatelessWidget {
  const _CountryItem({
    super.key,
    required this.country,
  });

  final CountryData country;

  @override
  Widget build(BuildContext context) {
    final provider = context.read<CountryHomeProvider>();
    return SizedBox(
      height: 50.h,
      child: Slidable(
        startActionPane: ActionPane(
          dragDismissible: false,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              key: ValueKey(country.code),
              autoClose: true,
              onPressed: (_) {
                _showConfirmationDialog(context, provider);
              },
              backgroundColor: const Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
            ),
            SlidableAction(
              autoClose: true,
              onPressed: (_) {
                _showCountryInfo(context);
              },
              backgroundColor: Colors.black26,
              foregroundColor: Colors.white,
              icon: Icons.info,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 30.w,
              height: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black38),
              ),
              child: Center(child: Text(country.code)),
            ),
            SizedBox(width: 16.w),
            Text(
              country.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showConfirmationDialog(
      BuildContext context, CountryHomeProvider provider) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(32.w, 24.h, 32.w, 16.h),
            margin: EdgeInsets.all(24.r),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Are you sure?',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 16.h),
                TextButtonTheme(
                  data: TextButtonThemeData(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          provider.removeCountry(
                            country.code,
                          );
                          Navigator.of(context).pop();
                        },
                        child: const Text('Yes'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('No'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> _showCountryInfo(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: false,
      builder: (context) {
        return SystemUiOverlayWidget(
          navColor: Theme.of(context).colorScheme.surfaceContainerLow,
          child: Padding(
            padding: EdgeInsets.all(24.r),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Container(
                      width: 30.w,
                      height: 30.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black38),
                      ),
                      child: Center(child: Text(country.code)),
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      country.name,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100.w),
                      child: Opacity(
                        opacity: .8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Capital',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              'Currency',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              'Languages',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          country.capital,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          country.currency,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          country.languageList.map((e) => e.name).join(', '),
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Card(
        elevation: 4,
        child: Row(
          children: [
            SizedBox(width: 16.w),
            const Opacity(opacity: .7, child: Icon(Icons.search)),
            Expanded(
              child: SizedBox(
                height: 40.h,
                child: TextField(
                  onTapOutside: (_) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search (case sensitive)',
                    contentPadding: EdgeInsets.fromLTRB(8.w, 10.h, 8.w, 10.h),
                  ),
                  onChanged:
                      context.read<CountryHomeProvider>().onSearchQueryChanged,
                ),
              ),
            ),
            Builder(builder: (context) {
              final isLoading = context
                  .select((CountryHomeState state) => state.queryResultLoading);
              return SizedBox.square(
                dimension: 24.r,
                child: isLoading
                    ? const CircularProgressIndicator()
                    : const SizedBox(),
              );
            }),
            SizedBox(width: 16.w),
          ],
        ),
      ),
    );
  }
}
