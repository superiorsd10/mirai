import 'package:flutter/cupertino.dart';
import 'package:mirai/src/action/mirai_action.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/navigation/mirai_navigator.dart';
import 'package:mirai/src/network/mirai_network.dart';

extension MiraiActionParser on MiraiAction? {
  Future<dynamic>? onCall(BuildContext context) async {
    if (this != null) {
      switch (this?.actionType ?? ActionType.none) {
        case ActionType.navigate:
          return _navigate(context);

        case ActionType.request:
          final response = await MiraiNetwork.request(this!.request!);
          if (response?.data != null) {
            for (int status in this?.actions?.keys ?? []) {
              if (status == response?.statusCode) {
                Map<String, dynamic> data = response?.data ?? {};

                final networkWrapper = {
                  "type": "networkWrapper",
                  "data": data,
                  "body": this?.actions?[status]?.widgetJson
                };

                return _navigate(context,
                    screen: Mirai.fromJson(networkWrapper, context));
              }
            }
          }
          break;
        case ActionType.none:
          break;
      }
    }
  }

  Future<dynamic>? _navigate(BuildContext context, {Widget? screen}) async {
    if (this?.navigationStyle == NavigationStyle.pop) {
      return MiraiNavigator.navigateBack(context);
    }

    if (screen != null) {
      return MiraiNavigator.navigate(
        context: context,
        navigationType: this?.navigationType ?? NavigationType.screen,
        navigationStyle: this?.navigationStyle ?? NavigationStyle.push,
        widget: screen,
      );
    }

    Widget? widget;
    if (this!.widgetJson != null) {
      widget = Mirai.fromJson(this!.widgetJson, context);

      if (widget != null) {
        return MiraiNavigator.navigate(
          context: context,
          navigationType: this?.navigationType ?? NavigationType.screen,
          navigationStyle: this?.navigationStyle ?? NavigationStyle.push,
          widget: widget,
        );
      }
    } else if (this?.request != null) {
      widget = Mirai.fromNetwork(this!.request!);

      return MiraiNavigator.navigate(
        context: context,
        navigationType: this?.navigationType ?? NavigationType.screen,
        navigationStyle: this?.navigationStyle ?? NavigationStyle.push,
        widget: widget,
      );
    } else if (this?.assetPath != null) {
      widget = await Mirai.fromAssets(this!.assetPath!, context);

      if (context.mounted && widget != null) {
        return MiraiNavigator.navigate(
          context: context,
          navigationType: this?.navigationType ?? NavigationType.screen,
          navigationStyle: this?.navigationStyle ?? NavigationStyle.push,
          widget: widget,
        );
      }
    }
  }
}
