import 'package:collection/collection.dart';

class LeagueModel {
  final String? idLeague;
  final dynamic idSoccerXml;
  final String? idApIfootball;
  final String? strSport;
  final String? strLeague;
  final String? strLeagueAlternate;
  final String? intDivision;
  final String? idCup;
  final String? strCurrentSeason;
  final String? intFormedYear;
  final String? dateFirstEvent;
  final String? strGender;
  final String? strCountry;
  final String? strWebsite;
  final String? strFacebook;
  final String? strInstagram;
  final String? strTwitter;
  final String? strYoutube;
  final String? strRss;
  final String? strDescriptionEn;
  final dynamic strDescriptionDe;
  final dynamic strDescriptionFr;
  final dynamic strDescriptionIt;
  final dynamic strDescriptionCn;
  final dynamic strDescriptionJp;
  final dynamic strDescriptionRu;
  final dynamic strDescriptionEs;
  final dynamic strDescriptionPt;
  final dynamic strDescriptionSe;
  final dynamic strDescriptionNl;
  final dynamic strDescriptionHu;
  final dynamic strDescriptionNo;
  final dynamic strDescriptionPl;
  final dynamic strDescriptionIl;
  final dynamic strTvRights;
  final dynamic strFanart1;
  final dynamic strFanart2;
  final dynamic strFanart3;
  final dynamic strFanart4;
  final dynamic strBanner;
  final String? strBadge;
  final dynamic strLogo;
  final dynamic strPoster;
  final dynamic strTrophy;
  final String? strNaming;
  final dynamic strComplete;
  final String? strLocked;

  const LeagueModel({
    this.idLeague,
    this.idSoccerXml,
    this.idApIfootball,
    this.strSport,
    this.strLeague,
    this.strLeagueAlternate,
    this.intDivision,
    this.idCup,
    this.strCurrentSeason,
    this.intFormedYear,
    this.dateFirstEvent,
    this.strGender,
    this.strCountry,
    this.strWebsite,
    this.strFacebook,
    this.strInstagram,
    this.strTwitter,
    this.strYoutube,
    this.strRss,
    this.strDescriptionEn,
    this.strDescriptionDe,
    this.strDescriptionFr,
    this.strDescriptionIt,
    this.strDescriptionCn,
    this.strDescriptionJp,
    this.strDescriptionRu,
    this.strDescriptionEs,
    this.strDescriptionPt,
    this.strDescriptionSe,
    this.strDescriptionNl,
    this.strDescriptionHu,
    this.strDescriptionNo,
    this.strDescriptionPl,
    this.strDescriptionIl,
    this.strTvRights,
    this.strFanart1,
    this.strFanart2,
    this.strFanart3,
    this.strFanart4,
    this.strBanner,
    this.strBadge,
    this.strLogo,
    this.strPoster,
    this.strTrophy,
    this.strNaming,
    this.strComplete,
    this.strLocked,
  });

