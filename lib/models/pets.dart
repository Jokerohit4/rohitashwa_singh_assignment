


class Pet {
  final String name;
  final String image;
  final int age;
  final String breed;
  final int price;
   bool isAdopted;
   //final favourited;
   DateTime? adoptedAt;
  final String type;
  final String address;

  Pet({required this.name, required this.image,required this.age, required this.breed, required this.price,required this.type,this.isAdopted =false , required this.address, this.adoptedAt});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'age': age,
      'breed': breed,
      'price': price,
      'type': type,
      'address': address,
      'isAdopted': isAdopted,
      'adoptedAt':adoptedAt?.toIso8601String(),
    };
  }

  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
      adoptedAt: json['adoptedAt'] != null  ? DateTime.parse(json['adoptedAt'] as String ) : null,
      name: json['name'],
      image: json['image'],
      age: json['age'],
      breed: json['breed'],
      price: json['price'],
      type: json['type'],
      address: json['address'],
      isAdopted: json['isAdopted'],
    );
  }
}