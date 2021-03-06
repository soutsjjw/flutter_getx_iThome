import 'package:equatable/equatable.dart';

class Person extends Equatable {
  String name = "";
  String id = "";
  int age = 0;

  Person();

  @override
  List<Object> get props => [id];

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? "";
    id = json['id'] ?? "";
    age = json['age'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    return data;
  }
}