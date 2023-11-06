

import 'package:flutter/material.dart';

int ColorShader (int index, bool isAccent ){
  /*Most swatches have colors from 100 to 900 in increments of one hundred, plus the color 50. The smaller the number, the more pale the color. The greater the number, the darker the color.
   The accent swatches (e.g. redAccent) only have the values 100, 200, 400, and 700.
In addition, a series of blacks and whites with common opacities are available. For example, black54 is a pure black with 54% opacity.
{@tool snippet}*/
  if (!isAccent ) {
    switch (index%10 ) {
      case 0:
        return 50;
      case 1:
        return 100;
      case 2:
        return 200;
      case 3:
        return 300;
      case 4:
        return 400;
      case 5:
        return 500;
      case 6:
        return 600;
      case 7:
        return 700;
      case 8:
        return 800;
      case 9:
        return 900;
    }
  }else{
    switch (index%4 ) {
      case 0:
        return 100;
      case 1:
        return 200;
      case 2:
        return 400;
      case 3:
        return 700;
    }
  }
  return 0;
}