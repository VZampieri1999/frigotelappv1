class DeviceModel {
  String name= "";
  String color= "";
  bool isActive = false;

  DeviceModel({required this.name,required this.color,required this.isActive});

  DeviceModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    color = json['color'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['color'] = this.color;
    data['isActive'] = this.isActive;
    return data;
  }
}
