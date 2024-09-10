import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:kartela_app/features/order_cart/view_model/order_cart_view_model.dart';
import 'package:kartela_app/product/constant/product_padding.dart';
import 'package:kartela_app/product/mixin/show_bottom_sheet.dart';
import 'package:kartela_app/product/widget/divider_close_button.dart';
import 'package:kartela_app/product/widget/info_card.dart';
import 'package:kartela_app/product/widget/kartela_data_container.dart';
import 'package:provider/provider.dart';
import '../../../core/lang/locale_strings.dart';
import '../../../product/constant/product_border_radius.dart';
import '../../../product/constant/product_colors.dart';
import '../../../product/extension/lottie_extension.dart';

class OrderCartView extends StatelessWidget with ShowBottomSheet {
  const OrderCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const ProductPadding.allMedium(),
        child: _buildBody(),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text("Sipariş Sepeti"),
    );
  }

  Widget _buildBody() {
    return Consumer<OrderCartViewModel>(
      builder: (context, viewModel, _) {
        return Column(
          children: [
            SizedBox(
              width: context.sized.dynamicWidth(1),
              height: context.sized.dynamicHeight(0.08),
              child: InfoCard(
                  text:
                      "Sepetinizde ${viewModel.orders?.length == null ? 0 : viewModel.orders!.length} Tane Ürün Bulunmaktadır"),
            ),
            SizedBox(
              width: context.sized.dynamicWidth(1),
              height: context.sized.dynamicHeight(0.72),
              child: (viewModel.orders == null ||
                      viewModel.orders!.isEmpty ||
                      viewModel.orders == [])
                  ? Center(
                      child: Lotties.search_not_found.getLottie,
                    )
                  : _buildOrderCards(viewModel),
            ),
            (viewModel.orders == null ||
                    viewModel.orders!.isEmpty ||
                    viewModel.orders == [])
                ? const SizedBox.shrink()
                : _buildOrderCompleteButton(context)
          ],
        );
      },
    );
  }

  Widget _buildOrderCompleteButton(BuildContext context) {
    return SizedBox(
      width: context.sized.dynamicWidth(1),
      height: context.sized.dynamicHeight(0.05),
      child: Padding(
        padding: const ProductPadding.horizontalHigh(),
        child: FilledButton(
            onPressed: () {
              context
                  .read<OrderCartViewModel>()
                  .orderToLocale(context: context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const ProductPadding.horizontalMedium(),
                  child: Text(
                    "Siparişi Tamamla",
                    style: context.general.textTheme.titleMedium!
                        .copyWith(color: ProductColors.instance.white),
                  ),
                ),
                const Icon(Icons.check)
              ],
            )),
      ),
    );
  }

  Widget _buildOrderCards(OrderCartViewModel viewModel) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          height: context.sized.dynamicHeight(0.015),
        );
      },
      itemCount: viewModel.orders?.length ?? 0,
      itemBuilder: (context, index) {
        return Card(
          elevation: 6,
          child: Padding(
            padding: const ProductPadding.allLow(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildOrderInfo(context, viewModel, index),
                _buildCardButtons(context, viewModel, index),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCardButtons(
      BuildContext context, OrderCartViewModel viewModel, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildMButton(context, viewModel, index),
        _buildDeleteAndDetail(context, viewModel, index),
      ],
    );
  }

  Widget _buildMButton(
      BuildContext context, OrderCartViewModel viewModel, int index) {
    return TextButton(
        onPressed: () {
          showCustomSheet(
              context, _buildUpdateOrderCount(context, viewModel, index));
        },
        child: Text(
          "${viewModel.orders?[index].orderCount} m",
          style: TextStyle(fontSize: context.sized.dynamicWidth(0.06)),
        ));
  }

  Widget _buildDeleteAndDetail(
      BuildContext context, OrderCartViewModel viewModel, int index) {
    return Row(
      children: [
        Padding(
          padding: const ProductPadding.horizontalMedium(),
          child: IconButton(
            onPressed: () {
              showCustomSheet(
                  context, _buildOrderDetail(context, viewModel, index));
            },
            icon: Icon(
              Icons.info_outline,
              color: ProductColors.instance.blue700,
              size: context.sized.dynamicWidth(0.08),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            viewModel.deleteOrder(
                context: context, order: viewModel.orders![index]);
          },
          icon: Icon(
            Icons.delete,
            color: ProductColors.instance.delRed,
            size: context.sized.dynamicWidth(0.08),
          ),
        ),
      ],
    );
  }

  Widget _buildUpdateOrderCount(
      BuildContext context, OrderCartViewModel viewModel, int index) {
    return SizedBox(
        width: context.sized.dynamicWidth(1),
        height: context.sized.dynamicHeight(0.3),
        child: Column(
          children: [
            const DividerCloseButton(),
            Padding(
              padding: const ProductPadding.bottomHighPlus25(),
              child: _buildMRow(context),
            ),
            SizedBox(
              width: context.sized.dynamicWidth(0.6),
              child: FilledButton(
                onPressed: () {
                  viewModel.updateCount(
                      context: context, order: viewModel.orders![index]);
                },
                child: Text(
                  "Güncelle",
                  style: context.general.textTheme.titleMedium!
                      .copyWith(color: ProductColors.instance.white),
                ),
              ),
            )
          ],
        ));
  }

  Widget _buildOrderDetail(
      BuildContext context, OrderCartViewModel viewModel, int index) {
    return SizedBox(
      width: context.sized.dynamicWidth(1),
      height: context.sized.dynamicHeight(0.6),
      child: Padding(
        padding: const ProductPadding.allMedium(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DividerCloseButton(),
            Padding(
              padding: const ProductPadding.bottomHighPlus25(),
              child: Text("Ürün Ayrıntılı Bilgi",
                  style: context.general.textTheme.headlineSmall!
                      .copyWith(color: ProductColors.instance.grey600)),
            ),
            KartelaDataContainer(
                model: viewModel.orders![index].product!,
                isShoppingActive: false)
          ],
        ),
      ),
    );
  }

  Widget _buildOrderInfo(
      BuildContext context, OrderCartViewModel viewModel, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const ProductPadding.bottomLow(),
          child: Row(
            children: [
              Text(
                "${LocaleStrings.barcode.tr()} : ",
                style: context.general.textTheme.titleMedium,
              ),
              Text(viewModel.orders?[index].product?.bar ?? "",
                  style: context.general.textTheme.bodyLarge),
            ],
          ),
        ),
        Padding(
          padding: const ProductPadding.bottomLow(),
          child: Row(
            children: [
              Text(
                "${LocaleStrings.patternCode.tr()} : ",
                style: context.general.textTheme.titleMedium,
              ),
              Text(viewModel.orders?[index].product?.desenKod ?? "",
                  style: context.general.textTheme.bodyLarge),
            ],
          ),
        ),
        Padding(
          padding: const ProductPadding.bottomLow(),
          child: Row(
            children: [
              Text(
                "${LocaleStrings.color.tr()} : ",
                style: context.general.textTheme.titleMedium,
              ),
              Text(viewModel.orders?[index].product?.renk ?? "",
                  style: context.general.textTheme.bodyLarge),
            ],
          ),
        ),
        Padding(
          padding: const ProductPadding.bottomLow(),
          child: Row(
            children: [
              Text(
                "${LocaleStrings.type.tr()} :",
                style: context.general.textTheme.titleMedium,
              ),
              Text(viewModel.orders?[index].product?.tip ?? "",
                  style: context.general.textTheme.bodyLarge),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton.tonal(
            onPressed: () {
              context.read<OrderCartViewModel>().decreaseOrder();
            },
            child: Icon(Icons.remove, size: context.sized.dynamicWidth(0.06))),
        Padding(
          padding: const ProductPadding.horizontalHigh(),
          child: SizedBox(
            width: context.sized.dynamicWidth(0.3),
            child: TextField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[1-9]')),
              ],
              controller:
                  context.read<OrderCartViewModel>().numberOfOrderController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixText: "m",
                hintStyle: context.general.textTheme.bodyLarge!
                    .copyWith(color: ProductColors.instance.grey600),
                border: OutlineInputBorder(
                  borderRadius: ProductBorderRadius.circularHigh30(),
                  borderSide: BorderSide(
                    color: ProductColors.instance.grey200!,
                  ),
                ),
              ),
            ),
          ),
        ),
        FilledButton.tonal(
            onPressed: () {
              context.read<OrderCartViewModel>().increaseOrder();
            },
            child: Icon(Icons.add, size: context.sized.dynamicWidth(0.06)))
      ],
    );
  }
}
