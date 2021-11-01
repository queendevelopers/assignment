// To parse this JSON data, do
//
//     final listResponse = listResponseFromMap(jsonString);

import 'dart:convert';

ListResponse listResponseFromMap(Map<String, dynamic> str) =>
    ListResponse.fromMap((str));

String listResponseToMap(ListResponse data) => json.encode(data.toMap());

class ListResponse {
  ListResponse({
    this.averageRating,
    this.backdropPath,
    this.comments,
    this.createdBy,
    this.description,
    this.id,
    this.iso31661,
    this.iso6391,
    this.name,
    this.objectIds,
    this.page,
    this.posterPath,
    this.public,
    this.results,
    this.revenue,
    this.runtime,
    this.sortBy,
    this.totalPages,
    this.totalResults,
  });

  double? averageRating;
  String? backdropPath;
  Map<String, String>? comments;
  CreatedBy? createdBy;
  String? description;
  int? id;
  String? iso31661;
  String? iso6391;
  String? name;
  Map<String, String>? objectIds;
  int? page;
  String? posterPath;
  bool? public;
  List<Result>? results;
  int? revenue;
  int? runtime;
  String? sortBy;
  int? totalPages;
  int? totalResults;

  ListResponse copyWith({
    double? averageRating,
    String? backdropPath,
    Map<String, String>? comments,
    CreatedBy? createdBy,
    String? description,
    int? id,
    String? iso31661,
    String? iso6391,
    String? name,
    Map<String, String>? objectIds,
    int? page,
    String? posterPath,
    bool? public,
    List<Result>? results,
    int? revenue,
    int? runtime,
    String? sortBy,
    int? totalPages,
    int? totalResults,
  }) =>
      ListResponse(
        averageRating: averageRating ?? this.averageRating,
        backdropPath: backdropPath ?? this.backdropPath,
        comments: comments ?? this.comments,
        createdBy: createdBy ?? this.createdBy,
        description: description ?? this.description,
        id: id ?? this.id,
        iso31661: iso31661 ?? this.iso31661,
        iso6391: iso6391 ?? this.iso6391,
        name: name ?? this.name,
        objectIds: objectIds ?? this.objectIds,
        page: page ?? this.page,
        posterPath: posterPath ?? this.posterPath,
        public: public ?? this.public,
        results: results ?? this.results,
        revenue: revenue ?? this.revenue,
        runtime: runtime ?? this.runtime,
        sortBy: sortBy ?? this.sortBy,
        totalPages: totalPages ?? this.totalPages,
        totalResults: totalResults ?? this.totalResults,
      );

  factory ListResponse.fromMap(Map<String, dynamic> json) => ListResponse(
        averageRating: json["average_rating"] == null
            ? null
            : json["average_rating"].toDouble(),
        backdropPath:
            json["backdrop_path"] == null ? null : json["backdrop_path"],
        comments: json["comments"] == null
            ? null
            : Map.from(json["comments"]).map(
                (k, v) => MapEntry<String, String>(k, v == null ? null : v)),
        createdBy: json["created_by"] == null
            ? null
            : CreatedBy.fromMap(json["created_by"]),
        description: json["description"] == null ? null : json["description"],
        id: json["id"] == null ? null : json["id"],
        iso31661: json["iso_3166_1"] == null ? null : json["iso_3166_1"],
        iso6391: json["iso_639_1"] == null ? null : json["iso_639_1"],
        name: json["name"] == null ? null : json["name"],
        objectIds: json["object_ids"] == null
            ? null
            : Map.from(json["object_ids"]).map(
                (k, v) => MapEntry<String, String>(k, v == null ? null : v)),
        page: json["page"] == null ? null : json["page"],
        posterPath: json["poster_path"] == null ? null : json["poster_path"],
        public: json["public"] == null ? null : json["public"],
        results: json["results"] == null
            ? null
            : List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
        revenue: json["revenue"] == null ? null : json["revenue"],
        runtime: json["runtime"] == null ? null : json["runtime"],
        sortBy: json["sort_by"] == null ? null : json["sort_by"],
        totalPages: json["total_pages"] == null ? null : json["total_pages"],
        totalResults:
            json["total_results"] == null ? null : json["total_results"],
      );

