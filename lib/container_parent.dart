import 'package:flutter/material.dart';
import 'package:send_data_from_modal_pop_up/wtext.dart';

class ContainerParent extends StatefulWidget {
  const ContainerParent({
    super.key,
    required this.listData,
    required this.kirimanDatum,
  });

  final List<String> listData;
  final Function(String) kirimanDatum;

  @override
  State<ContainerParent> createState() => _ContainerParentState();
}

class _ContainerParentState extends State<ContainerParent> {
  String? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          for (String datum in widget.listData)
            Wtext(
              datum: datum,
              kirimanDatum: (String data) {
                widget.kirimanDatum(data);
              },
            ),
        ],
      ),
    );
  }
}
