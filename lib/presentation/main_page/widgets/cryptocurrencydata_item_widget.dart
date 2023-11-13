import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

// ignore: must_be_immutable
class CryptocurrencydataItemWidget extends StatelessWidget {
  const CryptocurrencydataItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 2.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomImageView(
            imagePath: ImageConstant.imgIconEthereum,
            height: 46.adaptSize,
            width: 46.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 1.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 4.v,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 6.v),
                        child: Text(
                          'lbl_eth'.tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorDeepOrangeA400,
                        height: 24.v,
                        width: 63.h,
                        margin: EdgeInsets.only(
                          left: 17.h,
                          bottom: 4.v,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 6.v),
                        child: Text(
                          'lbl_3_800_usd'.tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'lbl_ethereum'.tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      Text(
                        'lbl_3_2'.tr,
                        style: CustomTextStyles.labelLargeDeeporangeA400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
