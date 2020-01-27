import 'package:cloth_store/global.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final int id;

  const ProductScreen({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 151,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.network(
                      products[id].img,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 45,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2019/12/23/08/15/alaska-4714097_960_720.jpg"),
                                backgroundColor: Colors.purple,
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      products[id].author,
                                      style: Theme.of(context)
                                          .textTheme
                                          .title
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                    ),
                                    Text(
                                      products[id].location,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle
                                          .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            products[id].title,
                            style:
                                Theme.of(context).textTheme.display1.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.shopping_basket, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 175,
              child: Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                  ),
                  color: lightBlack,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          MySpecialContainer(
                            children: <Widget>[
                              Text(
                                "Size",
                                style: Theme.of(context)
                                    .textTheme
                                    .overline
                                    .copyWith(color: Colors.grey),
                              ),
                              Text(
                                "Small",
                                style: Theme.of(context)
                                    .textTheme
                                    .body2
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(height: 9.0),
                          MySpecialContainer(
                            children: <Widget>[
                              Text(
                                "Color",
                                style: Theme.of(context)
                                    .textTheme
                                    .overline
                                    .copyWith(color: Colors.grey),
                              ),
                              Container(
                                height: 5.0,
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          MySpecialContainer(
                            children: <Widget>[MyCounter()],
                          ),
                          SizedBox(height: 9.0),
                          MySpecialContainer(
                            children: <Widget>[
                              Text(
                                "Price",
                                style: Theme.of(context)
                                    .textTheme
                                    .overline
                                    .copyWith(color: Colors.grey),
                              ),
                              Text(
                                "\$ ${products[id].price}",
                                style: Theme.of(context)
                                    .textTheme
                                    .body2
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 45,
                            ),
                            Text(
                              "Add",
                              style: Theme.of(context)
                                  .textTheme
                                  .title
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({
    Key key,
  }) : super(key: key);

  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 15,
          ),
          onTap: () {
            setState(() {
              _count += 1;
            });
          },
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: Text(
              "$_count",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        GestureDetector(
          child: Icon(
            Icons.remove,
            color: Colors.white,
            size: 15,
          ),
          onTap: () {
            if (_count >= 2) {
              setState(() {
                _count--;
              });
            }
          },
        ),
      ],
    );
  }
}

class MySpecialContainer extends StatelessWidget {
  final Function onPressed;
  final List<Widget> children;
  const MySpecialContainer({
    Key key,
    @required this.children,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}
