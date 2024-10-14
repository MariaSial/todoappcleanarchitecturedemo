import 'package:flutter/material.dart';
import 'package:itec_practice_project/Constants/assets.dart';
import 'package:itec_practice_project/Constants/custom_button.dart';
import 'package:itec_practice_project/Constants/text_style_const.dart';

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
              // Constrain the height of the scrollable section
              height: MediaQuery.of(context).size.height -
                  120, // Adjust height as needed
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        textAlign: TextAlign.start,
                        "Stats",
                        style: nameText,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            textAlign: TextAlign.start,
                            "Academic year: 2024",
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(Icons.calendar_month),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 3,
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disable internal scrolling
                        children: [
                          GridViewWidget(),
                          GridViewWidget(),
                          GridViewWidget(),
                          GridViewWidget(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profile",
                            style: smallText,
                          ),
                          Text(
                            "Photos",
                            style: smallText,
                          ),
                          Text(
                            "Vedios",
                            style: smallText,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.55,
                      child: GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disable internal scrolling
                        children: [
                          GridVideoWidget(),
                          GridVideoWidget(),
                          GridVideoWidget(),
                          GridVideoWidget(),
                        ],
                      ),
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

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30, // Provide some height for the divider
      child: VerticalDivider(
        color: Colors.black,
        thickness: 1,
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Wrapping each grid item in a Padding
        Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("PPG"),
              Text("70"),
            ],
          ),
          const SizedBox(height: 8), // Space between the text and progress bar
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 4, // Height of the progress bar
                  color: const Color(0xfffe0202), // Red color
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 4, // Height of the progress bar
                  color: const Color(0xfff6f6f6), // Gray color
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GridVideoWidget extends StatelessWidget {
  const GridVideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Wrapping each grid item in a Padding
        Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              // margin: EdgeInsets.all(2),
              child: Stack(
                children: [
                  Image.asset(Assets.videoImage),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Color(0xfffe0202),
                        borderRadius: BorderRadius.circular(24)),
                    child: Text(
                      "California,USA",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 50,
                    right: 50,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.play_circle_outlined)),
                  )
                ],
              ),
            ),
            Text(
              "Max Maker",
              style: nameText,
            ),
            Text("Assistant coach")
          ],
        ),
      ),
    );
  }
}
