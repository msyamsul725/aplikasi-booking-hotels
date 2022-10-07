import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../../shared/util/input/input.dart';
import '../view/hotel_detail_view.dart';

class HotelDetailController extends GetxController {
  HotelDetailView? view;

  doBooking() async {
    var bookingDate = Input.get("booking_date");
    var durationOfStay = Input.get("duration_of_stay");

    await FirebaseFirestore.instance.collection("orders").add({
      "created_at": Timestamp.now(),
      "user": {
        "id": FirebaseAuth.instance.currentUser!.uid,
        "email": FirebaseAuth.instance.currentUser!.email,
      },
      "booking_date": bookingDate,
      "duration_of_stay": durationOfStay,
      "hotel": view!.item,
    });

    Get.back();
  }
}
