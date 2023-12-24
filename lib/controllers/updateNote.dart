import '../sqlDb.dart';

SqlDb sqlDb = SqlDb();
Future<int> update(String name,String desc,int id) async {
  int  response = await sqlDb.updateData("UPDATE 'notes' SET 'name' = '$name', 'note' = '$desc' WHERE id = $id");
  return response ;
}