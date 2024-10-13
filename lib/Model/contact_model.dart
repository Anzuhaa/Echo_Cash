import 'dart:ffi';

import 'package:flutter/material.dart';

class ContactModel {
  final int? id;
  final String name;
  final String bio;
  final String email;

  ContactModel({
    this.id,
    required this.name,
    required this.bio,
    required this.email,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'bio': bio,
      'email': email,
    };
  }

  factory ContactModel.fromMap(Map<String, dynamic> map) {
    return ContactModel(
      id: map['id'],
      name: map['name'],
      bio: map['bio'],
      email: map['email'],
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ContactModel && other.name == name && other.email == email;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode;
}
