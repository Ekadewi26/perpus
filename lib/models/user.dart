class User {
  final int? id;
  final String name;
  final String email;
  final String role;
  final String? token;

  User({
    this.id,
    required this.name,
    required this.email,
    required this.role,
    this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'],
    name: json['name'],
    email: json['email'],
    role: json['role'],
    token: json['token'],
  );

  Map<String, dynamic> toJson() => {'name': name, 'email': email, 'role': role};
}

