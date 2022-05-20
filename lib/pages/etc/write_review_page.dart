import 'package:database_project/pages/main_tab_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:database_project/config/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class WriteReviewPage extends StatefulWidget {
  static const url = "/write-review";

  @override
  State<WriteReviewPage> createState() => _WriteReviewPageState();
}

class _WriteReviewPageState extends State<WriteReviewPage> {
  String imgUrl1 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8NG8tRjukxvrSbGk2CfWU_aw9yUjpnFqbAoORbc7lZityM2nl';
  String imgUrl2 =
      'https://img.buzzfeed.com/buzzfeed-static/static/2021-07/26/14/campaign_images/4151cddab035/scarlett-johansson-said-she-was-bummed-when-she-w-2-13744-1627310955-9_dblbig.jpg';
  String imgUrl3 =
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRQp4lhDaU5euiz73rltdxnoREBGhyvYIBp0LrESI09k9cLLmkB';
  String imgUrl4 =
      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSZ6TeDFGGXiuKR36W9VBw93YeRuOf_-eaDmfqJ1InJONlGKnqV';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back)),
        title: Text('REVIEW'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Text(
              'How was your member?',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    fontSize: 20,
                color: Theme.of(context).primaryColor
                  ),
            ),
          ),
          _buildListTile(imgUrl1, 'Michel'),
          _buildListTile(imgUrl2, "Minsu"),
          _buildListTile(imgUrl3,  "Young Chan"),
          const SizedBox(height: 10),
          _buildLoginBtn(),
        ],
      ),
    );
  }

  Widget _buildListTile(String image, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(image)),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text(name,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    RatingBar.builder(
                      itemSize: 25,
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        // size: 20000,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5, bottom: 25),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 14.0),
                  hintText: 'Write Comment..',
                  hintStyle: kHintTextStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => Get.offAllNamed(MainTapPage.url),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color(0xFFE66A73),
        child: Text(
          'Write',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}
