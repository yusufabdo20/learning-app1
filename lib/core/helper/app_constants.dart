class AppConstants {
  static const String baseUrl = "https://www.thesportsdb.com/api/v1/json/3";
  static const String get_all_countries = '/all_countries.php';
  static const String get_all_leagues = '/search_all_leagues.php';
  static const String get_all_seasons = '/search_all_seasons.php';
  static const String get_all_teams = '/search_all_teams.php';
}
/**
 *  2. List for all leagues based on user chosen country
url : www.thesportsdb.com/api/v1/json/3/search_all_leagues.php?c={country_name}
user will be able to search in the list
when user select list will navigate to another page .
3. List all seasons in a league
url : www.thesportsdb.com/api/v1/json/3/search_all_seasons.php?id={league_id}
user will be able to search in the list
when user select list will navigate to another page .
4. List all teams in a season
url : https://www.thesportsdb.com/api/v1/json/3/search_all_teams.php?s={sport}&c={country}

 */
