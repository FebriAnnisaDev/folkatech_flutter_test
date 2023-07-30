import 'package:flutter/material.dart';
import '../../../model/product.dart';
import '../../../shared/radio_with_header/radio_with_header.dart';
import '../../../shared/typography/category_list/category_list.dart';
import '../../../shared/util/validator/validator.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            product.name,
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            product.desc,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14.0, color: Colors.black54),
          ),
          const SizedBox(height: 12),
          const QCategoryList(
            items: [
              "\$\$",
              "Free Delivery",
              "10 mins",
              "Indonesia",
            ],
          ),
          const SizedBox(height: 15),
          QRadioFieldWithHeader(
            primary: false,
            radioListPadding: EdgeInsets.zero,
            label: "Tambahan Topping",
            validator: Validator.atLeastOneitem,
            items: const [
              {
                "label": "Mayonaise",
                "value": "Mayonaise",
              },
              {
                "label": "Keju",
                "value": "Keju",
              },
              {
                "label": "Sosis",
                "value": "Sosis",
              },
            ],
            onChanged: (value, label) {},
          ),
          QRadioFieldWithHeader(
            primary: false,
            padding: EdgeInsets.zero,
            radioListPadding: EdgeInsets.zero,
            label: "Minta Alat Makan",
            validator: Validator.atLeastOneitem,
            items: const [
              {
                "label": "Ya",
                "value": "Ya",
              },
              {
                "label": "Tidak",
                "value": "Tidak",
              },
            ],
            onChanged: (value, label) {},
          ),
          ListTile(
            onTap: () {},
            title: const Text("Tambah catatan untuk resto"),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
            ),
          )
        ],
      ),
    );
  }
}