  factory LeagueModel.fromJson(Map<String, dynamic> json) => LeagueModel(
        idLeague: json['idLeague'] as String?,
        idSoccerXml: json['idSoccerXML'] as dynamic,
        idApIfootball: json['idAPIfootball'] as String?,
        strSport: json['strSport'] as String?,
        strLeague: json['strLeague'] as String?,
        strLeagueAlternate: json['strLeagueAlternate'] as String?,
        intDivision: json['intDivision'] as String?,
        idCup: json['idCup'] as String?,
        strCurrentSeason: json['strCurrentSeason'] as String?,
        intFormedYear: json['intFormedYear'] as String?,
        dateFirstEvent: json['dateFirstEvent'] as String?,
        strGender: json['strGender'] as String?,
        strCountry: json['strCountry'] as String?,
        strWebsite: json['strWebsite'] as String?,
        strFacebook: json['strFacebook'] as String?,
        strInstagram: json['strInstagram'] as String?,
        strTwitter: json['strTwitter'] as String?,
        strYoutube: json['strYoutube'] as String?,
        strRss: json['strRSS'] as String?,
        strDescriptionEn: json['strDescriptionEN'] as String?,
        strDescriptionDe: json['strDescriptionDE'] as dynamic,
        strDescriptionFr: json['strDescriptionFR'] as dynamic,
        strDescriptionIt: json['strDescriptionIT'] as dynamic,
        strDescriptionCn: json['strDescriptionCN'] as dynamic,
        strDescriptionJp: json['strDescriptionJP'] as dynamic,
        strDescriptionRu: json['strDescriptionRU'] as dynamic,
        strDescriptionEs: json['strDescriptionES'] as dynamic,
        strDescriptionPt: json['strDescriptionPT'] as dynamic,
        strDescriptionSe: json['strDescriptionSE'] as dynamic,
        strDescriptionNl: json['strDescriptionNL'] as dynamic,
        strDescriptionHu: json['strDescriptionHU'] as dynamic,
        strDescriptionNo: json['strDescriptionNO'] as dynamic,
        strDescriptionPl: json['strDescriptionPL'] as dynamic,
        strDescriptionIl: json['strDescriptionIL'] as dynamic,
        strTvRights: json['strTvRights'] as dynamic,
        strFanart1: json['strFanart1'] as dynamic,
        strFanart2: json['strFanart2'] as dynamic,
        strFanart3: json['strFanart3'] as dynamic,
        strFanart4: json['strFanart4'] as dynamic,
        strBanner: json['strBanner'] as dynamic,
        strBadge: json['strBadge'] as String?,
        strLogo: json['strLogo'] as dynamic,
        strPoster: json['strPoster'] as dynamic,
        strTrophy: json['strTrophy'] as dynamic,
        strNaming: json['strNaming'] as String?,
        strComplete: json['strComplete'] as dynamic,
        strLocked: json['strLocked'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'idLeague': idLeague,
        'idSoccerXML': idSoccerXml,
        'idAPIfootball': idApIfootball,
        'strSport': strSport,
        'strLeague': strLeague,
        'strLeagueAlternate': strLeagueAlternate,
        'intDivision': intDivision,
        'idCup': idCup,
        'strCurrentSeason': strCurrentSeason,
        'intFormedYear': intFormedYear,
        'dateFirstEvent': dateFirstEvent,
        'strGender': strGender,
        'strCountry': strCountry,
        'strWebsite': strWebsite,
        'strFacebook': strFacebook,
        'strInstagram': strInstagram,
        'strTwitter': strTwitter,
        'strYoutube': strYoutube,
        'strRSS': strRss,
        'strDescriptionEN': strDescriptionEn,
        'strDescriptionDE': strDescriptionDe,
        'strDescriptionFR': strDescriptionFr,
        'strDescriptionIT': strDescriptionIt,
        'strDescriptionCN': strDescriptionCn,
        'strDescriptionJP': strDescriptionJp,
        'strDescriptionRU': strDescriptionRu,
        'strDescriptionES': strDescriptionEs,
        'strDescriptionPT': strDescriptionPt,
        'strDescriptionSE': strDescriptionSe,
        'strDescriptionNL': strDescriptionNl,
        'strDescriptionHU': strDescriptionHu,
        'strDescriptionNO': strDescriptionNo,
        'strDescriptionPL': strDescriptionPl,
        'strDescriptionIL': strDescriptionIl,
        'strTvRights': strTvRights,
        'strFanart1': strFanart1,
        'strFanart2': strFanart2,
        'strFanart3': strFanart3,
        'strFanart4': strFanart4,
        'strBanner': strBanner,
        'strBadge': strBadge,
        'strLogo': strLogo,
        'strPoster': strPoster,
        'strTrophy': strTrophy,
        'strNaming': strNaming,
        'strComplete': strComplete,
        'strLocked': strLocked,
      };
}
