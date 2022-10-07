import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/shared/widget/datepicker/datepicker.dart';
import 'package:flutter_hyper_ui/shared/widget/textfield/textfield.dart';
import '../controller/hotel_detail_controller.dart';

import 'package:get/get.dart';

class HotelDetailView extends StatelessWidget {
  final Map item;
  const HotelDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HotelDetailController>(
      init: HotelDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            //circleicon
            leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.all(12.0),
            height: 90.0,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    size: 32.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.book),
                    label: const Text("Book"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      //shapeContinuousRecatngleBorder
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(64.0),
                      ),
                    ),
                    onPressed: () => controller.doBooking(),
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // conimage
                Container(
                  height: MediaQuery.of(context).size.height / 2.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        item["photo"],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // p12
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          item["hotel_name"],
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                      // tb10
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              item["location"],
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Icon(Icons.map),
                          const SizedBox(
                            height: 4.0,
                          ),
                          const Text(
                            "Show In Map",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const Text(
                                    "Price",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "\$${item["price"]}",
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const Text(
                                    "Reviews",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.star),
                                      Text(
                                        "${item["rating"]}",
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    "Comment",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "3,200",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Facilities",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),

                      SingleChildScrollView(
                        controller: ScrollController(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60.0,
                                  width: 80,
                                  margin: const EdgeInsets.all(4.0),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://ciungtips.com/wp-content/uploads/2016/08/alila-3.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60.0,
                                  width: 80.0,
                                  margin: const EdgeInsets.all(4.0),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://p.bookcdn.com/data/Photos/r1280x401/12781/1278126/1278126784/Aryaduta-Bandung-photos-Exterior.JPEG",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60.0,
                                  width: 80,
                                  margin: const EdgeInsets.all(4.0),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://p.bookcdn.com/data/Photos/r1280x401/12781/1278127/1278127114/Aryaduta-Bandung-photos-Exterior.JPEG",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60.0,
                                  width: 80,
                                  margin: const EdgeInsets.all(4.0),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://p.bookcdn.com/data/Photos/r1280x401/12781/1278126/1278126742/Aryaduta-Bandung-photos-Exterior.JPEG",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60.0,
                                  width: 80,
                                  margin: const EdgeInsets.all(4.0),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://cdn.keepo.me/images/post/lists/2019/12/04/main-list-image-e8465c07-e48e-42e8-b939-6bd0790e9357-1.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: const [
                            Expanded(
                              child: ExDatePicker(
                                id: "booking_date",
                                label: "Booking Date",
                              ),
                            ),
                            Expanded(
                              child: ExTextField(
                                id: "duration_of_stay",
                                label: "Duration (n Night)",
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
