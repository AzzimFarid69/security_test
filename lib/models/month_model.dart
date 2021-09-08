class GeneralModel {
  final String name;
  final String description;
  final bool isBool;

  GeneralModel({this.name, this.description, this.isBool = false});

  @override
  String toString() => "GeneralModel(name='$name', description='$description, isBool=$isBool)";
}
