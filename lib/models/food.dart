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

List<Food> mockFoods = [
  Food(
    id: 1,
    picturePath:
        "https://www.masakapahariini.com/wp-content/uploads/2019/01/soto-ayam-kampung.jpg",
    name: "Soto ayam",
    description:
        "Siapa sih orang Indonesia yang tidak tahu Soto? Apalagi Soto Ayam yang bisa mudah dijumpai di berbagai wilayah di Indonesia. Soto Ayam Bening merupakan salah satu varian soto ayam yang terkenal di Indonesia karena dianggap menyegarkan sekaligus menghangatkan. Cocok banget disantap saat cuaca sedang hujan atau dingin.",
    ingredients: "Ayam, tomat, bawang putih, bawang merah, daun jeruk",
    price: 15000,
    rate: 4.5,
  ),

  Food(
    id: 2,
    picturePath:
        "https://sweetrip.id/wp-content/uploads/2020/05/duniakulinersurabaya_84272350_541137659861429_5681105554989196814_n.jpg",
    name: "Sate ayam",
    description:
        "Lebaran dengan Sate Ayam Madura? Mengapa tidak? Kita bisa bikin resep Sate Ayam Madura untuk Lebaran ...",
    ingredients: "Daging ayam fillet, potong dadu 400 gram, Jeruk nipis ½ buah, Merica bubuk ½ sdt, bawang merah, Kacang tanah yang sudah digoreng dan ditumbuk halus 150 gram",
    price: 12000,
    rate: 4.7,
  ),

  Food(
    id: 3,
    picturePath:
        "https://www.masakapahariini.com/wp-content/uploads/2019/07/ayam-bakar-hitam-manis.jpg",
    name: "Ayam bakar",
    description:
        "Sajian ayam bakar hitam manis berikut adalah cara baru menikmati santap bersama keluarga.",
    ingredients: "1 ekor ayam negeri, potong enam bagian, ½ sdt garam, 1 sdt jeruk nipis, 2 lembar daun salam, 1 batang serai",
    price: 17000,
    rate: 4.4,
  ),

  Food(
    id: 4,
    picturePath:
        "https://www.wowkeren.com/images/news/00110050.jpg",
    name: "Mie daging sapi Taiwan",
    description:
        "Mie daging sapi Taiwan sudah populer ke berbagai belahan dunia. Makanan khas Taiwan mempunyai ciri khas daging yang lebih dominan",
    ingredients: "Daging sapi, 2 siung bawang putih (geprek), 5 iris jahe (potong tipis, geprek)",
    price: 25000,
    rate: 4.3,
  ),

];
