class SeasonModel {
  String? strSeason;

  SeasonModel({this.strSeason});

  factory SeasonModel.fromJson(Map<String, dynamic> json) => SeasonModel(
        strSeason: json['strSeason'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'strSeason': strSeason,
      };
}
