import 'package:bytebank_avancado/database/dao/contact_dao.dart';
import 'package:bytebank_avancado/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async{

  final String dbPath = await getDatabasesPath();
  final String path = join(dbPath, 'bytebank.db');
  return openDatabase(path, onCreate: (db, version){
     db.execute(ContactDao.tableSQL);
   }, version: 1,
  // onDowngrade: onDatabaseDowngradeDelete,
    );
  }


