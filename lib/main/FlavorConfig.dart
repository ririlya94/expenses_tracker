enum Flavor {
  PRODUCTION,
  DEVELOPMENT,
  STAGING,
}

class FlavorValues {

  FlavorValues({required this.baseUrl});

  final String baseUrl;

}

class FlavorConfig {
  final Flavor flavor;
  final FlavorValues flavorValues;

  static FlavorConfig? _instance;
  static FlavorConfig? get instance { return _instance;}

  FlavorConfig._internal(this.flavor, this.flavorValues);

  factory FlavorConfig({
    required Flavor flavor
  }) {
    String baseUrl = "your base url here";

    switch(flavor){
      case Flavor.DEVELOPMENT:
        baseUrl = "https://clear-aligner.testlab360.com/";
        break;
      case Flavor.PRODUCTION:
        baseUrl = "https://app.drclearaligners.my/";
        break;
      case Flavor.STAGING:
        baseUrl = "https://clear-aligner.testlab360.com/";
        break;
      default:
        baseUrl = "https://clear-aligner.testlab360.com/";
        break;
    }

    _instance ??= FlavorConfig._internal(flavor, FlavorValues(baseUrl: baseUrl));
    return _instance!;
  }

}