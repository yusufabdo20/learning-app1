import 'package:testtt/Feature/Seasons/data/models/season_model/season_model.dart';

import '../../../../core/api/api_services.dart';
import '../../../../core/helper/app_constants.dart';

class SeasonsRepoImp {
  ApiService apiService;
  SeasonsRepoImp({required this.apiService});
  Future<List<SeasonModel>> getSeasons(String id) async {
    var data = await apiService.get(
      endPoint: AppConstants.get_all_seasons,
      queryParameters: {
        'id': id,
      },
    );

    List<SeasonModel> seasons = [];
    for (var season in data['seasons']) {
      seasons.add(SeasonModel.fromJson(season));
    }
    return seasons;
  }
}
