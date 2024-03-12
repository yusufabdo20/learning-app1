
import 'package:testtt/Feature/Home/data/models/countries/country.dart';

import 'package:testtt/core/helper/app_constants.dart';

import '../../../../core/api/api_services.dart';

class CountriesRepoImp {
  ApiService apiService;
  CountriesRepoImp({required this.apiService});
  Future<List<CountryModel>> getCountries() async {
    var data = await apiService.get(
      endPoint: AppConstants.get_all_countries,
    );

    List<CountryModel> countries = [];
    for (var country in data['countries']) {
      countries.add(CountryModel.fromJson(country));
    }
    return countries;
  }
}
