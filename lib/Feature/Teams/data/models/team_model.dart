class TeamModel {
  String? idTeam;
  dynamic idSoccerXml;
  String? idApIfootball;
  dynamic intLoved;
  String? strTeam;
  dynamic strTeamShort;
  String? strAlternate;
  String? intFormedYear;
  String? strSport;
  String? strLeague;
  String? idLeague;
  String? strLeague2;
  String? idLeague2;
  String? strLeague3;
  String? idLeague3;
  String? strLeague4;
  String? idLeague4;
  String? strLeague5;
  dynamic idLeague5;
  String? strLeague6;
  dynamic idLeague6;
  String? strLeague7;
  dynamic idLeague7;
  dynamic strDivision;
  String? strStadium;
  String? strKeywords;
  String? strRss;
  dynamic strStadiumThumb;
  String? strStadiumDescription;
  String? strStadiumLocation;
  String? intStadiumCapacity;
  String? strWebsite;
  String? strFacebook;
  String? strTwitter;
  String? strInstagram;
  String? strDescriptionEn;
  dynamic strDescriptionDe;
  dynamic strDescriptionFr;
  dynamic strDescriptionCn;
  dynamic strDescriptionIt;
  dynamic strDescriptionJp;
  dynamic strDescriptionRu;
  dynamic strDescriptionEs;
  dynamic strDescriptionPt;
  dynamic strDescriptionSe;
  dynamic strDescriptionNl;
  dynamic strDescriptionHu;
  dynamic strDescriptionNo;
  dynamic strDescriptionIl;
  dynamic strDescriptionPl;
  String? strKitColour1;
  String? strKitColour2;
  String? strKitColour3;
  String? strGender;
  String? strCountry;
  String? strTeamBadge;
  dynamic strTeamJersey;
  dynamic strTeamLogo;
  dynamic strTeamFanart1;
  dynamic strTeamFanart2;
  dynamic strTeamFanart3;
  dynamic strTeamFanart4;
  dynamic strTeamBanner;
  String? strYoutube;
  String? strLocked;

  TeamModel({
    this.idTeam,
    this.idSoccerXml,
    this.idApIfootball,
    this.intLoved,
    this.strTeam,
    this.strTeamShort,
    this.strAlternate,
    this.intFormedYear,
    this.strSport,
    this.strLeague,
    this.idLeague,
    this.strLeague2,
    this.idLeague2,
    this.strLeague3,
    this.idLeague3,
    this.strLeague4,
    this.idLeague4,
    this.strLeague5,
    this.idLeague5,
    this.strLeague6,
    this.idLeague6,
    this.strLeague7,
    this.idLeague7,
    this.strDivision,
    this.strStadium,
    this.strKeywords,
    this.strRss,
    this.strStadiumThumb,
    this.strStadiumDescription,
    this.strStadiumLocation,
    this.intStadiumCapacity,
    this.strWebsite,
    this.strFacebook,
    this.strTwitter,
    this.strInstagram,
    this.strDescriptionEn,
    this.strDescriptionDe,
    this.strDescriptionFr,
    this.strDescriptionCn,
    this.strDescriptionIt,
    this.strDescriptionJp,
    this.strDescriptionRu,
    this.strDescriptionEs,
    this.strDescriptionPt,
    this.strDescriptionSe,
    this.strDescriptionNl,
    this.strDescriptionHu,
    this.strDescriptionNo,
    this.strDescriptionIl,
    this.strDescriptionPl,
    this.strKitColour1,
    this.strKitColour2,
    this.strKitColour3,
    this.strGender,
    this.strCountry,
    this.strTeamBadge,
    this.strTeamJersey,
    this.strTeamLogo,
    this.strTeamFanart1,
    this.strTeamFanart2,
    this.strTeamFanart3,
    this.strTeamFanart4,
    this.strTeamBanner,
    this.strYoutube,
    this.strLocked,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) => TeamModel(
        idTeam: json['idTeam'] as String?,
        idSoccerXml: json['idSoccerXML'] as dynamic,
        idApIfootball: json['idAPIfootball'] as String?,
        intLoved: json['intLoved'] as dynamic,
        strTeam: json['strTeam'] as String?,
        strTeamShort: json['strTeamShort'] as dynamic,
        strAlternate: json['strAlternate'] as String?,
        intFormedYear: json['intFormedYear'] as String?,
        strSport: json['strSport'] as String?,
        strLeague: json['strLeague'] as String?,
        idLeague: json['idLeague'] as String?,
        strLeague2: json['strLeague2'] as String?,
        idLeague2: json['idLeague2'] as String?,
        strLeague3: json['strLeague3'] as String?,
        idLeague3: json['idLeague3'] as String?,
        strLeague4: json['strLeague4'] as String?,
        idLeague4: json['idLeague4'] as String?,
        strLeague5: json['strLeague5'] as String?,
        idLeague5: json['idLeague5'] as dynamic,
        strLeague6: json['strLeague6'] as String?,
        idLeague6: json['idLeague6'] as dynamic,
        strLeague7: json['strLeague7'] as String?,
        idLeague7: json['idLeague7'] as dynamic,
        strDivision: json['strDivision'] as dynamic,
        strStadium: json['strStadium'] as String?,
        strKeywords: json['strKeywords'] as String?,
        strRss: json['strRSS'] as String?,
        strStadiumThumb: json['strStadiumThumb'] as dynamic,
        strStadiumDescription: json['strStadiumDescription'] as String?,
        strStadiumLocation: json['strStadiumLocation'] as String?,
        intStadiumCapacity: json['intStadiumCapacity'] as String?,
        strWebsite: json['strWebsite'] as String?,
        strFacebook: json['strFacebook'] as String?,
        strTwitter: json['strTwitter'] as String?,
        strInstagram: json['strInstagram'] as String?,
        strDescriptionEn: json['strDescriptionEN'] as String?,
        strDescriptionDe: json['strDescriptionDE'] as dynamic,
        strDescriptionFr: json['strDescriptionFR'] as dynamic,
        strDescriptionCn: json['strDescriptionCN'] as dynamic,
        strDescriptionIt: json['strDescriptionIT'] as dynamic,
        strDescriptionJp: json['strDescriptionJP'] as dynamic,
        strDescriptionRu: json['strDescriptionRU'] as dynamic,
        strDescriptionEs: json['strDescriptionES'] as dynamic,
        strDescriptionPt: json['strDescriptionPT'] as dynamic,
        strDescriptionSe: json['strDescriptionSE'] as dynamic,
        strDescriptionNl: json['strDescriptionNL'] as dynamic,
        strDescriptionHu: json['strDescriptionHU'] as dynamic,
        strDescriptionNo: json['strDescriptionNO'] as dynamic,
        strDescriptionIl: json['strDescriptionIL'] as dynamic,
        strDescriptionPl: json['strDescriptionPL'] as dynamic,
        strKitColour1: json['strKitColour1'] as String?,
        strKitColour2: json['strKitColour2'] as String?,
        strKitColour3: json['strKitColour3'] as String?,
        strGender: json['strGender'] as String?,
        strCountry: json['strCountry'] as String?,
        strTeamBadge: json['strTeamBadge'] as String?,
        strTeamJersey: json['strTeamJersey'] as dynamic,
        strTeamLogo: json['strTeamLogo'] as dynamic,
        strTeamFanart1: json['strTeamFanart1'] as dynamic,
        strTeamFanart2: json['strTeamFanart2'] as dynamic,
        strTeamFanart3: json['strTeamFanart3'] as dynamic,
        strTeamFanart4: json['strTeamFanart4'] as dynamic,
        strTeamBanner: json['strTeamBanner'] as dynamic,
        strYoutube: json['strYoutube'] as String?,
        strLocked: json['strLocked'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'idTeam': idTeam,
        'idSoccerXML': idSoccerXml,
        'idAPIfootball': idApIfootball,
        'intLoved': intLoved,
        'strTeam': strTeam,
        'strTeamShort': strTeamShort,
        'strAlternate': strAlternate,
        'intFormedYear': intFormedYear,
        'strSport': strSport,
        'strLeague': strLeague,
        'idLeague': idLeague,
        'strLeague2': strLeague2,
        'idLeague2': idLeague2,
        'strLeague3': strLeague3,
        'idLeague3': idLeague3,
        'strLeague4': strLeague4,
        'idLeague4': idLeague4,
        'strLeague5': strLeague5,
        'idLeague5': idLeague5,
        'strLeague6': strLeague6,
        'idLeague6': idLeague6,
        'strLeague7': strLeague7,
        'idLeague7': idLeague7,
        'strDivision': strDivision,
        'strStadium': strStadium,
        'strKeywords': strKeywords,
        'strRSS': strRss,
        'strStadiumThumb': strStadiumThumb,
        'strStadiumDescription': strStadiumDescription,
        'strStadiumLocation': strStadiumLocation,
        'intStadiumCapacity': intStadiumCapacity,
        'strWebsite': strWebsite,
        'strFacebook': strFacebook,
        'strTwitter': strTwitter,
        'strInstagram': strInstagram,
        'strDescriptionEN': strDescriptionEn,
        'strDescriptionDE': strDescriptionDe,
        'strDescriptionFR': strDescriptionFr,
        'strDescriptionCN': strDescriptionCn,
        'strDescriptionIT': strDescriptionIt,
        'strDescriptionJP': strDescriptionJp,
        'strDescriptionRU': strDescriptionRu,
        'strDescriptionES': strDescriptionEs,
        'strDescriptionPT': strDescriptionPt,
        'strDescriptionSE': strDescriptionSe,
        'strDescriptionNL': strDescriptionNl,
        'strDescriptionHU': strDescriptionHu,
        'strDescriptionNO': strDescriptionNo,
        'strDescriptionIL': strDescriptionIl,
        'strDescriptionPL': strDescriptionPl,
        'strKitColour1': strKitColour1,
        'strKitColour2': strKitColour2,
        'strKitColour3': strKitColour3,
        'strGender': strGender,
        'strCountry': strCountry,
        'strTeamBadge': strTeamBadge,
        'strTeamJersey': strTeamJersey,
        'strTeamLogo': strTeamLogo,
        'strTeamFanart1': strTeamFanart1,
        'strTeamFanart2': strTeamFanart2,
        'strTeamFanart3': strTeamFanart3,
        'strTeamFanart4': strTeamFanart4,
        'strTeamBanner': strTeamBanner,
        'strYoutube': strYoutube,
        'strLocked': strLocked,
      };
}
