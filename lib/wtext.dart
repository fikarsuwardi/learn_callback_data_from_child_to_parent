import 'package:flutter/material.dart';

class Wtext extends StatelessWidget {
  const Wtext({
    super.key,
    required this.datum,
    required this.kirimanDatum,
  });

  final String datum;
  final Function(String) kirimanDatum;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        kirimanDatum(datum);
      },
      child: Container(
        child: Text(datum),
      ),
    );
  }
}
