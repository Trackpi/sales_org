import 'package:flutter/material.dart';
import 'package:sales_org/gen/assets.gen.dart';
import 'package:sales_org/routes/app_routes.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,

        centerTitle: true,
        title: Text(
          "Companies",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        //notifications icon
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  //voice search
                  Icon(
                    Icons.mic,
                    color: Colors.white,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Choose Company",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            //list of companies
            Expanded(
              child: GridView.builder(
                itemCount: 15,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 180,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.companyProfile);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      height: 170,
                      width: 171,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 5, top: 5),
                            alignment: Alignment.topRight,
                            height: 112,
                            width: 178,
                            //save button
                            child: Icon(
                              Icons.bookmark_outline,
                              color: Color(0xFFFCB205),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    Assets.png.company.path,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Company Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Type of company",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF2A2A2A),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//for arjun
