import 'package:flutter/material.dart';
import 'package:portfolio2/themes.dart';
import 'package:stroke_text/stroke_text.dart';

import '../components/end_spacer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 100,
        ),
        Text("hi 👋, I'm Krishaay",
            style: kEpilogueTextStyle(context)
                .copyWith(fontSize: 40, fontWeight: FontWeight.bold)),
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Text(
        //         "founder @ ",
        //         style: kEpilogueTextStyle(context, opacity: 0.5)
        //             .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
        //       ),
        //       Container(
        //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        //         decoration: BoxDecoration(
        //             color: Colors.blueGrey.withOpacity(1),
        //             borderRadius: BorderRadius.circular(5)),
        //         child: Text(
        //           "gradium",
        //           style: kEpilogueTextStyle(context)
        //               .copyWith(fontSize: 24, color: Colors.white),
        //         ),
        //       ),
        //       const SizedBox(
        //         width: 10,
        //       ),
        //       Text(
        //         "dev lead @ ",
        //         style: kEpilogueTextStyle(context, opacity: 0.5)
        //             .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
        //       ),
        //       MouseRegion(
        //         cursor: SystemMouseCursors.click,
        //         child: Container(
        //           padding:
        //               const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        //           decoration: BoxDecoration(
        //               gradient: const LinearGradient(
        //                   colors: [Color(0xFF585DFF), Color(0xffF157FF)]),
        //               borderRadius: BorderRadius.circular(5)),
        //           child: Text(
        //             "classify",
        //             style: kEpilogueTextStyle(context)
        //                 .copyWith(fontSize: 24, color: Colors.white),
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        //   const SizedBox(
        //     height: 20,
        //   ),
        const SizedBox(
          height: 20,
        ),
        // Text("Website is cooking 🍳",
        //     style: kEpilogueTextStyle(context)
        //         .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StrokeText(
          text: "I'm a ",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.white.withOpacity(0),
          strokeWidth: 1.5,
        ),
        StrokeText(
          text: "Content Creator",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.redAccent,
          strokeWidth: 1.5,
        ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StrokeText(
          text: "I'm a ",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.white.withOpacity(0),
          strokeWidth: 1.5,
        ),
        StrokeText(
          text: "Full Stack Dev",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.yellowAccent,
          strokeWidth: 1.5,
        ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StrokeText(
          text: "I'm a ",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.white.withOpacity(0),
          strokeWidth: 1.5,
        ),
        StrokeText(
          text: "UI/UX Designer",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.tealAccent,
          strokeWidth: 1.5,
        ),
          ],
        ),
        SizedBox(height: 15,),
        Text.rich(
          TextSpan(
            style: kEpilogueTextStyle(context)
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            children: <TextSpan>[
           
             
    
              TextSpan(
                text: '\n',
                children: [
                  TextSpan(
                    text: "I'm a ",
                    style: kEpilogueTextStyle(context).copyWith(fontSize: 40)
                  ),
                  TextSpan(
                    text: "Founder",
                    style: kEpilogueTextStyle(context)
                        .copyWith(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.greenAccent,decoration: TextDecoration.underline),
                  ),
                ]
              ),
              TextSpan(
                text: '\n',
                children: [
                  TextSpan(
                    text: "I'm a ",
                    style: kEpilogueTextStyle(context).copyWith(color: Colors.amber.withOpacity(0),fontSize: 40)
                  ),
                  TextSpan(
                    text: "AI/ML Engineer",
                    style: kEpilogueTextStyle(context)
                        .copyWith(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.orangeAccent.withOpacity(0)),
                  ),
                ]
              ),
            ],
          ),
        ),

        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StrokeText(
          text: "I'm a ",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.white.withOpacity(0),
          strokeWidth: 1.5,
        ),
        StrokeText(
          text: "AI/ML Engineer",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.orangeAccent,
          strokeWidth: 1.5,
        ),
          ],
        ),
                       SizedBox(height: 10,),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StrokeText(
          text: "I'm a ",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.white.withOpacity(0),
          strokeWidth: 1.5,
        ),
        StrokeText(
          text: "Web3 Developer",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.blueGrey.shade300,
          strokeWidth: 1.5,
        ),
          ],
        ),
               SizedBox(height: 10,),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StrokeText(
          text: "I'm a ",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.white.withOpacity(0),
          strokeWidth: 1.5,
        ),
        StrokeText(
          text: "Mobile App Dev",
          textStyle: kEpilogueTextStyle(context,opacity: 0.0).copyWith(fontSize: 40),
          strokeColor: Colors.blue.shade300,
          strokeWidth: 1.5,
        ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),

        // ClipRRect(
        //     borderRadius: BorderRadius.circular(20),
        //     child: Image.asset(
        //       'assets/let_him_cook.gif',
        //       fit: BoxFit.cover,
        //     )),
        const PageEndSpacer()
      ]),
    );
  }
}
