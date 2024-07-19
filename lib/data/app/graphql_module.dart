import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

@module
abstract class GraphqlModule {
  final _httpLink = HttpLink(
    'https://countries.trevorblades.com',
  );

  @lazySingleton
  GraphQLClient client() => GraphQLClient(
        cache: GraphQLCache(),
        link: _httpLink,
      );
}
