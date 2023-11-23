String formattedDateTime(int time) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(time);

  String formattedDateTime =
      "${dateTime.day}/${dateTime.month}/${dateTime.year}";
  return formattedDateTime;
}
