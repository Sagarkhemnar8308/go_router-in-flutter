import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_ex/routes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Center(child: Text("Home Screen"),
          ),
          ElevatedButton(onPressed: (){context.push(Routes.aboutus);}, child: const Text("AboRoutesut"))
        ],
      ),
    );
  }
}