// ignore_for_file: prefer_conditional_assignment, prefer_const_constructors

import 'package:echo_cash/Model/contact_model.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ContactController extends GetxController {
  static Database? _db;
  var contacts = <ContactModel>[].obs;
  var bookmarks = <ContactModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initDB();
    loadContacts();
    loadBookmarks();
  }

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDB();
    }
    return _db;
  }

  Future<Database> initDB() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'contacts_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE contacts(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            email TEXT,
            bookmark INTEGER DEFAULT 0
          )
        ''');
      },
    );
  }

  Future<int> addContact(ContactModel contact) async {
    var dbClient = await db;
    int result = await dbClient!.insert('contacts', contact.toMap());
    loadContacts();
    loadBookmarks();
    return result;
  }

  Future<void> loadContacts() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult = await dbClient!.query('contacts');
    contacts.assignAll(
        queryResult.map((data) => ContactModel.fromMap(data)).toList());
  }

  Future<void> loadBookmarks() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult = await dbClient!.query(
      'contacts',
      where: 'bookmark = ?',
      whereArgs: [1],
    );
    bookmarks.assignAll(
        queryResult.map((data) => ContactModel.fromMap(data)).toList());
  }

  Future<void> deleteContact(int id) async {
    var dbClient = await db;
    await dbClient!.delete('contacts', where: 'id = ?', whereArgs: [id]);
    loadContacts();
    loadBookmarks();
  }

  Future<void> updateContact(ContactModel contact) async {
    var dbClient = await db;
    await dbClient!.update('contacts', contact.toMap(),
        where: 'id = ?', whereArgs: [contact.id]);
    loadContacts();
    loadBookmarks();
  }

  Future<void> toggleBookmark(ContactModel contact) async {
    var dbClient = await db;
    contact.bookmark = (contact.bookmark == 0) ? 1 : 0;
    await dbClient!.update('contacts', contact.toMap(),
        where: 'id = ?', whereArgs: [contact.id]);

    if (contact.bookmark == 1) {
      bookmarks.add(contact);
      Future.delayed(Duration(milliseconds: 100));
      Get.snackbar(
        'Added to Bookmarks',
        contact.name,
        snackPosition: SnackPosition.TOP,
        colorText: Color(0xfff0f0f0),
        animationDuration: Duration(milliseconds: 400),
        duration: Duration(milliseconds: 2000),
      );
    } else {
      bookmarks.remove(contact);
      Future.delayed(Duration(milliseconds: 100));
      Get.snackbar(
        'Removed from Bookmarks',
        contact.name,
        snackPosition: SnackPosition.TOP,
        colorText: Color(0xfff0f0f0),
        animationDuration: Duration(milliseconds: 400),
        duration: Duration(milliseconds: 2000),
      );
    }
    loadContacts();
    loadBookmarks();
  }
}
