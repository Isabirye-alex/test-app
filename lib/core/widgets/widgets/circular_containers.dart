import 'package:flutter/material.dart';

class CircularContainers extends StatelessWidget {
  const CircularContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.grey.shade300,
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image.asset(
                      'assets/images/Flash Disks.jpg',
                      width: 60,
                      height: 60,
                      repeat: ImageRepeat.noRepeat,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text('Flash'),
            ],
          );
        },
      ),
    );
  }
}
