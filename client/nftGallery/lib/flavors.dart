// ignore_for_file: constant_identifier_names
enum Flavor { DEV, QA, PROD, UAT }

class FlavorTypes {
  static Flavor? appFlavor;

  static String get appTitle {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'Dev Napses';
      case Flavor.QA:
        return 'QA Napses';
      case Flavor.PROD:
        return 'Napses';
      case Flavor.UAT:
        return 'UAT Napses';
      default:
        return 'Napses Unknown';
    }
  }

  static String get getServerName {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'DEV';
      case Flavor.UAT:
        return 'UAT';
      case Flavor.QA:
        return 'QA';
      case Flavor.PROD:
        return '';
      default:
        return 'Unknown';
    }
  }

  static String get appBaseURL {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'http://192.168.1.107:3000';
      case Flavor.UAT:
        return '';
      case Flavor.QA:
        return '';
      case Flavor.PROD:
        return '';
      default:
        return '';
    }
  }

  static String get s3BaseURL {
    switch (appFlavor) {
      case Flavor.DEV:
        return '';
      case Flavor.UAT:
        return '';
      case Flavor.QA:
        return '';
      case Flavor.PROD:
        return '';
      default:
        return '';
    }
  }
}
