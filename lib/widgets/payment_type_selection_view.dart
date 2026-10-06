import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/custom_text.dart';

class PaymentTypeSelectionView extends GetView{
String paymentTypeIcon;
String paymentTypeTitle;
bool ispaymentTypeSelected;
String? imageUrl;

PaymentTypeSelectionView({super.key,
    required this.paymentTypeIcon,
    required this.paymentTypeTitle,
    required this.ispaymentTypeSelected,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return [
      _paymentIcon(),
      15.toWidth(),
      CustomText(
        text: paymentTypeTitle,
        size: AppDimen.textSize_16,
        fontWeight: AppFont.regular,
      ).toStretch(),
      5.toWidth(),
      CustomBorderContainer(
        width: 25,
        height: 25,
        borderWidth: 1,
        borderRadius: 60,
        alignment: AlignmentDirectional.center,
        color: ispaymentTypeSelected ? appColors.secondaryColor : null,
        body: ispaymentTypeSelected
            ? Assets.drawableViewdetailReportTick.toSVG(size: 10,)
            : null,
      ).toPad(end: 10)
    ].toRow();
  }

  Widget _paymentIcon() => paymentMethodIcon(
      fallbackAsset: paymentTypeIcon, imageUrl: imageUrl, size: 30);

}

/// Logo of a payment gateway: the API image when available, otherwise the
/// bundled [fallbackAsset].
Widget paymentMethodIcon({
  required String fallbackAsset,
  String? imageUrl,
  double size = 30,
}) {
  final url = imageUrl?.trim() ?? '';
  final fallback = fallbackAsset.toSVG(size: size);
  if (url.isEmpty) return fallback;
  if (url.toLowerCase().endsWith('.svg')) {
    return SvgPicture.network(url,
        width: size, height: size, placeholderBuilder: (_) => fallback);
  }
  return CachedNetworkImage(
    imageUrl: url,
    width: size,
    height: size,
    fit: BoxFit.contain,
    errorWidget: (_, __, ___) => fallback,
  );
}
