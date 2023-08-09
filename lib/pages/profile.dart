import 'package:flutter/material.dart';
import 'package:portfolio2/themes.dart';

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
        Text("hi 🖖, I'm Krishaay",
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
        Text("Website is cooking 🍳",
            style: kEpilogueTextStyle(context)
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 20,
        ),

        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/let_him_cook.gif',
              fit: BoxFit.cover,
            )),
        const PageEndSpacer()
      ]),
    );
  }
}
