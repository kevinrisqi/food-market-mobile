part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

  GeneralPage(
      {this.title = "Title",
      this.subtitle = "Subtitle",
      this.onBackButtonPressed,
      this.child,
      this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white),
          SafeArea(
            child: Container(
              color: backColor ?? Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Row(
                        children: [
                          onBackButtonPressed != null
                              ? GestureDetector(
                                  onTap: () {
                                    if (onBackButtonPressed != null) {
                                      onBackButtonPressed();
                                    }
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 26),
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/back_arrow.png"),
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: GoogleFonts.poppins(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                subtitle,
                                style: GoogleFonts.poppins(
                                    color: greyColor,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: defaultMargin,
                      color: "FAFAFC".toColor(),
                    ),
                    child ?? SizedBox()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
