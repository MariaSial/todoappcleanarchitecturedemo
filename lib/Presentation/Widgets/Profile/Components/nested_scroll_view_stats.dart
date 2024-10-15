import 'package:flutter/material.dart';

import 'grid_video_widget.dart';
import 'grid_view_widget.dart';

class NestedScrollViewStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Three tabs: Profile, Photos, Videos
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // Set the height here
          child: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Profile'),
                Tab(text: 'Photos'),
                Tab(text: 'Videos'),
              ],
            ),
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              // SliverToBoxAdapter(
              //   child: Column(
              //     children: [],
              //   ),
              // ),
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
