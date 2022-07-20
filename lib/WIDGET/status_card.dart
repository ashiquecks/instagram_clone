import 'package:flutter/material.dart';
import 'package:instagram/const.dart';

class StatusCard extends StatelessWidget {
  final bool ownAccount;
  final String label;
  final String avatar;

  const StatusCard(
      {required this.ownAccount, required this.label, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                gradient: ownAccount
                    ? const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                        ],
                      )
                    : const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.orange,
                          Colors.purple,
                        ],
                      ),
                shape: BoxShape.circle,
              ),
              // white and border container
              child: Stack(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.all(3),
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.white),
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    // image container
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(avatar),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  ownAccount ? addCircle() : const SizedBox(),
                ],
              ),
            ),
          ],
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
