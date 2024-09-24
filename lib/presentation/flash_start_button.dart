import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';

class FlashStartButton extends StatelessWidget {
  const FlashStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //можно запустить также после выполнения какого-то future через .then
        context.showFlash(
          duration: const Duration(seconds: 2),
          builder: (context, controller) {
            return FlashBar(
              controller: controller,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              position: FlashPosition.top,
              //dismissDirections: const [FlashDismissDirection.startToEnd],
              content: Padding(
                padding: const EdgeInsets.only(top: 56),
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(1, 1),
                          blurRadius: 12,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.done,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text('Герой добавлен в избранное!'),
                        const Spacer(),
                        GestureDetector(
                          child: const Icon(
                            Icons.close,
                            color: Colors.grey,
                            size: 20,
                          ),
                          onTap: () async => controller.dismiss(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      child: const Text('Оповещение'),
    );
  }
}
