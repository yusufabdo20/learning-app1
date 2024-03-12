import 'package:flutter/material.dart';
import 'package:testtt/core/helper/global_methods.dart';
import 'package:testtt/core/widgets/custom_text_form_field.dart';

import '../../../../core/api/api_services.dart';
import '../../../../core/helper/locator.dart';
import '../../../Leagues/presentation/view/league_screen.dart';
import '../../data/models/countries/country.dart';
import '../../data/repositories/countries_repo_imp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CountryModel> countries = [];
  List<CountryModel> searchForCountries = [];

  Future<List<CountryModel>> getCountries() async {
    countries = await CountriesRepoImp(apiService: getIt.get<ApiService>())
        .getCountries();
    return countries;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),
      body: SafeArea(
          child: FutureBuilder<List<CountryModel>>(
        future: getCountries(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                CustomTextFormField(
                  labelText: 'Search',
                  onChange: (v) {
                    setState(() {
                      searchForCountries = countries
                          .where((country) =>
                              country.nameEn!.toLowerCase().contains(v))
                          .toList();
                    });
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: searchForCountries.isNotEmpty
                        ? searchForCountries.length
                        : countries.length,
                    itemBuilder: (context, index) {
                      debugPrint(countries[index].nameEn);
                      return Card(
                        child: ListTile(
                          onTap: () {
                            GlobalMethods.navigateTo(
                              context,
                              LeagueScreen(
                                countryName: searchForCountries.isNotEmpty
                                    ? searchForCountries[index].nameEn!
                                    : countries[index].nameEn!,
                              ),
                            );
                          },
                          title: Text(searchForCountries.isNotEmpty
                              ? searchForCountries[index].nameEn!
                              : countries[index].nameEn ?? "No Name"),
                          trailing: const Icon(
                            Icons.arrow_circle_right_sharp,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("There is Error , Try later"),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )),
    );
  }
}
