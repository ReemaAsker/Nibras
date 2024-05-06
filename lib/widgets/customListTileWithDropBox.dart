import 'package:flutter/material.dart';

class CutomListTileWithdrop extends StatefulWidget {
  final String title;
  final int numOfTxTf;

  const CutomListTileWithdrop({
    Key? key,
    required this.title,
    required this.numOfTxTf,
  }) : super(key: key);

  @override
  State<CutomListTileWithdrop> createState() => _CutomListTileState();
}

class _CutomListTileState extends State<CutomListTileWithdrop> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                hintText: '',
              ),
              style: TextStyle(height: 1),
            ),
          ),
          // Add some space between TextFormField and DropdownButton
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: SizedBox(
                height: 56, // Set height to match TextFormField's height
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: DropdownButton(
                      value: "القاهرة",
                      items: [
                        DropdownMenuItem(
                            child: Text("القاهرة"), value: "القاهرة"),
                        DropdownMenuItem(
                          child: Text("القدس"),
                          value: "القدس",
                        ),
                      ],
                      onChanged: (value) {},
                      icon: Padding(
                        padding: EdgeInsets.only(right: 100),
                        child: Icon(Icons.arrow_circle_down_sharp),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
