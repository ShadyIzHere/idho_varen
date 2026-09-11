import 'package:flutter/material.dart';
import 'package:idho_varen/data/worker.dart';


class WorkerCard extends StatelessWidget {
  final Worker worker;

  const WorkerCard({
    super.key,
    required this.worker
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            const CircleAvatar(radius: 28, child: Icon(Icons.person)),
            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    worker.name,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(worker.job),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.star_border_outlined),
                      Text("${worker.rating}"),
                      Text("\t\t${worker.distance} km")
                    ],
                  ),
                ],
              ),
            ),
            Text('₹${worker.price}', style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
