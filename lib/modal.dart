import 'package:flutter/material.dart';
import 'package:send_data_from_modal_pop_up/container_parent.dart';

class Modal extends StatefulWidget {
  const Modal({
    super.key,
    required this.kirimanDatum,
  });

  final Function(String) kirimanDatum;

  @override
  State<Modal> createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  String? data;
  List<String> listData = ["data1", "data2"];

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('showModalBottomSheet'),
      onPressed: () {
        showModalBottomSheet<String>(
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('Modal BottomSheet'),
                    ContainerParent(
                      listData: listData,
                      kirimanDatum: (String data) {
                        widget.kirimanDatum(data);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
