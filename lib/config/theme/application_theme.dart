import 'package:flutter/material.dart';
import 'package:trust_ride/config/styles/app_style.dart';
import 'package:trust_ride/config/values/app_font_size.dart';
import 'package:trust_ride/config/values/app_padding.dart';
import 'package:trust_ride/config/values/app_size.dart';

import '../styles/app_color.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //Main color of the app
    primaryColor: AppColors.primary,
    primaryColorLight: AppColors.primarylight,
    primaryColorDark: AppColors.primaryDark,
    disabledColor: AppColors.darkGrey,
    //ripple color
    splashColor: AppColors.primarylight,
    //card view theme
    cardTheme: const CardTheme(
        color: AppColors.white,
        shadowColor: AppColors.grey,
        surfaceTintColor: AppColors.white,
        elevation: 0),
    cardColor: AppColors.white,
    //App ba theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: AppColors.primary,
        elevation: AppSizes.as10,
        shadowColor: AppColors.primarylight,
        titleTextStyle: getRegularStyle(
            color: AppColors.white, fontSize: AppFontSizes.large)),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.white, surfaceTintColor: AppColors.white),
    dialogTheme: const DialogTheme(surfaceTintColor: AppColors.white),

    //Button theme
    buttonTheme: const ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: AppColors.grey,
        buttonColor: AppColors.primary,
        splashColor: AppColors.primarylight),
    scaffoldBackgroundColor: AppColors.white,
    //Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: AppColors.white),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppFontSizes.large),
        ),
      ),
    ),

    //Text theme
    textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: AppColors.black, fontSize: AppFontSizes.large),
        titleMedium: getMediumStyle(
          color: AppColors.darkGrey,
        ),
        titleSmall: getMediumStyle(
          color: AppColors.darkGrey,
        ),
        bodySmall: getRegularStyle(color: AppColors.darkGrey),
        bodyLarge: getRegularStyle(color: AppColors.darkGrey)),

    //input decoration theme(text form field)
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPaddings.ap8),
        //hint style
        hintStyle: getRegularStyle(color: AppColors.lightGrey),

        //label style
        labelStyle: getRegularStyle(color: AppColors.darkGrey),

        //error style
        errorStyle: getRegularStyle(color: AppColors.error),

        //enable border
        enabledBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColors.grey, width: AppSizes.outLineBorder),
          borderRadius: BorderRadius.all(
            Radius.circular(AppSizes.as8),
          ),
        ),

        //focused border
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.primary, width: AppSizes.outLineBorder),
          borderRadius: BorderRadius.all(
            Radius.circular(AppSizes.as8),
          ),
        ),

        //error border
        errorBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColors.error, width: AppSizes.outLineBorder),
          borderRadius: BorderRadius.all(
            Radius.circular(AppSizes.as8),
          ),
        ),

        //focused error border
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.lightGrey.withOpacity(0.5),
              width: AppSizes.outLineBorder),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSizes.as8),
          ),
        )),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: AppColors.grey)
        .copyWith(background: AppColors.white),
  );
}
