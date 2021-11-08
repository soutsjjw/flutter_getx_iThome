import 'package:get/get.dart';

class BindingController extends GetxController {
  //String
  final _someString = ''.obs;
  set someString(value) => _someString.value = value;
  get someString => _someString.value;

  //int
  final _someInt = 0.obs;
  set someInt(value) => _someInt.value = value;
  get someInt => _someInt.value;

  //bool
  final _someBool = false.obs;
  set someBool(value) => _someBool.value = value;
  get someBool => _someBool.value;

  //List
  final _someBasicList = <String>[].obs;
  set someBasicList(value) => _someBasicList.value = value;
  get someBasicList => _someBasicList.toList();

  //List<DataModel>
  final _someModelList = <SomeModel>[].obs;
  set someModelList(value) => _someModelList.value = value;
  List<SomeModel> get someModelList => _someModelList.toList();

  //Map
  final someDict = {}.obs;

  //Enum
  final _enumSelectState = Rx<SomeEnumState>(SomeEnumState.stateOne);
  set enumSelectState(value) => _enumSelectState.value = value;
  get enumSelectState => _enumSelectState.value;

  @override
  void onInit() {
    super.onInit();
  }

  addBasicList() {
    _someBasicList.add("add");
  }

  addSomeModelList() {
    final someModel = SomeModel()
      ..id = 55
      ..name = "itHome"
      ..trueFalse = true;
    _someModelList.add(someModel);
    this.update();
  }

  enumChanged() {
    switch (enumSelectState) {
      case SomeEnumState.stateOne:
        enumSelectState = SomeEnumState.stateTwo;
        break;
      case SomeEnumState.stateTwo:
        enumSelectState = SomeEnumState.stateThree;
        break;
      case SomeEnumState.stateThree:
        enumSelectState = SomeEnumState.stateOne;
        break;
    }
    update(["enum"]);
  }
}

//簡單定義一下List的自定義型別
class SomeModel {
  int id = 0;
  String name = "";
  bool trueFalse = false;

  SomeModel();

  SomeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? "";
    trueFalse = json['trueFalse'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['truealse'] = this.trueFalse;
    return data;
  }
}
//簡單定義一下enum的幾種type
enum SomeEnumState {
  stateOne,
  stateTwo,
  stateThree,
}