import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Backend/scroll_offset.dart';
import '../../../animations/text_reveal.dart';
import '../../common widgets/buttons/button1.dart';
import '../../common widgets/texts/poppins_regular.dart';
import '../../common widgets/texts/poppins_semibold.dart';

class ThirdPhaseWebScreen extends StatefulWidget {
  const ThirdPhaseWebScreen({super.key});

  @override
  State<ThirdPhaseWebScreen> createState() => _ThirdPhaseWebScreenState();
}

class _ThirdPhaseWebScreenState extends State<ThirdPhaseWebScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> textRevealAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
      reverseDuration: const Duration(milliseconds: 375),
    );

    textRevealAnimation =
        Tween<double>(begin: 200.0, end: 0.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(0.0, 0.4, curve: Curves.easeIn),
    ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayOffset, Scrolloffset>(builder: (context, state) {
      if (state.scrollOffsetValue > 1440) {
        controller.forward();
      } else {
        controller.reverse();
      }
      return SizedBox(
        height: 606,
        child: Row(
          children: [
            TextReveal(
              maxHeigt: 606,
              controller: controller,
              textRevealAnimation: textRevealAnimation,
              child: SizedBox(
                height: 606,
                width: 574,
                child: Image.network(
                  'https://images.unsplash.com/photo-1604478579007-70de3dee20cb?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: 550,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextReveal(
                    maxHeigt: 80,
                    controller: controller,
                    child: PoppinSemiBold(
                      text:
                          'Introducing Swastik Pattern,  venture under the esteemed Pawar Wood Carving brand. ',
                      fontsize: 24,
                    ),
                  ),
                  SizedBox(height: 32),
                  TextReveal(
                    maxHeigt: 80,
                    controller: controller,
                    child: PoppinsRegular(
                      text:
                          'Derived from the Hellenic term denoting "timber" or "wooded area," Silva, a proud member of the Pawar Consortium, symbolizes the core of the natural world.',
                      fontsize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextReveal(
                    maxHeigt: 80,
                    controller: controller,
                    child: PoppinsRegular(
                      text:
                          'We excel in shaping high-quality, prefabricated enclosures engineered to synchronize seamlessly with your residence. Our assortment of offerings is adaptable, guaranteeing an ideal match for your area and specifications.',
                      fontsize: 20,
                    ),
                  ),
                  SizedBox(height: 50),
                  Button1()
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}

/*SizedBox(
      height: 606,
      child: Row(
        children: [
          Container(
            height: 606,
            width: 574,
            color: Colors.pink,
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: 550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  color: Colors.pink,
                  child: TextReveal(
                    maxHeigt: 100,
                    controller: controller,
                    child: PoppinSemiBold(
                      text:
                          'Introducing Swastik Pattern,  venture under the esteemed Pawar Wood Carving brand. ',
                      fontsize: 24,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                PoppinsRegular(
                  text:
                      'Derived from the Hellenic term denoting "timber" or "wooded area," Silva, a proud member of the Pawar Consortium, symbolizes the core of the natural world.',
                  fontsize: 20,
                ),
                SizedBox(height: 20),
                PoppinsRegular(
                  text:
                      'We excel in shaping high-quality, prefabricated enclosures engineered to synchronize seamlessly with your residence. Our assortment of offerings is adaptable, guaranteeing an ideal match for your area and specifications.',
                  fontsize: 20,
                ),
                SizedBox(height: 50),
                Button1()
              ],
            ),
          )
        ],
      ),
    );*/
