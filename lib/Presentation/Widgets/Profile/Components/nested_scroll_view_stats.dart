import 'package:flutter/material.dart';

import 'grid_video_widget.dart';
import 'grid_view_widget.dart';

class NestedScrollViewStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Three tabs: Profile, Photos, Videos
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight:
                    300.0, // Adjusted height to make space for content
                floating: false,
                pinned: false, // Keep the app bar pinned when scrolling
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Stats",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Academic year: 2024",
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.start,
                            ),
                            Icon(Icons.calendar_month),
                          ],
                        ),
                      ),
                      // Wrapping the GridView in a flexible container
                      Flexible(
                        child: Container(
                          // height: MediaQuery.of(context).size.height * 0.23,
                          child: GridView.count(
                            crossAxisCount: 2,
                            childAspectRatio: 3,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              GridViewWidget(),
                              GridViewWidget(),
                              GridViewWidget(),
                              GridViewWidget(),
                              GridViewWidget(),
                              GridViewWidget(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'Profile'),
                    Tab(text: 'Photos'),
                    Tab(text: 'Videos'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              // Tab 1: Profile content
              SingleChildScrollView(
                child: Column(
                  children: [
                    // Provide a fixed height to GridView
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          GridViewWidget(),
                          GridViewWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Tab 2: Photos content
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.68,
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 0.8,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      GridVideoWidget(),
                      GridVideoWidget(),
                      GridVideoWidget(),
                      GridVideoWidget(),
                    ],
                  ),
                ),
              ),

              // Tab 3: Videos content
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.68,
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 0.8,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      GridVideoWidget(),
                      GridVideoWidget(),
                      GridVideoWidget(),
                      GridVideoWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
