import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testtt/Feature/Seasons/data/models/season_model/season_model.dart';
import 'package:testtt/Feature/Seasons/data/repositories/seasons_repo_imp.dart';
import 'package:testtt/Feature/Teams/presentation/view/teams_screen.dart';
import 'package:testtt/core/helper/global_methods.dart';
import '../../../../core/api/api_services.dart';
import '../../../../core/helper/locator.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class SeasonsScreen extends StatefulWidget {
  const SeasonsScreen({
    super.key,
    required this.id,
    required this.s,
    required this.c,

  });
  final String id;
 final String s ; 
 final String c ; 
  @override
  State<SeasonsScreen> createState() => _SeasonsScreenState();
}

class _SeasonsScreenState extends State<SeasonsScreen> {
  List<SeasonModel> seasons = [];
  List<SeasonModel> searchForSeasons = [];
  TextEditingController searchController = TextEditingController();

  Future<List<SeasonModel>> getSeasons() async {
    seasons =
        await SeasonsRepoImp(apiService: getIt.get<ApiService>()).getSeasons(
      widget.id,
    );
    return seasons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seasons screen"),
      ),
      body: SafeArea(
          child: FutureBuilder<List<SeasonModel>>(
        future: getSeasons(),
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
                    searchForSeasons = seasons
                        .where((league) =>
                            league.strSeason!.toLowerCase().contains(v))
                        .toList();
                    setState(() {});
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: searchForSeasons.isNotEmpty
                        ? searchForSeasons.length
                        : seasons.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          GlobalMethods.navigateTo(context, TeamsScreen(sport: widget.s, country: widget.c)) ; 
                        },
                        child: Card(
                          elevation: 10,
                          
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              searchForSeasons.isNotEmpty
                                  ? searchForSeasons[index].strSeason!
                                  : seasons[index].strSeason!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
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
                  Text("NO Leagues found"),
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
