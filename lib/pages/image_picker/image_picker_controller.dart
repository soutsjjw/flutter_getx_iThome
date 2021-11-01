import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
  final _imageFilePath = "".obs;

  get imageFilePath => _imageFilePath.value;
  set imageFilePath(value) => _imageFilePath.value = value;

  @override
  void onInit() {
    super.onInit();
  }

  getImage(ImageSource source) async {
    final _picker = ImagePicker();
    XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      imageFilePath = pickedFile.path;
      print(imageFilePath);
    }
  }
}
