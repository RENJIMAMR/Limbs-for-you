import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ShortDesContainerCard extends StatelessWidget {
  const ShortDesContainerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 150,
        decoration: BoxDecoration(
          color: Palette.whiteMain.withOpacity(.4),
          borderRadius: BorderRadiusDirectional.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Palette.whiteMain,
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                // Added Expanded to constrain the column
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Align to the start of the column
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Distribute space evenly
                    children: [
                      const Text(
                        'Title',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'des sdfghjklkjhcvbnmasdfghjkjhgfhjhgfdsdfghjkjhgfdfghgfghgffhgfghgfgf',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16, // Reduced font size for better fit
                          ),
                        ),
                      ),
                      const Text(
                        '₹ Price',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
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
