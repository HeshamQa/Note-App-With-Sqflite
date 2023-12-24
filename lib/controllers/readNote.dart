import '../sqlDb.dart';

SqlDb sqlDb = SqlDb();
Future<List<Map>> read() async {
  List<Map> response = await sqlDb.readData("SELECT * FROM 'notes'");
  return response;
}