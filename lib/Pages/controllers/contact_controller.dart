import 'package:echo_cash/Model/contact_model.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ContactController extends GetxController {
  static Database? _db;
  var contacts = <ContactModel>[].obs;
  var bookmarks = <ContactModel>[].obs;
  var selectedCategory = ''.obs;

  // Initialize the database and load contacts
  @override
  void onInit() {
    super.onInit();
    initDB();
    loadContacts();
  }

  // Initialize the database with versioning
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
      version: 1, // Increment version to manage schema changes
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE contacts(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            email TEXT,
            bookmark INTEGER DEFAULT 0  -- INTEGER to handle boolean values
          )
        ''');
      },
    );
  }

  // Add a new contact
  Future<int> addContact(ContactModel contact) async {
    var dbClient = await db;
    int result = await dbClient!.insert('contacts', contact.toMap());
    loadContacts(); // Refresh the contact list after adding a new one
    return result;
  }

  // Load all contacts from the database
  Future<void> loadContacts() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult = await dbClient!.query('contacts');
    contacts.assignAll(
        queryResult.map((data) => ContactModel.fromMap(data)).toList());
  }

  // Delete a contact by id
  Future<void> deleteContact(int id) async {
    var dbClient = await db;
    await dbClient!.delete('contacts', where: 'id = ?', whereArgs: [id]);
    loadContacts(); // Refresh the contact list after deletion
  }

  // Update a contact
  Future<void> updateContact(ContactModel contact) async {
    var dbClient = await db;
    await dbClient!.update('contacts', contact.toMap(),
        where: 'id = ?', whereArgs: [contact.id]);
    loadContacts();
  }

  Future<void> toggleBookmark(ContactModel contact) async {
    var dbClient = await db;
    contact.bookmark = (contact.bookmark == 0) ? 1 : 0;
    await dbClient!.update('contacts', contact.toMap(),
        where: 'id = ?', whereArgs: [contact.id]);

    if (contact.bookmark == 1) {
      bookmarks.add(contact);
      Get.snackbar('Added to Bookmarks', contact.name,
          snackPosition: SnackPosition.BOTTOM);
    } else {
      bookmarks.remove(contact);
      Get.snackbar('Removed from Bookmarks', contact.name,
          snackPosition: SnackPosition.BOTTOM);
    }
    loadContacts();
  }

  void addToBookmarks(ContactModel contact) {
    if (!bookmarks.contains(contact)) {
      bookmarks.add(contact);
    }
    loadContacts();
  }

  void removeFromBookmarks(ContactModel contact) {
    if (bookmarks.contains(contact)) {
      bookmarks.remove(contact);
    }
    loadContacts();
  }
}
