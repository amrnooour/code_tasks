import 'package:code_tasks/features/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPhoto extends StatefulWidget {
  ColorFilter? colorFilter;
  SvgPhoto({super.key});

  @override
  State<SvgPhoto> createState() => _SvgPhotoState();
}

class _SvgPhotoState extends State<SvgPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Center(
            child: SizedBox(
              height: 400,
              width: 400,
              child: SvgPicture.asset(
                  colorFilter: widget.colorFilter, "assets/images4.svg"),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                color: Colors.blue,
                onTap: () {
                  widget.colorFilter =
                      ColorFilter.mode(Colors.blue.withOpacity(.9), BlendMode.srcIn);
                      setState(() {
                      });
                },
              ),
              CustomContainer(color: Colors.green,
              onTap: () {
                  widget.colorFilter =
                      const ColorFilter.mode(Colors.green, BlendMode.srcIn);
                      setState(() {
                      });
                },),
              CustomContainer(color: Colors.yellow,
              onTap: () {
                  widget.colorFilter =
                      const ColorFilter.mode(Colors.yellow, BlendMode.srcIn);
                      setState(() {
                      });
                },),
            ],
          )
        ],
      ),
    );
  }
}
