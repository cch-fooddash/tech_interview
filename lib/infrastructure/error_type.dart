// usecase : final enum = ErrorType.findByName(stringValue);
enum ErrorType {
  undefined("UNDEFINED"),
  ;

  const ErrorType(this.description);

  final String description;

  static ErrorType findByName({String? name}) {
    const defaultValue = ErrorType.undefined;
    if (name == null) {
      return defaultValue;
    }

    return ErrorType.values.firstWhere(
            (element) =>
            element.description
                .replaceAll("_", "")
                .replaceAll("-", "")
                .toUpperCase() ==
            name.replaceAll("_", "").replaceAll("-", "").toUpperCase(),
        orElse: () => defaultValue);
  }
}
