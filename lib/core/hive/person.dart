import 'package:hive/hive.dart';

part 'person.g.dart';

@HiveType(typeId: 1)
class Person {
  Person({
    required this.name,
    required this.age,
    required this.phone,
    required this.email,
  });

  @HiveField(0)
  String name;

  @HiveField(1)
  String age;

  @HiveField(2)
  String phone;

  @HiveField(3)
  String email;
}
