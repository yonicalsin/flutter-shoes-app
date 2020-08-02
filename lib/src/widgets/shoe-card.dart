import 'package:flutter/material.dart';

class ShoeCard extends StatelessWidget {
  const ShoeCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Color(0xffffcf53),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: <Widget>[
            _ShoeWithShadow(),
            _ShoeSizes(),
          ],
        ),
      ),
    );
  }
}

class _ShoeSizes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _ShoeSizesBox(7),
          _ShoeSizesBox(7.5),
          _ShoeSizesBox(8),
          _ShoeSizesBox(8.5),
          _ShoeSizesBox(9),
        ],
      ),
    );
  }
}

class _ShoeSizesBox extends StatelessWidget {
  final double label;
  const _ShoeSizesBox(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: (this.label == 9) ? Color(0xffF1A23A) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if (this.label == 9)
            BoxShadow(
              color: Color(0xffF1A23A),
              blurRadius: 10,
              offset: Offset(0, 5),
            )
        ],
      ),
      child: Text(
        "${label.toString().replaceAll(".0", "")}",
        style: TextStyle(
          color: (this.label == 9) ? Colors.white : Color(0xffF1a23a),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      alignment: Alignment.center,
    );
  }
}

class _ShoeWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20,
            right: 0,
            child: _ShoesShadow(),
          ),
          Image(
            image: AssetImage("assets/imgs/azul.png"),
          )
        ],
      ),
    );
  }
}

class _ShoesShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Color(0xffeaa14e),
              blurRadius: 40,
            ),
          ],
        ),
      ),
    );
  }
}
