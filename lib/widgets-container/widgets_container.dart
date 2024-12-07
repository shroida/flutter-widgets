import 'package:flutter/material.dart';
import 'package:flutter_widgets/App%20Router/app_router.dart';
import 'package:go_router/go_router.dart';

class WidgetsContainer extends StatelessWidget {
  const WidgetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        width: double.maxFinite,
        height: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
          child: SingleChildScrollView(
            child: Wrap(
              spacing: 30.0,
              runSpacing: 50.0,
              children: [
                // Container 1
                GestureDetector(
                  onTap: ()=>GoRouter.of(context).push(AppRouter.firstCard),
                  child: Container(
                    width: (MediaQuery.of(context).size.width / 2) -
                        50, // Half screen width
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    color: Colors.blue,
                    child: const Text(
                      'First Card Widgets',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                ),
                // Container 2
                Container(
                  width: (MediaQuery.of(context).size.width / 2) - 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  color: Colors.green,
                  child: const Text(
                    'SHROIDA 2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
                // Container 3
                Container(
                  width: (MediaQuery.of(context).size.width / 2) - 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  color: Colors.red,
                  child: const Text(
                    'SHROIDA 3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
                // Container 4
                Container(
                  width: (MediaQuery.of(context).size.width / 2) - 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  color: Colors.orange,
                  child: const Text(
                    'SHROIDA 4',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
