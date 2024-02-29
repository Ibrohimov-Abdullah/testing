import 'dart:io';

class IoService{
 static void write<T>(T str){
 stdout.write(str);
}
 static String read<T>(){
  return stdin.readLineSync() ?? "";
}
 static void pBorder(Object? value){
  print('\x1b[51m $value \x1b[0m');
}
static void pBold(Object? value){
  print('\x1B[1m $value \x1B[0m');
}
static void pRed(Object? value){
  print('\x1b[31m $value\x1b[0m');
}
}

extension TextFormat on String{

  String get textBold{
    return "\x1B[1m$this\x1B[0m";
  }
  String get textItalic{
    return "\x1B[3m$this\x1B[0m";
  }
  String get textUnderline{
    return "\x1B[4m$this\x1B[0m";
  }
  String get textInvertColor{
    return "\x1B[7m$this\x1B[0m";
  }
  String get textCrossedOut{
    return "\x1B[9m$this\x1B[0m";
  }
  String get textUnderlineBold{
    return "\x1B[21m$this\x1B[0m";  
  }
  String get textFrame{
    return "\x1B[51m$this\x1B[0m";
  }

}

extension Colors on String{

  String get black{
    return "\x1B[30m$this\x1B[0m";
  }
  String get red{
    return "\x1B[31m$this\x1B[0m";
  }
  String get green{
    return "\x1B[32m$this\x1B[0m";
  }
  String get yellow{
    return "\x1B[33m$this\x1B[0m";
  }
  String get blue{
    return "\x1B[34m$this\x1B[0m";
  }
  String get purple{
    return "\x1B[35m$this\x1B[0m";
  }
  String get cyan{
    return "\x1B[36m$this\x1B[0m";
  }
  String get gray{
    return "\x1B[37m$this\x1B[0m";
  }

}

extension BackgroundColors on String{

  String get backgroundBlack{
    return "\x1B[40m$this\x1B[0m";
  }
  String get backgroundRed{
    return "\x1B[41m$this\x1B[0m";
  }
  String get backgroundGreen{
    return "\x1B[42m$this\x1B[0m";
  }
  String get backgroundYellow{
    return "\x1B[43m$this\x1B[0m";
  }
  String get backgroundBlue{
    return "\x1B[44m$this\x1B[0m";
  }
  String get backgroundPurple{
    return "\x1B[45m$this\x1B[0m";
  }
  String get backgroundCyan{
    return "\x1B[46m$this\x1B[0m";
  }
  String get backgroundGray{
    return "\x1B[47m$this\x1B[0m";
  }

}