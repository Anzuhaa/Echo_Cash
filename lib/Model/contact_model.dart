class ContactModel {
  int? id;
  String name;
  String email;
  int bookmark;
  ContactModel({
    this.id,
    required this.name,
    required this.email,
    this.bookmark = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'bookmark': bookmark,
    };
  }

  factory ContactModel.fromMap(Map<String, dynamic> map) {
    return ContactModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      bookmark: map['bookmark'] ?? 0,
    );
  }
}
