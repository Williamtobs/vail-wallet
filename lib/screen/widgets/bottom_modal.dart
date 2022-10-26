import 'package:flutter/material.dart';

class BottomSheets{
  static void showBottomSheet({required BuildContext context, required Widget child}){
    showModalBottomSheet(
        context: context,
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            child
          ],
        ),
        isScrollControlled: true,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ));
  }
}

//var bottomSheet = showBottomSheet(context: context, builder: builder);