  Map<String, dynamic> toMap() => {
        "average_rating": averageRating == null ? null : averageRating,
        "backdrop_path": backdropPath == null ? null : backdropPath,
        "comments": comments == null
            ? null
            : Map.from(comments!).map(
                (k, v) => MapEntry<String, dynamic>(k, v == null ? null : v)),
        "created_by": createdBy == null ? null : createdBy?.toMap(),
        "description": description == null ? null : description,
        "id": id == null ? null : id,
        "iso_3166_1": iso31661 == null ? null : iso31661,
        "iso_639_1": iso6391 == null ? null : iso6391,
        "name": name == null ? null : name,
        "object_ids": objectIds == null
            ? null
            : Map.from(objectIds!).map(
                (k, v) => MapEntry<String, dynamic>(k, v == null ? null : v)),
        "page": page == null ? null : page,
        "poster_path": posterPath == null ? null : posterPath,
        "public": public == null ? null : public,
        "results": results == null
            ? null
            : List<dynamic>.from(results!.map((x) => x.toMap())),
        "revenue": revenue == null ? null : revenue,
        "runtime": runtime == null ? null : runtime,
        "sort_by": sortBy == null ? null : sortBy,
        "total_pages": totalPages == null ? null : totalPages,
        "total_results": totalResults == null ? null : totalResults,
      };
}

class CreatedBy {
  CreatedBy({
    this.gravatarHash,
    this.id,
    this.name,
    this.username,
  });

  String? gravatarHash;
  String? id;
  String? name;
  String? username;

  CreatedBy copyWith({
    String? gravatarHash,
    String? id,
    String? name,
    String? username,
  }) =>
      CreatedBy(
        gravatarHash: gravatarHash ?? this.gravatarHash,
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
      );

  factory CreatedBy.fromMap(Map<String, dynamic> json) => CreatedBy(
        gravatarHash:
            json["gravatar_hash"] == null ? null : json["gravatar_hash"],
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        username: json["username"] == null ? null : json["username"],
      );

  Map<String, dynamic> toMap() => {
        "gravatar_hash": gravatarHash == null ? null : gravatarHash,
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "username": username == null ? null : username,
      };
}

class Result {
  Result({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.mediaType,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? mediaType;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  DateTime? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Result copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? mediaType,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) =>
      Result(
        adult: adult ?? this.adult,
        backdropPath: backdropPath ?? this.backdropPath,
        genreIds: genreIds ?? this.genreIds,
        id: id ?? this.id,
        mediaType: mediaType ?? this.mediaType,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        originalTitle: originalTitle ?? this.originalTitle,
        overview: overview ?? this.overview,
        popularity: popularity ?? this.popularity,
        posterPath: posterPath ?? this.posterPath,
        releaseDate: releaseDate ?? this.releaseDate,
        title: title ?? this.title,
        video: video ?? this.video,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
      );

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        adult: json["adult"] == null ? null : json["adult"],
        backdropPath:
            json["backdrop_path"] == null ? null : json["backdrop_path"],
        genreIds: json["genre_ids"] == null
            ? null
            : List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"] == null ? null : json["id"],
        mediaType: json["media_type"] == null ? null : json["media_type"],
        originalLanguage: json["original_language"] == null
            ? null
            : json["original_language"],
        originalTitle:
            json["original_title"] == null ? null : json["original_title"],
        overview: json["overview"] == null ? null : json["overview"],
        popularity:
            json["popularity"] == null ? null : json["popularity"].toDouble(),
        posterPath: json["poster_path"] == null ? null : json["poster_path"],
        releaseDate: json["release_date"] == null
            ? null
            : DateTime.parse(json["release_date"]),
        title: json["title"] == null ? null : json["title"],
        video: json["video"] == null ? null : json["video"],
        voteAverage: json["vote_average"] == null
            ? null
            : json["vote_average"].toDouble(),
        voteCount: json["vote_count"] == null ? null : json["vote_count"],
      );

  Map<String, dynamic> toMap() => {
        "adult": adult == null ? null : adult,
        "backdrop_path": backdropPath == null ? null : backdropPath,
        "genre_ids": genreIds == null
            ? null
            : List<dynamic>.from(genreIds!.map((x) => x)),
        "id": id == null ? null : id,
        "media_type": mediaType == null ? null : mediaType,
        "original_language": originalLanguage == null ? null : originalLanguage,
        "original_title": originalTitle == null ? null : originalTitle,
        "overview": overview == null ? null : overview,
        "popularity": popularity == null ? null : popularity,
        "poster_path": posterPath == null ? null : posterPath,
        "release_date": releaseDate == null
            ? null
            : "${releaseDate?.year.toString().padLeft(4, '0')}-${releaseDate?.month.toString().padLeft(2, '0')}-${releaseDate?.day.toString().padLeft(2, '0')}",
        "title": title == null ? null : title,
        "video": video == null ? null : video,
        "vote_average": voteAverage == null ? null : voteAverage,
        "vote_count": voteCount == null ? null : voteCount,
      };
}
