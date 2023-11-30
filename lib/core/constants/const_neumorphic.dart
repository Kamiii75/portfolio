

import 'package:neumorphic_ui/neumorphic_ui.dart';

import 'const_colors.dart';

class ConstNeumorphic{

  static NeumorphicStyle neumorphicStyle =NeumorphicStyle(

      surfaceIntensity: 1,
      shadowDarkColor: Colors.blueGrey,
      shadowLightColor: Colors.grey.shade100,
      shadowDarkColorEmboss: Colors.blueGrey,
      shadowLightColorEmboss: Colors.grey.shade100,
      shape: NeumorphicShape.convex,
      boxShape: const NeumorphicBoxShape.circle(),
      depth: 5,
      lightSource: LightSource.top,
      color: ConstColors.kPrimaryColor
  );

  static NeumorphicStyle neumorphicSquareStyle =NeumorphicStyle(

      surfaceIntensity: 1,
      shadowDarkColor: Colors.blueGrey,
      shadowLightColor: Colors.grey.shade100,
      shadowDarkColorEmboss: Colors.blueGrey,
      shadowLightColorEmboss: Colors.grey.shade100,
      shape: NeumorphicShape.convex,
      boxShape:  NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
      depth: 5,
      lightSource: LightSource.top,
      color: ConstColors.kPrimaryColor
  );

  static NeumorphicStyle neumorphicTimerStyle =NeumorphicStyle(

      surfaceIntensity: 1,
      shadowDarkColor: Colors.blueGrey,
      shadowLightColor: Colors.grey.shade100,
      shadowDarkColorEmboss: Colors.blueGrey,
      shadowLightColorEmboss: Colors.grey.shade100,
      shape: NeumorphicShape.convex,
      boxShape: const NeumorphicBoxShape.circle(),
      depth: 5,
      lightSource: LightSource.top,
      color: ConstColors.kPrimaryColor
  );

  static NeumorphicStyle neumorphicBtnStyle =NeumorphicStyle(

      surfaceIntensity: 1,
      shadowDarkColor: Colors.blueGrey,
      shadowLightColor: Colors.grey.shade100,
      shadowDarkColorEmboss: Colors.blueGrey,
      shadowLightColorEmboss: Colors.grey.shade100,
      shape: NeumorphicShape.convex,
      boxShape: const NeumorphicBoxShape.circle(),
      depth: 4,
      lightSource: LightSource.top,
      color: ConstColors.kTextPrimaryColor
  );


}