import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropDownMultiSelect extends StatefulWidget {
  final Function(List<String>) selectedList;
  final List<String?> listOFStrings;
  final List<String>? selectedListOFStrings;

  const CustomDropDownMultiSelect(
      {super.key,
      required this.selectedList,
      required this.listOFStrings,
      this.selectedListOFStrings});

  @override
  createState() {
    return _CustomDropDownMultiSelectState();
  }
}

class _CustomDropDownMultiSelectState extends State<CustomDropDownMultiSelect> {
  List<String> listOFSelectedItem = [];
  String selectedText = "";

  @override
  void initState() {
    listOFSelectedItem = widget.selectedListOFStrings!.map((e) => e).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.textInputBorderColor),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ExpansionTile(
        iconColor: AppColors.textDarkGreyColor,
        title: Text(
          listOFSelectedItem.isEmpty
              ? " يرجي الختيار المناسبه "
              : listOFSelectedItem.join(', '),
          style: Get.textTheme.bodySmall,
        ),
        childrenPadding: const EdgeInsets.all(0),
        children: <Widget>[
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.listOFStrings.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 8.0),
                child: _ViewItem(
                  item: widget.listOFStrings[index] ?? '',
                  selected: (val) {
                    selectedText = val;
                    if (listOFSelectedItem.contains(val)) {
                      listOFSelectedItem.remove(val);
                    } else {
                      listOFSelectedItem.add(val);
                    }
                    widget.selectedList(listOFSelectedItem);
                    setState(() {});
                  },
                  itemSelected: listOFSelectedItem.contains(
                        widget.listOFStrings[index],
                      ) ||
                      (widget.selectedListOFStrings != null &&
                          widget.selectedListOFStrings!
                              .contains(widget.listOFStrings[index])),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ViewItem extends StatelessWidget {
  final String item;
  final bool itemSelected;
  final Function(String) selected;

  const _ViewItem(
      {required this.item, required this.itemSelected, required this.selected});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.only(left: size.width * .032, right: size.width * .098),
      child: Row(
        children: [
          SizedBox(
            height: 24.0,
            width: 24.0,
            child: GestureDetector(
              onTap: () {
                selected(item);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: itemSelected
                      ? AppColors.primaryColor
                      : Colors.transparent,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: AppColors.primaryColor,
                    width: 2.0,
                  ),
                ),
                child: itemSelected
                    ? Center(
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    : null,
              ),
            ),
          ),
          SizedBox(
            width: size.width * .025,
          ),
          Text(
            item,
            style: Get.textTheme.bodySmall,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
