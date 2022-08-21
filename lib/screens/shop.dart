import 'package:flutter/material.dart';

import 'result.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/shirt.png"),
            Text(
              "Price: 50\$",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.green,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: counter <= 1
                      ? null
                      : () {
                          setState(() {
                            counter--;
                          });
                        },
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(counter.toString()),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      ++counter;
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ResultScreen(isSuccess: true),
                ));
              },
              child: Text("Continue with ${counter * 50} \$"),
            ),
          ],
        ),
      ),
    );
  }
}
