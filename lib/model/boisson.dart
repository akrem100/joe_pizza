class Boissons {
  final String title;
  final String logo_path;
  final String subtitle;
  final String image_path;
  final String? type;

  Boissons({
    required this.title,
    required this.logo_path,
    required this.subtitle,
    required this.image_path,
    this.type,
  });
}
