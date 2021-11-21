import 'package:destini_challenge_starting/story_brain.dart';
import 'package:flutter/material.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
//
//
        //background image addition

        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover),
        ),

        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
//
              //story event discussion area

              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
//
              //choice 1 button properties

              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      nextstory(1);
                    });
//
                    //Choice 1 made by user.
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(
                    storyBrain.getChoice1(),
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
//
              SizedBox(
                height: 20.0,
              ),
//
              //choice 2 button properties

              Expanded(
                flex: 2,
                //setting visibility and onpressed function
                child: Visibility(
                  visible: buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        nextstory(2);
                      });
//
                      //Choice 2 made by user.
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text(
                      storyBrain.getChoice2(),
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
//
//
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
