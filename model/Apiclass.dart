
class movie {
  late String wrapperType,
      artistName,
      primaryGenreName,
      releaseDate,
      artworkUrl100,
      trackName,
      country,
      shortDescription,
      longDescription,
      previewUrl,trackPrice,
      currency,
      trackRentalPrice;


  movie(
      {required this.wrapperType,
      required this.artistName,
      required this.releaseDate,
      required this.primaryGenreName  ,
      required this.artworkUrl100,
      required this.trackName,
      required this.shortDescription,
      required this.country,
      required this.longDescription,
      required this.previewUrl,
      required this.trackRentalPrice,
        required this.trackPrice,
        required this.currency
      });

  factory movie.forMap(Map<String, dynamic> m) {
    return movie(
      wrapperType: m['wrapperType'].toString(),
      artistName: m['artistName'].toString(),
      primaryGenreName: m['primaryGenreName'].toString(),
      releaseDate: m['releaseDate'].toString(),
      artworkUrl100: m['artworkUrl100'].toString(),
      trackName: m['trackName'].toString(),
      shortDescription: m['shortDescription'].toString(),
      country: m['country'].toString(),
      longDescription: m['longDescription'].toString(),
      previewUrl: m['previewUrl'].toString(),
      trackRentalPrice:  m['trackRentalPrice'].toString(),
      trackPrice:  m['trackPrice'].toString(),
      currency: m['currency'].toString(),
    );
  }
}
