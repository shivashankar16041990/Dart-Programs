import 'package:hive/hive.dart';

void main() async {
  Hive.init("C:\Users\admin\Desktop\hive\my");
  Hive.registerAdapter(PersonAdapter());

  await Hive.openBox<Person>("mybox2");

  final box2 = Hive.box<Person>("mybox2");

  var person = Person(id: 1, name: "shiv", mobileno: 676668444);
  box2.add(person);
  var p = box2.getAt(0);

  print(p!.id);
  print(p.name);
  print(p.mobileno);

  await box2.close();
  await Hive.close();
}

@HiveType(typeId: 0)
class Person extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  int mobileno;

  Person({required this.id, required this.name, required this.mobileno});
}

class PersonAdapter extends TypeAdapter<Person> {
  @override
  final int typeId = 0;

  @override
  Person read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    //fields.forEach((key, value) {print("$key :$value ");});

    return Person(
      id: fields[0] ?? 0 as int,
      name: fields[1] as String,
      mobileno: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Person obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.mobileno);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
