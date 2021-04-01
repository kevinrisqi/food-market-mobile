part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              width: double.infinity,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Food Market',
                        style: blackFontStyle1,
                      ),
                      Text(
                        "Let's get some foods",
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/profile_picture.jpg"),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
            //// LIST OF FOODS
            Container(
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockFoods.map((e) => Padding(
                      padding: EdgeInsets.only(
                        left: (e == mockFoods.first) ? defaultMargin : 0,
                        right: defaultMargin
                      ),
                      child: FoodCard(e),
                    )).toList(),
                  )
                ],
              ),
            ),
            //// LIST OF FOODS (TABS)
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(children: [
                CustomtabBar(titles: ['New Taste', 'Popular', 'Recommended'])
              ],),
            )
          ],
        )
      ],
    );
  }
}
