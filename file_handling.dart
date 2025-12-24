import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print("Usage: dart file_handling.dart <InputFile.csv>");
    exit(1);
  }

  final String inputFile = args.first;
  final List<String> lines = File(inputFile).readAsLinesSync();
  final Map<String, double> totalDurationByTag = {};
  lines.removeAt(0);
  for (final String line in lines) {
    final List<String> values = line.split(",");
    final String durationStr = values[3].replaceAll('"', '');
    final double duration = double.parse(durationStr);
    final String tag = values[5].replaceAll('"', '');
    final double? previousTotal = totalDurationByTag[tag];
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }
  }

  for (final MapEntry<String, double> entry in totalDurationByTag.entries) {
    final String durationFormatted = entry.value.toStringAsFixed(1);
    final String tag = (entry.key == '') ? "Unallocated" : entry.key;
    print('$tag: ${durationFormatted}h');
  }
}
