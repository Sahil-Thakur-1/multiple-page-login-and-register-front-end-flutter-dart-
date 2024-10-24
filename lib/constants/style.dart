import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var selectedDecoration = BoxDecoration(
  color: const Color.fromRGBO(213, 113, 91, 1),
  borderRadius: BorderRadius.circular(8),
);

var doneDecoration = BoxDecoration(
  color: Colors.grey.shade300,
  borderRadius: BorderRadius.circular(8),
);

var leftDecoration = BoxDecoration(
  color: Colors.white,
  border: Border(
    left: BorderSide(color: Colors.grey.shade300,width: 2),
        right: BorderSide(color: Colors.grey.shade300,width: 2),
    top: BorderSide(color: Colors.grey.shade300,width: 2),
    bottom: BorderSide(color: Colors.grey.shade300,width: 2)
  ),
  borderRadius: BorderRadius.circular(8),
);