import 'package:flutter/material.dart';

  InputDecoration buildInputDecoration({required String label,required String hintText}) {
    return InputDecoration(
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  213, 150, 37, 170))),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  213, 150, 37, 170))),
                                      labelText:label,
                                      hintText:hintText);
  }
