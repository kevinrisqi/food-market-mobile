part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 230,
              margin: EdgeInsets.only(bottom: defaultMargin),
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    margin: EdgeInsets.only(top: 26),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/photo_border.png')),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/profile_picture.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Kevin Risqi Ramadhani', style: blackFontStyle1),
                  SizedBox(
                    height: 6,
                  ),
                  Text('kevinrisqi22@gmail.com', style: greyFontStyle),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomtabBar(
                    titles: ['Account', 'FoodMarket'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        defaultMargin, 0, defaultMargin, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('Edit Profile', style: blackFontStyle2),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/right_arrow.png')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        defaultMargin, 0, defaultMargin, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('Home Address', style: blackFontStyle2),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/right_arrow.png')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        defaultMargin, 0, defaultMargin, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('Security', style: blackFontStyle2),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/right_arrow.png')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        defaultMargin, 0, defaultMargin, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('Payments', style: blackFontStyle2),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/right_arrow.png')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
