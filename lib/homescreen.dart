import 'package:flutter/material.dart';

import 'package:idho_varen/widgets/worker_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Trichy'),
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Find a worker',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 16),

            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _category('Cleaning'),
                  _category('Plumbing'),
                  _category('Electrician'),
                  _category('Carpenter'),
                  _category('Painter'),
                ],
              ),
            ),
            const SizedBox(height: 20),

            const Expanded(child: WorkerList()),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          spacing: 10,
          children: [
            Expanded(
              child: FilledButton(
                onPressed: () {},
                child: const Text('Need Help'),
              ),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Help Someone'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _category(String name) {
    return Padding(padding: const EdgeInsetsGeometry.only(right: 8),
    child: Chip(
      label: Text(name),
    ),
    );
  }
}
