import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/widgets/grid_cards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(
            top: SizeUtils.height * 0.06,
            left: SizeUtils.width * 0.02,
            right: SizeUtils.width * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.profileScreen);
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://t3.ftcdn.net/jpg/07/24/59/76/360_F_724597608_pmo5BsVumFcFyHJKlASG2Y2KpkkfiYUU.webp"),
                  ),
                ),
                SizedBox(
                  // width: 10,
                  width: SizeUtils.width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome, Paul Walker",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      // height: 5,
                      height: SizeUtils.height * 0.005,
                    ),
                    Text(
                      "Chief Executive Officer",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.homeSearch);
                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                SizedBox(
                  // width: 15,
                  width: SizeUtils.width * 0.03,
                ),
                Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
            SizedBox(
              // height: 20,
              height: SizeUtils.height * 0.03,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeUtils.width * .05,
                          vertical: SizeUtils.width * .04),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFFFB300)),
                          color: Color(
                            0xFF2A2A2A,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Meeting",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Spacer(),
                              Text(
                                "20/12/2024  - ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                "10.00 AM",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(
                            // height: 10,
                            height: SizeUtils.height * 0.01,
                          ),
                          Row(
                            children: [
                              Text(
                                "At the company",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Colors.orange.shade400,
                                radius: 14,
                                child: Icon(
                                  Icons.arrow_outward,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      // height: 20,
                      height: SizeUtils.height * 0.03,
                    ),
                    //batch details
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.courseDetails);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeUtils.width * .05,
                            vertical: SizeUtils.height * .01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Course Batch Details",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade700,
                              radius: 14,
                              child: Icon(
                                Icons.arrow_outward,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFB300),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      // height: 20,
                      height: SizeUtils.height * 0.03,
                    ),
                    Text(
                      "Choose Company",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      // height: 15,
                      height: SizeUtils.height * 0.02,
                    ),
                    GridView.builder(
                      itemCount: 4,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1,
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          // mainAxisExtent: 200,
                          mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.companyProfile);
                          },
                          //custom widget

                          child: GridCards(
                              title: "Company Name",
                              url: Assets.png.company.path,
                              subtitle: "Type of Company"),
                        );
                      },
                    ),
                    SizedBox(
                      // height: 15,
                      height: SizeUtils.height * 0.02,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.companyList);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeUtils.width * 0.02,
                              vertical: SizeUtils.height * 0.008),
                          child: Text(
                            "View more",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFB300),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    SizedBox(
                      // height: 20,
                      height: SizeUtils.height * 0.03,
                    ),
                    CarouselSlider(
                      items: List.generate(
                        4,
                        (index) {
                          return Container(
                            // height: 226,
                            width: SizeUtils.width * 0.9,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/png/image.png")),
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10)),
                          );
                        },
                      ),
                      carouselController: _controller,
                      options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2,
                          viewportFraction: 1.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                    SizedBox(
                      // height: 15,
                      height: SizeUtils.height * 0.02,
                    ),
                    Center(
                      child: AnimatedSmoothIndicator(
                        activeIndex: _current,
                        count:
                            4, // Update this to match the number of items in the carousel
                        effect: ExpandingDotsEffect(
                          activeDotColor: Colors.orange,
                          dotColor: Colors.grey,
                          dotHeight: 8,
                          dotWidth: 8,
                          expansionFactor:
                              3, // Controls how much the dot expands
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
