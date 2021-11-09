import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
@JsonSerializable()
class ParseList
{
  int total;
  List <String> values;
  ParseList(this.total,this.values);
  factory ParseList.fromJson(Map <String,dynamic> json) => _$ParseListFromJson(json);

  Map <String,dynamic> toJson() => _$ParseListToJson(this);
}






@JsonSerializable()
class Person {
  int id;
  String name;

  Person(this.id, this.name);

  factory Person.fromJson(Map<String, dynamic> json) {
    return _$PersonFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PersonToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class Data {
  String type;
  List<Person> data;

  Data(this.type, this.data);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

void main() {
  String jsonString = ''' {"type":"developer","data":[{"id":1,"name":"motilal"},
  {"id":2,"name":"ram"},
  {"id":3,"name":"lakhan"},
  {"id":4,"name":"rajput"}]}''';

  Data data = Data.fromJson(jsonDecode(jsonString));

  print(data.type);
  List<Person> personList = (data.data).map((e) => e).toList();
  personList.forEach((element) {
    print("id : ${element.id}, name: ${element.name}");
  });

  jsonString = jsonEncode(data);

  print(jsonString);

  //for class ParseList
  String jsonlist='{"total":4,"values":["A","B","X","Z"]}';

  var jsonlistobj=ParseList.fromJson(jsonDecode(jsonlist));
  List<String> list=jsonlistobj.values.map((e) => e).toList();
  list.forEach((element) {print(element);});

  jsonlistobj.values.forEach((element) {print(element);});
  print(jsonlistobj.total);

}






// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
  json['id'] as int,
  json['name'] as String,
);

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  json['type'] as String,
  (json['data'] as List<dynamic>)
      .map((e) => Person.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'type': instance.type,
  'data': instance.data.map((e) => e.toJson()).toList(),
};


ParseList _$ParseListFromJson(Map<String, dynamic> json) => ParseList(
  json['total'] as int,
  (json['values'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ParseListToJson(ParseList instance) => <String, dynamic>{
  'total': instance.total,
  'values': instance.values,
};