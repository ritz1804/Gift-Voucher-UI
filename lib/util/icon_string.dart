class IconString{
  IconString({this.num1, this.num2, this.num3, this.num4});

  final int num1;
  final int num2;
  final int num3;
  final int num4;

  String iconString;

  String icon() {
    if (num1 == 1) {
      return 'images/tree.png';
    }
    else if (num2 == 1) {
      return 'images/candy.png';
    }
    else if (num3 == 1) {
      return 'images/bell.png';
    }
    else {
      return 'images/snowball.png';
    }
  }

}