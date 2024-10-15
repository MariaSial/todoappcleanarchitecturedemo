import 'package:flutter/material.dart';
import 'package:itec_practice_project/Presentation/Common/custom_button.dart';
import 'package:itec_practice_project/Presentation/Widgets/Profile/Components/nested_scroll_view_stats.dart';

import '../../../Data/DataSource/Resources/assets.dart';
import '../../../Data/DataSource/Resources/text_style_const.dart';
import 'Components/custom_divider.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            top: 5,
            child: CircleAvatar(
              minRadius: 50,
              backgroundImage: AssetImage(Assets.profile),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            top: 112,
            child: Container(
              height: MediaQuery.of(context).size.height - 120, // Adjust height
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Tristram Woods",
                        style: nameText,
                      ),
                    ),
                    Center(child: Text("California, USA")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tennis"),
                        CustomDivider(),
                        Text("Golf"),
                        CustomDivider(),
                        Text("Lacrosse"),
                        CustomDivider(),
                        Text("Football"),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          onpressed: () {},
                          text: ("Follow"),
                          backgroundColor: Color(0xfffe0202),
                          textColor: Colors.white,
                        ),
                        SizedBox(width: 20),
                        CustomButton(
                          onpressed: () {},
                          text: ("Message"),
                          backgroundColor: Color(0xfff6f6f6),
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "45",
                              style: nameText.copyWith(fontSize: 16),
                            ),
                            Text("Photos"),
                          ],
                        ),
                        CustomDivider(),
                        Column(
                          children: [
                            Text(
                              "78",
                              style: nameText.copyWith(fontSize: 16),
                            ),
                            Text("Vedios"),
                          ],
                        ),
                        CustomDivider(),
                        Column(
                          children: [
                            Text(
                              "3",
                              style: nameText.copyWith(fontSize: 16),
                            ),
                            Text("Followers"),
                          ],
                        ),
                        CustomDivider(),
                        Column(
                          children: [
                            Text(
                              "3",
                              style: nameText.copyWith(fontSize: 16),
                            ),
                            Text("Following"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),

                    // Provide a constrained height for NestedScrollViewStats
                    Container(
                      height: MediaQuery.of(context).size.height *
                          0.4, // Set height as needed
                      child: NestedScrollViewStats(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
