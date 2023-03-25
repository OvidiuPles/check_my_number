class MovieModel {
  MovieModel({
    required this.id,
    required this.url,
    required this.title,
    required this.year,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'] as int,
      url: json['url'] as String,
      title: json['title'] as String,
      year: json['year'] as int,
    );
  }

  final int id;
  final String url;
  final String title;
  final int year;
}

// final Map<String, dynamic> movie = <String, dynamic>{
//   'id': 50147,
//   'url': 'https://yts.mx/movies/hey-sinamika-2022',
//   'imdb_code': 'tt11953194',
//   'title': 'Hey Sinamika',
//   'title_english': 'Hey Sinamika',
//   'title_long': 'Hey Sinamika (2022)',
//   'slug': 'hey-sinamika-2022',
//   'year': 2022,
//   'rating': 6.2,
//   'runtime': 0,
//   'genres': ['Drama', 'Romance'],
//   'summary':
//       'Mouna (Aditi), falls in love with Yaazhan (Dulquer) but after two years of their marriage she grows bitter to his constant complaining and talking and tries to get rid of him. Soon she chances upon Malarvizhi (Kajal) to devise a plan but what ensues is a complete twist of events.',
//   'description_full':
//       'Mouna (Aditi), falls in love with Yaazhan (Dulquer) but after two years of their marriage she grows bitter to his constant complaining and talking and tries to get rid of him. Soon she chances upon Malarvizhi (Kajal) to devise a plan but what ensues is a complete twist of events.',
//   'synopsis':
//       'Mouna (Aditi), falls in love with Yaazhan (Dulquer) but after two years of their marriage she grows bitter to his constant complaining and talking and tries to get rid of him. Soon she chances upon Malarvizhi (Kajal) to devise a plan but what ensues is a complete twist of events.',
//   'yt_trailer_code': '',
//   'language': 'ta',
//   'mpa_rating': '',
//   'background_image': 'https://yts.mx/assets/images/movies/hey_sinamika_2022/background.jpg',
//   'background_image_original': 'https://yts.mx/assets/images/movies/hey_sinamika_2022/background.jpg',
//   'small_cover_image': 'https://yts.mx/assets/images/movies/hey_sinamika_2022/small-cover.jpg',
//   'medium_cover_image': 'https://yts.mx/assets/images/movies/hey_sinamika_2022/medium-cover.jpg',
//   'large_cover_image': 'https://yts.mx/assets/images/movies/hey_sinamika_2022/large-cover.jpg',
//   'state': 'ok',
//   'torrents': [
//     {
//       'url': 'https://yts.mx/torrent/download/81E844A832E62C78C7F8E1D30254A1C92D0A4064',
//       'hash': '81E844A832E62C78C7F8E1D30254A1C92D0A4064',
//       'quality': '720p',
//       'type': 'web',
//       'seeds': 0,
//       'peers': 0,
//       'size': '1.33 GB',
//       'size_bytes': 1428076626,
//       'date_uploaded': '2023-03-25 10:15:55',
//       'date_uploaded_unix': 1679735755
//     },
//     {
//       'url': 'https://yts.mx/torrent/download/703897B94B324F47C34DDD473467790A6364B32D',
//       'hash': '703897B94B324F47C34DDD473467790A6364B32D',
//       'quality': '1080p',
//       'type': 'web',
//       'seeds': 0,
//       'peers': 0,
//       'size': '2.72 GB',
//       'size_bytes': 2920577761,
//       'date_uploaded': '2023-03-25 11:32:55',
//       'date_uploaded_unix': 1679740375
//     }
//   ],
//   'date_uploaded': '2023-03-25 10:15:55',
//   'date_uploaded_unix': 1679735755
// };
