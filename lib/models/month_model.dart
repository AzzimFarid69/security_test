class GeneralModel {
  final String name;
  final String description;
  final String status;
  final bool isBool;
  final List<FeesAndCharges> feesAndCharges;

  GeneralModel(
      {this.name, this.description, this.status, this.isBool = false, this.feesAndCharges});

  @override
  String toString() =>
      "GeneralModel(name='$name', description='$description, description='$status, isBool=$isBool, feesAndCharges=$feesAndCharges)";
}

class FeesAndCharges {
  final String item;
  final double value;

  FeesAndCharges({this.item, this.value});

  @override
  String toString() => "FeesAndCharges(item='$item', value='$value)";
}
