import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/data_model.dart';

class FirebaseHelper {
  static final CollectionReference expensesCollection = FirebaseFirestore.instance.collection('expenses');

  static Future<void> syncExpenseToFirestore(Expense expense) async {
    await expensesCollection.doc(expense.id.toString()).set(expense.toMap());
  }

  static Future<void> deleteExpenseFromFirestore(int id) async {
    await expensesCollection.doc(id.toString()).delete();
  }
}