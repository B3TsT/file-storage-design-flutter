import 'package:flutter/material.dart';

import '../../common/common.dart';

class AppTheme {
  static ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Pallete.blueColor,
      ).copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
        textTheme: textTheme(),
        brightness: Brightness.light,
      );

  static TextTheme textTheme() => const TextTheme().copyWith(
        // Encabezado 1
        displayLarge: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
          color: Pallete.blackColor,
        ),
        // Encabezado 2
        displayMedium: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
          color: Pallete.blackColor,
        ),
        // Encabezado 3
        displaySmall: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Pallete.blackColor,
        ),
        // Encabezado 4
        headlineMedium: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Pallete.blackColor,
        ),
        // Encabezado 5
        headlineSmall: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Pallete.blackColor,
        ),
        // Encabezado 6
        titleLarge: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Pallete.blackColor,
        ),
        // Cuerpo de texto
        bodyLarge: const TextStyle(
          fontSize: 16,
          color: Pallete.blackColor,
        ),
        // Cuerpo de texto alternativo
        bodyMedium: const TextStyle(
          fontSize: 14,
          color: Pallete.blackColor,
        ),
        // Estilo de texto para botones
        labelLarge: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Pallete.blackColor,
        ),
        // Estilo de texto para subtítulos
        titleMedium: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Pallete.blackColor,
        ),
        // Estilo de texto para subtítulos alternativos
        titleSmall: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Pallete.blackColor,
        ),
        // Estilo de texto para texto deshabilitado
        bodySmall: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      );
}
