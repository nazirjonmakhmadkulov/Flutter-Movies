final String _imageUrlMedium = 'https://image.tmdb.org/t/p/w300';
final String _imageUrlLarge = 'https://image.tmdb.org/t/p/w500';

String getMediumPictureUrl(String path) => _imageUrlMedium + path;
String getLargePictureUrl(String path) => _imageUrlLarge + path;

Map<int, String> _genreMap = {
  28: "Действие",
  12: "Приключение",
  16: "Анимация",
  35: "Комедия",
  80: "Преступление",
  99: "Документальный",
  18: "Драма",
  10751: "Семья",
  14: "Фантазия",
  36: "История",
  27: "Террор",
  10402: "Музыка",
  9648: "Тайна",
  10749: "Романс",
  878: "Фантастика",
  10770: "Телевизионный фильм",
  53: "Саспенс",
  10752: "Война",
  37: "Вестерн"
};
List<String> genresToList(List<dynamic> genreIds) =>
    genreIds.map((id) => _genreMap[id]).toList();

String getGenreValues(List<dynamic> genreIds) {
  StringBuffer buffer = StringBuffer();
  buffer.writeAll(genresToList(genreIds), ', ');
  return buffer.toString();
}
