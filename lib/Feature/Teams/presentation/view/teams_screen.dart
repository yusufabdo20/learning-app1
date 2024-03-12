import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testtt/Feature/Seasons/data/models/season_model/season_model.dart';
import 'package:testtt/Feature/Seasons/data/repositories/seasons_repo_imp.dart';
import 'package:testtt/Feature/Teams/data/models/team_model.dart';
import '../../../../core/api/api_services.dart';
import '../../../../core/helper/locator.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../data/repositories/team_repo_imp.dart';

class TeamsScreen extends StatefulWidget {
  final String sport;
  final String country;

  const TeamsScreen({super.key, required this.sport, required this.country});
  @override
  State<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {
  List<TeamModel> teams = [];
  List<TeamModel> searchForteams = [];
  // TextEditingController searchController = TextEditingController();

  Future<List<TeamModel>> getTeams() async {
    teams = await TeamsRepoImp(apiService: getIt.get<ApiService>()).getTeams(
      widget.sport,
      widget.country,
    );
    return teams;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teams screen"),
      ),
      body: SafeArea(
          child: FutureBuilder<List<TeamModel>>(
        future: getTeams(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // List<CountryModel> countries = snapshot.data!;
            return Column(
              children: [
                CustomTextFormField(
                  labelText: 'Search',
                  onChange: (v) {
                    searchForteams = teams
                        .where((league) =>
                            league.strTeam!.toLowerCase().contains(v) ||
                            league.strAlternate!.toLowerCase().contains(v))
                        .toList();
                    setState(() {});
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: searchForteams.isNotEmpty
                        ? searchForteams.length
                        : teams.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 10,
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ListTile(
                            leading:Image.network( teams[index].strTeamBadge!) ,
                            subtitle: Text(
                              searchForteams.isNotEmpty
                                  ? searchForteams[index].strAlternate!
                                  : teams[index].strAlternate!,
                              textAlign: TextAlign.center,
                         
                            ),
                            title: Text(
                              searchForteams.isNotEmpty
                                  ? searchForteams[index].strTeam!
                                  : teams[index].strTeam!,
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
