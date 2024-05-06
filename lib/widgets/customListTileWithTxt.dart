import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CutomListTile extends StatefulWidget {
  final String title;
  final int numOfTxTf;
  final int? maxline;
  final bool? isdate;

  const CutomListTile({
    Key? key,
    required this.title,
    required this.numOfTxTf,
    this.maxline,
    this.isdate = false,
  }) : super(key: key);
  @override
  State<CutomListTile> createState() => _CutomListTileState();
}

class _CutomListTileState extends State<CutomListTile> {
  late DateTime selectedDateTime;

  @override
  void initState() {
    super.initState();
    selectedDateTime = DateTime.now();
  }

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateTime,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(selectedDateTime),
      );
      if (pickedTime != null) {
        setState(() {
          selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedDateTime =
        DateFormat('M/d/yyyy hh:mma').format(selectedDateTime);
    return ListTile(
      title: Text(
        widget.title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: List.generate(widget.numOfTxTf, (index) {
          return Expanded(
            flex: ++index,
            child: Padding(
                padding: (widget.maxline != null && index == 1)
                    ? EdgeInsets.only(left: 20.0)
                    : EdgeInsets.only(left: 8.0),
                child: widget.isdate!
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            child: Text(
                              formattedDateTime,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffffc200),
                                foregroundColor: Colors.black,
                                elevation: 3,
                              ),
                              onPressed: () => _selectDateTime(context),
                              child: Row(
                                children: [
                                  Icon(Icons.date_range),
                                  const Text(
                                    'اختر التاريخ والوقت',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                        ],
                      )
                    : TextFormField(
                        maxLines: widget.maxline,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          hintText: '',
                        ),
                        style: TextStyle(height: 1),
                      )),
          );
          const SizedBox(
            height: 20,
          );
        }),
      ),
    );
  }
}
