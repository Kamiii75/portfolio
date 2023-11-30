class ModelProject {
  final String? githubLink;
  final String? company;
  final String? websiteLink;
  final String? playStoreLink;
  final String? appStoreLink;
  final String title;
  final String description;
  final List<String> tools;
  final String id;
  final List<String> type;

  ModelProject(
      {this.githubLink,
        this.websiteLink,
        this.company,
        this.playStoreLink,
        this.appStoreLink,
        required this.id,
        required this.type,
        required this.title,
        required this.description,
        required this.tools});
}
