import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../../../shared/util/input/input.dart';
import '../view/Product_form_view.dart';

class ProductFormController extends GetxController {
  ProductFormView? view;

  doSave() async {
    var photo = Input.get("photo");
    var hotelName = Input.get("hotel_name");
    var price = Input.get("price");
    var rating = Input.get("rating");
    var location = Input.get("location");
    await FirebaseFirestore.instance.collection("hotels").add({
      "photo": photo,
      "price": price,
      "hotel_name": hotelName,
      "location": location,
      "rating": rating,
    });
    Get.back();
  }
}
