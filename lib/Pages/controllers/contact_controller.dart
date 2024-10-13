// ignore_for_file: prefer_conditional_assignment

import 'package:echo_cash/Model/contact_model.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ContactController extends GetxController {
  static Database? _db;
  var contacts = <ContactModel>[].obs;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDB();
    }
    return _db;
  }

  var bookmarks = <ContactModel>[].obs;
  var selectedCategory = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadContact();
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
            bio TEXT, 
            email TEXT, 
            imageURL TEXT
          )
        ''');
      },
    );
  }

  Future<int> addContact(ContactModel contact) async {
    var dbClient = await db;
    int result = await dbClient!.insert('contacts', contact.toMap());
    loadContact();
    return result;
  }

  Future<void> loadContact() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult = await dbClient!.query('contacts');
    contacts.assignAll(
        queryResult.map((data) => ContactModel.fromMap(data)).toList());
  }

  Future<void> deleteContact(int id) async {
    var dbClient = await db;
    await dbClient!.delete('contacts', where: 'id = ?', whereArgs: [id]);
    loadContact();
  }

  void toggleBookmark(ContactModel contact) {
    if (bookmarks.contains(contact)) {
      bookmarks.remove(contact);
      Get.snackbar('Removed from Bookmarks', contact.name,
          snackPosition: SnackPosition.BOTTOM);
    } else {
      bookmarks.add(contact);
      Get.snackbar('Added to Bookmarks', contact.name,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  bool isBookmarked(ContactModel contact) {
    return bookmarks.contains(contact);
  }

  void changeCategory(String category) {
    selectedCategory.value = category;
  }
}
