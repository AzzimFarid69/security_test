class GeneralModel {
  final String name;
  final String description;
  final bool isBool;
  final List<FeesAndCharges> feesAndCharges;

  GeneralModel({this.name, this.description, this.isBool = false, this.feesAndCharges});

  @override
  String toString() => "GeneralModel(name='$name', description='$description, isBool=$isBool)";
}

class FeesAndCharges {
  final String item;
  final double value;

  FeesAndCharges({this.item, this.value});
}
