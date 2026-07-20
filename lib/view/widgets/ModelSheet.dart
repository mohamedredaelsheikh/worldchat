import 'package:flutter/material.dart';

GlopalbottomSheet({required BuildContext context, Screan,isscrollable=false,opecite=1})
{
  showModalBottomSheet(backgroundColor: Colors.transparent,isScrollControlled: isscrollable, barrierColor:Colors.black.withAlpha(1), shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30), )),
    context: context,
    builder: (context) {
      return Screan;
    },
  );
}GlopalbottomSheet2({required BuildContext context, Screan,isscrollable=false })
{
  showModalBottomSheet(backgroundColor: Colors.transparent,isScrollControlled: isscrollable,   shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30), )),
    context: context,
    builder: (context) {
      return Screan;
    },
  );
}