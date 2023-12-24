import 'package:sqdlite_totrial/sqlDb.dart';

SqlDb sqlDb =SqlDb();
Future<int> insert(String name,String desc) async {
  int  response = await sqlDb.insertData("INSERT INTO 'notes' ('note','name') VALUES ('$desc','$name')");
  return response ;
}