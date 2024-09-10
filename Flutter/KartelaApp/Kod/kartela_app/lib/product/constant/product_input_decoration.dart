import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'product_border_radius.dart';
import 'product_colors.dart';

class ProductInputDecoration extends InputDecoration {
  ProductInputDecoration.searchTFDecoration({required String hint})
      : super(
            hintText: hint,
            suffixIcon: const Icon(Icons.search),
            suffixIconColor: ProductColors.instance.grey600,
            border: OutlineInputBorder(
                borderRadius: ProductBorderRadius.circularHigh(),
                borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: ProductColors.instance.grey400!)));

  ProductInputDecoration.loginTF(BuildContext context, String hintText)
      : super(
          hintStyle: context.general.textTheme.bodyMedium!
              .copyWith(color: ProductColors.instance.grey600),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: hintText,
        );
}
