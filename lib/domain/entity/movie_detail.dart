class MovieDetail {
    bool adult;
    List<dynamic> genres;
    int id;
    String overview;
    double popularity;
    String posterPath;
    List<dynamic> productionCompanies;
    List<dynamic> productionCountries;
    DateTime releaseDate;
    int revenue;
    int runtime;
    String status;
    String tagline;
    String title;
    double voteAverage;
    int voteCount;

    MovieDetail({
        required this.adult,
        required this.genres,
        required this.id,
        required this.overview,
        required this.popularity,
        required this.posterPath,
        required this.productionCompanies,
        required this.productionCountries,
        required this.releaseDate,
        required this.revenue,
        required this.runtime,
        required this.status,
        required this.tagline,
        required this.title,
        required this.voteAverage,
        required this.voteCount,
    });
}