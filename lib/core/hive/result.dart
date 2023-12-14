import 'package:hive/hive.dart';

part 'result.g.dart';

@HiveType(typeId: 1)
class Result {
  Result({
    required this.result,
    required this.date,
  });

  @HiveField(0)
  List<String> result;

  @HiveField(1)
  List<String> date;
}
