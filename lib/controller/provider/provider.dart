// provider.dart

import 'package:flutter/material.dart';
import '../../modal/modal.dart';
import 'helper/helper.dart';

class MainModalProvider with ChangeNotifier {
  MainModalProvider() {
    fetchMainModal();
  }

  MainModal? _mainModal;
  List<MainModal> _saved = [];
  bool _isLoading = false;
  String _errorMessage = '';
  final MainModalService _mainModalService = MainModalService();

  MainModal? get mainModal => _mainModal;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;
  List<MainModal> get Saved => _saved;

  Future<void> fetchMainModal() async {
    _isLoading = true;
    notifyListeners();

    try {
      _mainModal = await _mainModalService.fetchMainModal();
      _errorMessage = '';
    } catch (error) {
      _errorMessage = error.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void save(MainModal recipe) {
    _saved.add(recipe);
    notifyListeners();
  }
}
