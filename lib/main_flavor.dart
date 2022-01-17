import 'package:app_playground/src/app_widget.dart';
import 'package:flutter/cupertino.dart';

import 'flavors.dart';

void buildFlavor({required Flavor flavor}) {
  F.appFlavor = flavor;
  runApp(const AppWidget());
}
