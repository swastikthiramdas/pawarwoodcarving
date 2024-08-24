import 'package:feather_icons_svg/feather_icons_svg.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/my_data.dart';
import '../common widgets/texts/poppins_light.dart';
import '../common widgets/texts/poppins_regular.dart';

class AboutUsMobileScreen extends StatefulWidget {
  AboutUsMobileScreen({super.key, this.index});
  final int? index;
  @override
  State<AboutUsMobileScreen> createState() => _AboutUsMobileScreenState();
}

class _AboutUsMobileScreenState extends State<AboutUsMobileScreen> {
  // List to track the selected state of each chip
  late List<bool> isSelectedList;
  late int val;

  @override
  void initState() {
    super.initState();
    val = widget.index ?? 0;
    // Initialize isSelectedList with the first item selected
    isSelectedList = List.generate(AboutUsData.length, (index) => widget.index != null ? index == widget.index: index == 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        title: SizedBox(
          width: 120,
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: FeatherIcon(
              FeatherIcons.menu,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 350,
              width: 300,
              child: Image.asset('assets/images/tree.png' , fit: BoxFit.contain,filterQuality: FilterQuality.high,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  height: 60,
                  child: ListView.builder(
                    itemCount: AboutUsData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 60,
                        margin: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          visualDensity: const VisualDensity(vertical: 4),
                          backgroundColor: brown,
                          // materialTapTargetSize: MaterialTapTargetSize.padded,
                          selectedColor: const Color(0xFF823C13),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                50.0), // Adjust the value for desired corner radius
                          ),
                          elevation: 0,
                          label: PoppinsLight(
                            text: AboutUsData[index][0],
                            color: Colors.white,
                          ),
                          selected: isSelectedList[index],
                          onSelected: (val) {
                            // Update the selected state and rebuild the widget
                            setState(() {
                              if (isSelectedList[index]) {
                                // If the same chip is selected again, do nothing
                                return;
                              }

                              // Clear the selection and set the current chip as selected
                              isSelectedList = List.generate(
                                  AboutUsData.length, (i) => i == index);
                              this.val = index;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                  child: PoppinsRegular(
                    text: AboutUsData[val][0],
                    fontsize: 35,
                    letterSpacing: -.4,
                  ),
                ),
                PoppinsRegular(
                  text: AboutUsData[val][1],
                  fontsize: 20,
                  letterSpacing: -.4,
                  color: ligthtext,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
