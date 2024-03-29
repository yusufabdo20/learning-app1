import 'package:testtt/Feature/Teams/data/models/team_model.dart';

import '../../../../core/api/api_services.dart';
import '../../../../core/helper/app_constants.dart';

class TeamsRepoImp {
  ApiService apiService;
  TeamsRepoImp({required this.apiService});
  Future<List<TeamModel>> getTeams(String sport, String country) async {
    var data = await apiService.get(
      endPoint: AppConstants.get_all_teams,
      queryParameters: {
        's': sport,
        'c': country,
      },
    );

    List<TeamModel> teams = [];
    for (var team in data['teams']) {
      teams.add(TeamModel.fromJson(team));
    }
    return teams;
  }
}
