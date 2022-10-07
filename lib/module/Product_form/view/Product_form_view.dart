import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/shared/widget/image_picker/image_picker.dart';
import 'package:flutter_hyper_ui/shared/widget/rating/rating.dart';
import 'package:flutter_hyper_ui/shared/widget/textfield/textfield.dart';
import '../../../shared/widget/textfield/textarea.dart';
import '../controller/Product_form_controller.dart';

import 'package:get/get.dart';

class ProductFormView extends StatelessWidget {
  const ProductFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductFormController>(
      init: ProductFormController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ProductForm"),
            actions: [
              ElevatedButton.icon(
                icon: const Icon(Icons.save),
                label: const Text("Save"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.doSave(),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  //body
                  ExImagePicker(
                    id: "photo",
                    label: "Photo",
                  ),
                  // f_tekt
                  ExTextField(
                    id: "hotel_name",
                    label: "Hotel Name",
                  ),
                  //f_num
                  ExTextField(
                    id: "price",
                    label: "Price",
                    keyboardType: TextInputType.number,
                  ),
                  ExRating(
                    id: "rating",
                    label: "Rating",
                  ),
                  ExTextArea(
                    id: "location",
                    label: "Location",
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
