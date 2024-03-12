class CountryModel {
  final String? nameEn;

  const CountryModel({this.nameEn});

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        nameEn: json['name_en'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name_en': nameEn,
      };
}
