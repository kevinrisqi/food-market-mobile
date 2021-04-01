part of 'widgets.dart';

class FoodCart extends StatelessWidget {
  final Food food;

  FoodCart(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 210,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black26)
          ]),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(food.picturePath))
            ),
          ),
      RatingStars(food.rate),
        ],
      )
    );
  }
}
