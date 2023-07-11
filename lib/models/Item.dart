// ignore_for_file: file_names

class Item {
  final String jpName;
  final String enName;
  final String? image;
  final String sound;
  const Item({
    required this.sound,
    required this.enName,
    required this.jpName,
    this.image,
  });
}
