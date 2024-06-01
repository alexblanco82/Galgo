import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    CountryStruct.fromSerializableMap(
        jsonDecode('{\"Name\":\"Spain\",\"DialCode\":\"+34\",\"Image\":\"\"}'))
  ];
  List<CountryStruct> get CountryCode => _CountryCode;
  set CountryCode(List<CountryStruct> _value) {
    _CountryCode = _value;
  }

  void addToCountryCode(CountryStruct _value) {
    _CountryCode.add(_value);
  }

  void removeFromCountryCode(CountryStruct _value) {
    _CountryCode.remove(_value);
  }

  void removeAtIndexFromCountryCode(int _index) {
    _CountryCode.removeAt(_index);
  }

  void updateCountryCodeAtIndex(
    int _index,
    CountryStruct Function(CountryStruct) updateFn,
  ) {
    _CountryCode[_index] = updateFn(_CountryCode[_index]);
  }

  void insertAtIndexInCountryCode(int _index, CountryStruct _value) {
    _CountryCode.insert(_index, _value);
  }

  bool _Liked = false;
  bool get Liked => _Liked;
  set Liked(bool _value) {
    _Liked = _value;
  }

  List<MessageStruct> _Chat = [];
  List<MessageStruct> get Chat => _Chat;
  set Chat(List<MessageStruct> _value) {
    _Chat = _value;
  }

  void addToChat(MessageStruct _value) {
    _Chat.add(_value);
  }

  void removeFromChat(MessageStruct _value) {
    _Chat.remove(_value);
  }

  void removeAtIndexFromChat(int _index) {
    _Chat.removeAt(_index);
  }

  void updateChatAtIndex(
    int _index,
    MessageStruct Function(MessageStruct) updateFn,
  ) {
    _Chat[_index] = updateFn(_Chat[_index]);
  }

  void insertAtIndexInChat(int _index, MessageStruct _value) {
    _Chat.insert(_index, _value);
  }
}
