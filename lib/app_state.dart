import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<CountryStruct> _CountryCode = [
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Spain\",\"DialCode\":\"+34\",\"Image\":\"https://en.wikipedia.org/wiki/Flag_of_Spain#/media/File:Flag_of_Spain.svg\"}'))
  ];
  List<CountryStruct> get CountryCode => _CountryCode;
  set CountryCode(List<CountryStruct> value) {
    _CountryCode = value;
  }

  void addToCountryCode(CountryStruct value) {
    _CountryCode.add(value);
  }

  void removeFromCountryCode(CountryStruct value) {
    _CountryCode.remove(value);
  }

  void removeAtIndexFromCountryCode(int index) {
    _CountryCode.removeAt(index);
  }

  void updateCountryCodeAtIndex(
    int index,
    CountryStruct Function(CountryStruct) updateFn,
  ) {
    _CountryCode[index] = updateFn(_CountryCode[index]);
  }

  void insertAtIndexInCountryCode(int index, CountryStruct value) {
    _CountryCode.insert(index, value);
  }

  bool _Liked = false;
  bool get Liked => _Liked;
  set Liked(bool value) {
    _Liked = value;
  }

  List<MessageStruct> _Chat = [];
  List<MessageStruct> get Chat => _Chat;
  set Chat(List<MessageStruct> value) {
    _Chat = value;
  }

  void addToChat(MessageStruct value) {
    _Chat.add(value);
  }

  void removeFromChat(MessageStruct value) {
    _Chat.remove(value);
  }

  void removeAtIndexFromChat(int index) {
    _Chat.removeAt(index);
  }

  void updateChatAtIndex(
    int index,
    MessageStruct Function(MessageStruct) updateFn,
  ) {
    _Chat[index] = updateFn(_Chat[index]);
  }

  void insertAtIndexInChat(int index, MessageStruct value) {
    _Chat.insert(index, value);
  }
}
