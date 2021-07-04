

import 'dart:io';
import 'package:mastering1/main.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static final _dbName= 'myDatabase.db';
  static final _dbVersion=1;
  static final _table_name='tableName';
  static final _column_id='id';
  static final _column_name='name';
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance=DatabaseHelper._privateConstructor();
  static Database? _database;


  Future <Database?> get database async{
    if(_database!=null)return _database;

    _database = await initiateDatabase();
    return _database;
  }

  initiateDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path=join(directory.path,_dbName);
    return await openDatabase(path,version: _dbVersion,onCreate: _onCreate);
  }

  Future _onCreate(Database db , int version) async {
   db.query('''
   
    CREATE TABLE $_table_name( 
    $_column_id INTEGER PRIMARY KEY,
    $_column_name TEXT NOT NULL    
    )
    '''
   );
  }

  Future<int> insert(Map<String,dynamic> row)async{
    Database? db=await instance.database;
    return await db!.insert(_table_name, row);
  }

  Future <List<Map<String,dynamic>>> queryAll() async{
    Database? db=await instance.database;
    return await db!.query(_table_name);
  }

  Future<int> update(Map<String,dynamic> row)async{
    Database? db=await instance.database;
    int id=row[_column_id];
    return await db!.update(_table_name, row,where: '$_column_id=?',whereArgs: [id]);
  }

  Future <int> delete(int id) async{
    Database? db=await instance.database;
    return await db!.delete(_table_name,where: '$_column_id=?',whereArgs: [id]);
  }

}