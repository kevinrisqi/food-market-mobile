part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});
}

Food mockFood = Food(
  id: 1,
  picturePath:
      "https://picsum.photos/200/300",
  name: "Soto ayam",
  description:
      "Siapa sih orang Indonesia yang tidak tahu Soto? Apalagi Soto Ayam yang bisa mudah dijumpai di berbagai wilayah di Indonesia. Soto Ayam Bening merupakan salah satu varian soto ayam yang terkenal di Indonesia karena dianggap menyegarkan sekaligus menghangatkan. Cocok banget disantap saat cuaca sedang hujan atau dingin.",
  ingredients: "Ayam, tomat, bawang putih, bawang merah, daun jeruk",
  price: 15000,
  rate: 4.5,
);
