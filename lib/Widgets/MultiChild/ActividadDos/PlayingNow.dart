import 'package:flutter/material.dart';
import 'package:hello_world/Widgets/MultiChild/ActividadDos/PlayingNowButton.dart';

class PlayingNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/qqqqqq.png',
              width: 270,
              fit: BoxFit.fitWidth,
            ),
            Image.asset(
              'assets/images/circle-shakira.png',
              width: 200,
              height: 200,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'Enero',
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'Teko',
                    letterSpacing: 10,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  'Shakira',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Teko',
                    letterSpacing: 5,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            PlayingNowButton(
              Icons.favorite_border_outlined,
              () {},
              iconColor: Colors.blueGrey,
            ),
          ],
        ),
        Text(
          '00:04',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Teko',
            letterSpacing: 5,
            color: Colors.blueGrey,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PlayingNowButton(
              Icons.repeat_rounded,
              () {},
              iconColor: Colors.pink[100],
            ),
            PlayingNowButton(
              Icons.skip_previous_rounded,
              () {},
              iconColor: Colors.pink[100],
            ),
            PlayingNowButton(
              Icons.play_arrow_rounded,
              () {},
              backGroundColor: Colors.pink[100],
            ),
            PlayingNowButton(
              Icons.skip_next_rounded,
                  () {},
              iconColor: Colors.pink[100],
            ),
            PlayingNowButton(
              Icons.volume_up_rounded,
              () {},
              iconColor: Colors.pink[100],
            ),
          ],
        )
      ],
    );
  }

}