import '../main_page/widgets/cryptocurrencydata_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchCrytocureencyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 12.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildNine(context),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        'lbl_cryptocurrency'.tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        'lbl_nft'.tr,
                        style: CustomTextStyles.titleLargeBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              _buildSeven(context),
              SizedBox(height: 21.v),
              _buildEleven(context),
              SizedBox(height: 13.v),
              _buildCryptoCurrencyData(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: 'lbl_exchanges'.tr.toUpperCase(),
        margin: EdgeInsets.only(left: 26.h),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(33.h, 12.v, 33.h, 14.v),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    right: 32.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.amber300,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  AppbarTrailingImage(
                    imagePath: ImageConstant.imgNotification,
                  ),
                  AppbarTrailingImage(
                    imagePath: ImageConstant.imgSettings,
                    margin: EdgeInsets.only(left: 16.h),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: CustomSearchView(
              controller: searchCrytocureencyController,
              hintText: 'msg_search_cryptocurrency'.tr,
            ),
          ),
          CustomOutlinedButton(
            width: 75.h,
            text: 'lbl_filter'.tr,
            margin: EdgeInsets.only(left: 9.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 5.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 9.v,
                width: 11.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return SizedBox(
      height: 131.v,
      width: 317.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Align(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 26.v,
              ),
              decoration: AppDecoration.fillGreenA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomImageView(
                    imagePath: ImageConstant.imgIconBitcoin,
                    height: 46.adaptSize,
                    width: 46.adaptSize,
                    margin: EdgeInsets.only(bottom: 32.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 2.v,
                      bottom: 34.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'lbl_btc'.tr,
                          style: CustomTextStyles.titleMediumBlack90001,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          'lbl_bitcoin'.tr,
                          style: CustomTextStyles.labelLargeBlack90001,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 34.v,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'lbl_55_000_usd'.tr,
                          style: CustomTextStyles.titleMediumBlack90001Bold,
                        ),
                        SizedBox(height: 4.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'lbl_2_5'.tr,
                            style: CustomTextStyles.labelLargeGreenA700Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(1.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup4,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorGreenA70040x315,
                    height: 40.v,
                    width: 315.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'msg_top_cryptocurrencies'.tr,
            style: CustomTextStyles.titleMediumBlack900,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            child: Text(
              'lbl_view_all'.tr,
              style: CustomTextStyles.labelLargeBlack9007f,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCryptoCurrencyData(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          BuildContext context,
          int index,
        ) {
          return SizedBox(
            height: 13.v,
          );
        },
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const CryptocurrencydataItemWidget();
        },
      ),
    );
  }
}
