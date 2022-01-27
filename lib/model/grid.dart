import 'package:flutter/material.dart';

class ModelGrid {
  final String title;
  final String subtitle;

  final String logo_path;
  final String image_path;
  final List? path;

  ModelGrid({
    required this.title,
    required this.subtitle,
    required this.logo_path,
    required this.image_path,
    this.path,
  });
}
