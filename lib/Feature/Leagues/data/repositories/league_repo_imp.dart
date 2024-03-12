import '../../../../core/api/api_services.dart';
import '../../../../core/helper/app_constants.dart';
import '../models/league_model.dart';

class LeagueRepoImp {
  ApiService apiService;
  LeagueRepoImp({required this.apiService});
  Future<List<LeagueModel>> getLeagues(String countryName) async {
    var data = await apiService.get(
      endPoint: AppConstants.get_all_leagues,
      queryParameters: {
        'c': countryName,
      },
    );

    List<LeagueModel> leagues = [];
    for (var league in data['countries']) {
      leagues.add(LeagueModel.fromJson(league));
    }
    return leagues;
  }
}
