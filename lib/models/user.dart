part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Sarah Rahma',
    email: 'sarahrahma@gmail.com',
    address: 'Jalan Kenanga',
    houseNumber: 'T20',
    phoneNumber: '08978347893479',
    city: 'Surabaya',
    picturePath:
        'https://expertphotography.com/wp-content/uploads/2018/10/cool-profile-pictures-retouching-1.jpg');
