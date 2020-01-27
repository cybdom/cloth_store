import 'package:cloth_store/global.dart';
import 'package:cloth_store/ui/screens/product.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        color: lightBlack,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.purple,
                backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2019/12/23/08/15/alaska-4714097_960_720.jpg",
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.apps),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: lightBlack,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.notifications_none,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          HomeHeader(),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (ctx, i) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductScreen(id: i),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.purple,
                              backgroundImage: NetworkImage(products[i].img),
                            ),
                            SizedBox(width: 5.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    products[i].author,
                                    style: Theme.of(context)
                                        .textTheme
                                        .title
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  Text(
                                    products[i].location,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle
                                        .copyWith(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.more_vert, color: Colors.white),
                              onPressed: () {},
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.height / 3,
                            minWidth: double.infinity
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image.network(
                              products[i].img,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          products[i].title,
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: Colors.white.withOpacity(.85),
                              ),
                        ),
                        Row(
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(
                                Icons.message,
                                color: Colors.white,
                              ),
                              label: Text(
                                "${products[i].comments}",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                            FlatButton.icon(
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                              label: Text(
                                "${products[i].likes}",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(
                                Icons.bookmark_border,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35.0),
          bottomRight: Radius.circular(35.0),
        ),
      ),
      height: 101,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (ctx, i) {
                return Padding(
                  padding: i == 0
                      ? const EdgeInsets.only(right: 9.0)
                      : const EdgeInsets.symmetric(horizontal: 9.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepPurpleAccent),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                          backgroundImage:
                              NetworkImage("${categories[i]['img']}"),
                        ),
                      ),
                      Text(
                        "${categories[i]['title']}",
                        style: Theme.of(context).textTheme.button.copyWith(
                              color: Colors.white,
                            ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(width: 5.0),
          Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(bottom: 5.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
              Text(
                "Add",
                style: Theme.of(context).textTheme.button.copyWith(
                      color: Colors.white,
                    ),
              )
            ],
          )
        ],
      ),
    );
  }
}
