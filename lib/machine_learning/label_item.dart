class LabelItem {
  final int id;
  final String name;
  final String displayName;

  LabelItem({required this.id, required this.name, required this.displayName});

  factory LabelItem.fromJson(Map<String, dynamic> json) {
    return LabelItem(
      id: json['id'],
      name: json['name'],
      displayName: json['display_name'],
    );
  }
}
