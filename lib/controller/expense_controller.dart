import 'package:get/get.dart';

import '../helper/database_helper.dart';
import '../model/data_model.dart';
import 'firebase_controller.dart';


class ExpenseController extends GetxController {
  var expenseList = <Expense>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchExpenses();
    super.onInit();
  }

  void fetchExpenses() async {
    isLoading(true);
    try {
      var expenses = await DBHelper.getExpenses();
      expenseList.assignAll(expenses);
    } finally {
      isLoading(false);
    }
  }

  void addExpense(Expense expense, ) async {
    await DBHelper.insertExpense(expense);
    fetchExpenses();
  }

  void updateExpense(Expense expense) async {
    await DBHelper.updateExpense(expense);
    fetchExpenses();
  }

  void deleteExpense(int id) async {
    await DBHelper.deleteExpense(id);
    fetchExpenses();
  }

  void allDataStoreToDataBase()
  {
    for(Expense expense in expenseList)
    {
      GoogleFirebaseServices.googleFirebaseServices.allDataStore(expense);
    }
  }

}