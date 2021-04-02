part of 'widgets.dart';

class FoodListItem extends StatelessWidget {
  final Food food;
  final double itemWidth;

  FoodListItem({@required this.food, this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: NetworkImage(food.picturePath), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: itemWidth - 182, // image - text - rating (60 - 12 - 110)
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                food.name,
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: blackFontStyle2,
              ),
              Text(
                NumberFormat.currency(
                  decimalDigits: 0,
                  symbol: 'Rp ',
                  locale: 'id-ID',
                ).format(food.price),
                style: greyFontStyle.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
        RatingStars(food.rate)
      ],
    );
  }
}