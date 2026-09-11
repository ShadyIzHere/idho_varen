import 'package:flutter/material.dart';
import 'package:idho_varen/widgets/worker_card.dart';
import 'package:idho_varen/data/worker_data.dart';
import 'package:idho_varen/data/worker.dart';

class WorkerList extends StatefulWidget {
  const WorkerList({super.key});

  @override
  State<WorkerList> createState() => _WorkerListState();
}

class _WorkerListState extends State<WorkerList> {
  List<Worker> workers = [];

  @override
  void initState() {
    super.initState();
    loadWorkers();
  }

  Future<void> loadWorkers() async {
    final data = await readWorkerData();

    setState(() {
      workers = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: workers.length,
      itemBuilder: (context, index) {
        return WorkerCard(
          worker: workers[index],
        );
      },
    );
  }
}
