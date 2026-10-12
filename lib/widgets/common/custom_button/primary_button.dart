import 'package:flutter/material.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/custom_text.dart';

class PrimaryButton extends StatelessWidget {
  /*
 purpose - used for fill primary color to container - react as primary button
 @buttonText - content for button (Required)
 @onTap - function to be perform after click the button (Required)
 @customTextAlign - content align within button (Optional)
 @isResizeText - applying the fittedbox avoid the overflow error when content is long one  (Optional)
 @shadowOpacity - bottom shadow ratio  to container (Optional)
 @padding - inner alignment within the button container (Optional)
 @buttonTextFontSize - content size within the button (Optional)

   */

  const PrimaryButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.customTextAlign,
    this.isResizeText,
    this.shadowOpacity,
    this.padding,
    this.buttonTextFontSize = AppDimen.textSize_16,
    this.isWrapContent = false,
  });

  final String buttonText;
  final double? shadowOpacity;
  final EdgeInsetsGeometry? padding;
  final double? buttonTextFontSize;
  final bool? isResizeText;
  final TextAlign? customTextAlign;
  final GestureTapCallback? onTap;
  final bool isWrapContent;

  @override
  Widget build(BuildContext context) {
    return toOnTap(
      onTap: onTap,
      child: Container(
          padding: padding,
          constraints: BoxConstraints(
            minHeight: AppDimen.button_height,
          ),
          width: isWrapContent ? null : deviceWidth,
          decoration: BoxDecoration(
            color: appColors.primaryColor,
            borderRadius: BorderRadius.circular(
              appLayoutMap[AppLayout.buttonType]?.borderRadius ?? 0,
            ),
          ),
          alignment: Alignment.center,
          child: [
            // A single word (e.g. "Suivant") must never break in the middle:
            // it shrinks to fit instead. Sentences keep wrapping on 2 lines.
            if ((isResizeText ?? false) || !buttonText.trim().contains(RegExp(r'\s')))
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: CustomText(
                    text: buttonText,
                    color: appColors.buttonTextColor,
                    textAlign: customTextAlign ?? TextAlign.center,
                    size: buttonTextFontSize,
                    maxLines: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            else
              CustomText(
                text: buttonText,
                color: appColors.buttonTextColor,
                textAlign: customTextAlign ?? TextAlign.start,
                size: buttonTextFontSize,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                fontWeight: FontWeight.w500,
              ).toStretch(isExpanded: false),
            if ((appLayoutMap[AppLayout.buttonType]?.isButtonArrowShow ?? false))
              Assets.drawableRightArrow
                  .toSVG(colour: appColors.buttonTextColor, size: 10)
                  .toPad(start: 5, top: 2),
          ].toRow(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center)),
    );
  }
}