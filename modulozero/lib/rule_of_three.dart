class RuleOfThree {
  final double? value01;
  final double? value02;
  final double? value03;
  final double? value04;

  RuleOfThree({this.value01, this.value02, this.value03, this.value04});

  double? calculate() {
    int nulos =
        [value01, value02, value03, value04].where((v) => v == null).length;

    if (nulos != 1) {
      return null;
    }

    var result = 0.0;

    if (value01 == null) {
      result = (value02! * value03!) / value04!;
    } else if (value02 == null) {
      result = (value01! * value04!) / value03!;
    } else if (value03 == null) {
      result = (value01! * value04!) / value02!;
    } else if (value04 == null) {
      result = (value02! * value03!) / value01!;
    }

    return result;
  }
}
