import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:kartela_app/core/lang/locale_strings.dart';
import '../validator/login_validator.dart';
import '../../../product/constant/product_box_decorations.dart';
import '../../../product/constant/product_colors.dart';
import '../../../product/constant/product_input_decoration.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../product/extension/images_extension.dart';
import 'package:provider/provider.dart';
import '../../../product/constant/product_border_radius.dart';
import '../../../product/constant/product_padding.dart';
import '../view_model/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const ProductPadding.allHigh(),
        child: Form(
          key: context.read<LoginViewModel>().key,
          child: Column(
            children: [
              SizedBox(
                height: context.sized.dynamicHeight(0.15),
              ),
              _buildFields(context),
              SizedBox(
                height: context.sized.dynamicHeight(0.15),
              ),
              SizedBox(
                  width: context.sized.dynamicWidth(1),
                  height: context.sized.dynamicHeight(0.1),
                  child: Image.asset(ImagesPNG.peykan_logo_2.logoPath))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFields(BuildContext context) {
    return SizedBox(
      width: context.sized.dynamicWidth(1),
      height: context.sized.dynamicHeight(0.45),
      child: Card(
        color: context.general.colorScheme.inversePrimary,
        elevation: 1,
        child: Column(
          children: [
            Padding(
              padding: const ProductPadding.onlyl15r15t20b15(),
              child: _buildCNField(context),
            ),
            Padding(
              padding: const ProductPadding.onlyl15r15b10(),
              child: _buildMField(context),
            ),
            Padding(
              padding: const ProductPadding.onlyl15r15b10(),
              child: _buildPField(context),
            ),
            SizedBox(
                width: context.sized.dynamicWidth(0.6),
                child: FilledButton(
                    onPressed: () => context
                        .read<LoginViewModel>()
                        .validate(context: context),
                    child: Text(LocaleStrings.login.tr())))
          ],
        ),
      ),
    );
  }

  Widget _buildPField(BuildContext context) {
    return IntlPhoneField(
      controller: context.read<LoginViewModel>().phoneController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true,
        fillColor: ProductColors.instance.grey200,
        labelText: "",
        border: OutlineInputBorder(
            borderRadius: ProductBorderRadius.circularHigh(),
            borderSide: BorderSide(color: ProductColors.instance.grey400!)),
      ),
      initialCountryCode: 'TR',
    );
  }

  Widget _buildMField(BuildContext context) {
    return Container(
      decoration: ProductBoxDecorations.loginTF(context),
      child: TextFormField(
        validator: (value) => LoginValidator.instance.mailValidator(value),
        controller: context.read<LoginViewModel>().mailController,
        decoration:
            ProductInputDecoration.loginTF(context, LocaleStrings.mail.tr()),
      ),
    );
  }

  Widget _buildCNField(BuildContext context) {
    return Container(
      decoration: ProductBoxDecorations.loginTF(context),
      child: TextFormField(
        validator: (value) =>
            LoginValidator.instance.companyNameValidator(value),
        controller: context.read<LoginViewModel>().companyNameController,
        decoration: ProductInputDecoration.loginTF(
            context, LocaleStrings.companyName.tr()),
      ),
    );
  }
}
