import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278213934),
      surfaceTint: Color(4278218039),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278224453),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282345289),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291162827),
      onSecondaryContainer: Color(4281029430),
      tertiary: Color(4280175019),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283068370),
      onTertiaryContainer: Color(4294967295),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294310898),
      onSurface: Color(4279704856),
      onSurfaceVariant: Color(4282272319),
      outline: Color(4285430382),
      outlineVariant: Color(4290628284),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086508),
      inversePrimary: Color(4285390223),
      primaryFixed: Color(4287232681),
      onPrimaryFixed: Color(4278198540),
      primaryFixedDim: Color(4285390223),
      onPrimaryFixedVariant: Color(4278211112),
      secondaryFixed: Color(4290899655),
      onSecondaryFixed: Color(4278198540),
      secondaryFixedDim: Color(4289057196),
      onSecondaryFixedVariant: Color(4280766258),
      tertiaryFixed: Color(4292600319),
      onTertiaryFixed: Color(4278196043),
      tertiaryFixedDim: Color(4290037247),
      onTertiaryFixedVariant: Color(4279058337),
      surfaceDim: Color(4292271315),
      surfaceBright: Color(4294310898),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916140),
      surfaceContainer: Color(4293521638),
      surfaceContainerHigh: Color(4293192417),
      surfaceContainerHighest: Color(4292797659),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278210085),
      surfaceTint: Color(4278218039),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278224453),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280503087),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283792990),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278401949),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283068370),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310898),
      onSurface: Color(4279704856),
      onSurfaceVariant: Color(4282009147),
      outline: Color(4283851351),
      outlineVariant: Color(4285693554),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086508),
      inversePrimary: Color(4285390223),
      primaryFixed: Color(4278224453),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278217269),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283792990),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282213702),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283133906),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281226936),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292271315),
      surfaceBright: Color(4294310898),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916140),
      surfaceContainer: Color(4293521638),
      surfaceContainerHigh: Color(4293192417),
      surfaceContainerHighest: Color(4292797659),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200593),
      surfaceTint: Color(4278218039),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278210085),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278200593),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4280503087),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278197593),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278401949),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310898),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280034845),
      outline: Color(4282009147),
      outlineVariant: Color(4282009147),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086508),
      inversePrimary: Color(4289396669),
      primaryFixed: Color(4278210085),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203671),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4280503087),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278858778),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278401949),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278200175),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292271315),
      surfaceBright: Color(4294310898),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916140),
      surfaceContainer: Color(4293521638),
      surfaceContainerHigh: Color(4293192417),
      surfaceContainerHighest: Color(4292797659),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4285390223),
      surfaceTint: Color(4285390223),
      onPrimary: Color(4278204698),
      primaryContainer: Color(4278224453),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4289057196),
      onSecondary: Color(4279187485),
      secondaryContainer: Color(4280173865),
      onSecondaryContainer: Color(4289715382),
      tertiary: Color(4290037247),
      onTertiary: Color(4278200951),
      tertiaryContainer: Color(4283068370),
      onTertiaryContainer: Color(4294967295),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279178512),
      onSurface: Color(4292797659),
      onSurfaceVariant: Color(4290628284),
      outline: Color(4287075463),
      outlineVariant: Color(4282272319),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797659),
      inversePrimary: Color(4278218039),
      primaryFixed: Color(4287232681),
      onPrimaryFixed: Color(4278198540),
      primaryFixedDim: Color(4285390223),
      onPrimaryFixedVariant: Color(4278211112),
      secondaryFixed: Color(4290899655),
      onSecondaryFixed: Color(4278198540),
      secondaryFixedDim: Color(4289057196),
      onSecondaryFixedVariant: Color(4280766258),
      tertiaryFixed: Color(4292600319),
      onTertiaryFixed: Color(4278196043),
      tertiaryFixedDim: Color(4290037247),
      onTertiaryFixedVariant: Color(4279058337),
      surfaceDim: Color(4279178512),
      surfaceBright: Color(4281613109),
      surfaceContainerLowest: Color(4278849547),
      surfaceContainerLow: Color(4279704856),
      surfaceContainer: Color(4279968028),
      surfaceContainerHigh: Color(4280626214),
      surfaceContainerHighest: Color(4281349680),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4285653395),
      surfaceTint: Color(4285390223),
      onPrimary: Color(4278197001),
      primaryContainer: Color(4281377885),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4289320368),
      onSecondary: Color(4278197001),
      secondaryContainer: Color(4285635448),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4290431487),
      onTertiary: Color(4278195007),
      tertiaryContainer: Color(4285107441),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279178512),
      onSurface: Color(4294376947),
      onSurfaceVariant: Color(4290891456),
      outline: Color(4288325273),
      outlineVariant: Color(4286219898),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797659),
      inversePrimary: Color(4278211624),
      primaryFixed: Color(4287232681),
      onPrimaryFixed: Color(4278195462),
      primaryFixedDim: Color(4285390223),
      onPrimaryFixedVariant: Color(4278206237),
      secondaryFixed: Color(4290899655),
      onSecondaryFixed: Color(4278195462),
      secondaryFixedDim: Color(4289057196),
      onSecondaryFixedVariant: Color(4279647779),
      tertiaryFixed: Color(4292600319),
      onTertiaryFixed: Color(4278193716),
      tertiaryFixedDim: Color(4290037247),
      onTertiaryFixedVariant: Color(4278202244),
      surfaceDim: Color(4279178512),
      surfaceBright: Color(4281613109),
      surfaceContainerLowest: Color(4278849547),
      surfaceContainerLow: Color(4279704856),
      surfaceContainer: Color(4279968028),
      surfaceContainerHigh: Color(4280626214),
      surfaceContainerHighest: Color(4281349680),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293918702),
      surfaceTint: Color(4285390223),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4285653395),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293918702),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4289320368),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294769407),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4290431487),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279178512),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294049519),
      outline: Color(4290891456),
      outlineVariant: Color(4290891456),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797659),
      inversePrimary: Color(4278202901),
      primaryFixed: Color(4287561389),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4285653395),
      onPrimaryFixedVariant: Color(4278197001),
      secondaryFixed: Color(4291162827),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4289320368),
      onSecondaryFixedVariant: Color(4278197001),
      tertiaryFixed: Color(4292994815),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4290431487),
      onTertiaryFixedVariant: Color(4278195007),
      surfaceDim: Color(4279178512),
      surfaceBright: Color(4281613109),
      surfaceContainerLowest: Color(4278849547),
      surfaceContainerLow: Color(4279704856),
      surfaceContainer: Color(4279968028),
      surfaceContainerHigh: Color(4280626214),
      surfaceContainerHighest: Color(4281349680),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
