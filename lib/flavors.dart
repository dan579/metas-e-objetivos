enum Flavor {
  PROD,
  DEV,
  HOM,
  PRE,
}

class F {
  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'iBeautty Institucional';
      case Flavor.DEV:
        return 'iBeautty Institucional Dev';
      case Flavor.HOM:
        return 'iBeautty Institucional QA';
      case Flavor.PRE:
        return 'iBeautty Institucional Pré';
      default:
        return 'iBeautty Institucional';
    }
  }

}
