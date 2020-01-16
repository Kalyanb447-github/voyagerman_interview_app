import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'widgets/app_bar.dart';
import 'widgets/bottom_navigation_bar.dart';

class NewsAndEventPage extends StatefulWidget {
  String text;
  String image;

  NewsAndEventPage({
    @required this.text,
    @required this.image,
  });
  @override
  _NewsAndEventPageState createState() => _NewsAndEventPageState();
}

class _NewsAndEventPageState extends State<NewsAndEventPage> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Container(
        // color: Color(0xFF1C6BB0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF0D325E),
              const Color(0xFF1C6BB0),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
          ),
        ),

        child: ListView(
          children: <Widget>[
            AppbarWidget(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 100,
              child: Image(
                image: AssetImage(widget.image),
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    widget.text,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        // color: Color(0xFF5458A7),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 50,
                  ),

                  // filter (1)
                  Image(
                    height: 20,
                    image: AssetImage('assets/filter (1).png'),
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: height / 4,
              color: Colors.red,
              child:  FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: height / 4,
              //  color: Colors.red,
              child: Image(
                // height: 20,
                image: AssetImage(
                    'assets/LIB0066-Liberty-Europe-A4-Brochure-ePDF-FINAL-5.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
         floatingActionButton: FloatingActionButton(
           backgroundColor: Color(0XFF0D325E),

        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          color: Colors.white,
        ),
      ), //
    );
  }
}
