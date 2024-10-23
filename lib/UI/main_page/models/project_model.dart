class ProjectModel {
  final String title;
  final String description;
  final String image;
  final String route;
  final bool isReversed;
  ProjectModel(
      {required this.title,
      required this.description,
      required this.image,
      this.isReversed = false,
      required this.route});
}
