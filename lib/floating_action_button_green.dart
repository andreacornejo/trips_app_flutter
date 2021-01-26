import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> 
with AutomaticKeepAliveClientMixin{

  bool _pressed = false;
  
  IconData icon = Icons.favorite_border;
  bool get wantKeepAlive => true;

  void onPressedFav(){
    setState(() {
      
      if(this.icon == Icons.favorite_border) {
        this.icon = Icons.favorite;
        _pressed = true;
      } else {
        this.icon = Icons.favorite_border;
        _pressed = false;
      }
      
    });
     Scaffold.of(context).showSnackBar(
        SnackBar(
          content: this._pressed ? Text("Agregaste a tus favoritos") : Text("Quitaste de tus favoritos")
        )
    );
    // Scaffold.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text("Agregaste a tus Favoritos"),
    //   )
    // );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      
      child: Icon(
        this.icon
        //this._pressed ? Icons.favorite : Icons.favorite_border
        // Icons.favorite_border
      ),
      onPressed: onPressedFav,
    );
  }
  
}