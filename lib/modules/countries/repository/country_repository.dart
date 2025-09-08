import 'package:api_intergration_demo/modules/countries/service/country_service.dart';

import '../../../core/network/network_client.dart';

class CountryRepository implements CountryService{
  final HttpClientInterface httpClient;
  CountryRepository({required this.httpClient});

  @override
  Future fetchCountries() async {
    const endpoint = 'https://countries.trevorblades.com/';
    const query = """
    query {
      countries {
        code
        name
      }
    }
  """;

    final result = await httpClient.query(endpoint: endpoint, query: query);
    return result['countries'];
  }
}