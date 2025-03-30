// ignore_for_file: file_names

import 'package:flutter/material.dart';

planetChangerButtonsBuilder(
        {required bool arrowIsRight, required VoidCallback logicOfButton}) =>
    ElevatedButton(
        onPressed: logicOfButton,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(50, 50),
          backgroundColor: Colors.red,
          shape: CircleBorder(
            side: BorderSide(color: Colors.red),
          ),
        ),
        child: Center(
          child: Icon(
            arrowIsRight
                ? Icons.arrow_forward_rounded
                : Icons.arrow_back_rounded,
            size: 28,
            color: Colors.white,
          ),
        ));
