import 'package:flutter/material.dart';
import 'package:testtt/core/helper/global_methods.dart';
import '../../../../core/api/api_services.dart';
import '../../../../core/helper/locator.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../Seasons/presentation/views/seasons_screen.dart';
import '../../data/models/league_model.dart';
import '../../data/repositories/league_repo_imp.dart';

class LeagueScreen extends StatefulWidget {
  const LeagueScreen({
    super.key,
    required this.countryName,
  });
  final String countryName;
  @override
  State<LeagueScreen> createState() => _LeagueScreenState();
}

class _LeagueScreenState extends State<LeagueScreen> {
  List<LeagueModel> leagues = [];
  List<LeagueModel> searchForLeagues = [];
  TextEditingController searchController = TextEditingController();

  Future<List<LeagueModel>> getLeagues() async {
    leagues =
        await LeagueRepoImp(apiService: getIt.get<ApiService>()).getLeagues(
      widget.countryName,
    );
    return leagues;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leagues screen"),
      ),
      body: SafeArea(
          child: FutureBuilder<List<LeagueModel>>(
        future: getLeagues(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // List<CountryModel> countries = snapshot.data!;
            return Column(
              children: [
                CustomTextFormField(
                  labelText: 'Search',
                  controller: searchController,
                  onChange: (v) {
                    searchController.text = v;
                    searchForLeagues = leagues
                        .where((league) =>
                            league.strLeague!.toLowerCase().contains(v))
                        .toList();
                    setState(() {});
                  },
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: .8),
                    padding: const EdgeInsets.all(10),
                    itemCount: searchForLeagues.isNotEmpty
                        ? searchForLeagues.length
                        : leagues.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          GlobalMethods.navigateTo(
                            context,
                            SeasonsScreen(
                              id: leagues[index].idLeague!,
                              c: leagues[index].strCountry!,
                              s: leagues[index].strSport!,
                            ),
                          );
                        },
                        child: Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.scatter_plot,
                                  size: 40,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  searchForLeagues.isNotEmpty
                                      ? searchForLeagues[index].strSport!
                                      : leagues[index].strSport!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const Divider(),
                                Text(
                                  searchForLeagues.isNotEmpty
                                      ? searchForLeagues[index].strLeague!
                                      : leagues[index].strLeague!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/empty-box.png'),
                  const Text("NO Leagues found"),
                ],
              ),
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
