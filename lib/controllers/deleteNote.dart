import 'package:sqdlite_totrial/sqlDb.dart';

SqlDb sqlDb = SqlDb();
Future<int> delete(int id) async {
  int response = await sqlDb.deleteData("DELETE FROM 'notes' WHERE id = $id");
  return response;
}