// ignore_for_file: constant_identifier_names

enum Flavor {
  DEV,
  HOM,
  PROD,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'App Playground Dev';
      case Flavor.HOM:
        return 'App Playground Hom';
      case Flavor.PROD:
        return 'App Playground Prod';
      default:
        return 'title';
    }
  }

  static bool get isDev => F.appFlavor == Flavor.DEV;
  static bool get isProd => F.appFlavor == Flavor.PROD;
  static bool get isHom => F.appFlavor == Flavor.HOM;

  static String get baseURL {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'https://api.prod.com.br';
      case Flavor.HOM:
        return 'https://api.hom.com.br';
      case Flavor.DEV:
      default:
        return 'https://api.dev.com.br';
    }
  }
}
