import 'package:flutter/services.dart';

import 'package:csv/csv.dart';
import 'package:idho_varen/data/worker.dart';

Future<List<Worker>> readWorkerData() async {
  final csvData = await rootBundle.loadString('assets/data/worker_data.csv');

  final List<List<dynamic>> workerRawData = csv.decode(csvData);

  final List<Worker> workerData = [];

  for (int i = 1; i < workerRawData.length; i++) {
    final row = workerRawData[i];
    workerData.add(
      Worker(
        name: row[0].toString(),
        job: row[1].toString(),
        rating: double.parse(row[2].toString()),
        distance: row[3].toString(),
        price: row[4].toString(),
      ),
    );
  }
  return workerData;
}
