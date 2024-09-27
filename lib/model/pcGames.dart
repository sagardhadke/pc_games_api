
class PcGames {
    int? id;
    String? title;
    String? thumbnail;
    String? shortDescription;
    String? gameUrl;
    String? genre;
    String? platform;
    String? publisher;
    String? developer;
    String? releaseDate;
    String? freetogameProfileUrl;

    PcGames({this.id, this.title, this.thumbnail, this.shortDescription, this.gameUrl, this.genre, this.platform, this.publisher, this.developer, this.releaseDate, this.freetogameProfileUrl});

    PcGames.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        title = json["title"];
        thumbnail = json["thumbnail"];
        shortDescription = json["short_description"];
        gameUrl = json["game_url"];
        genre = json["genre"];
        platform = json["platform"];
        publisher = json["publisher"];
        developer = json["developer"];
        releaseDate = json["release_date"];
        freetogameProfileUrl = json["freetogame_profile_url"];
    }

    static List <PcGames>? ofgames (List ofData){
      return ofData.map((e) => PcGames.fromJson(e)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["title"] = title;
        _data["thumbnail"] = thumbnail;
        _data["short_description"] = shortDescription;
        _data["game_url"] = gameUrl;
        _data["genre"] = genre;
        _data["platform"] = platform;
        _data["publisher"] = publisher;
        _data["developer"] = developer;
        _data["release_date"] = releaseDate;
        _data["freetogame_profile_url"] = freetogameProfileUrl;
        return _data;
    }
}