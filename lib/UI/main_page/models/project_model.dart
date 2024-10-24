class ProjectModel {
  final String title;
  final String description;
  final String image;
  final String? route;
  final String? googlePlayLink;
  final String? appstorePlayLink;
  final bool isReversed;
  ProjectModel(
      {required this.title,
      required this.description,
      required this.image,
      this.googlePlayLink,
      this.appstorePlayLink,
      this.isReversed = false,
      this.route});
}
