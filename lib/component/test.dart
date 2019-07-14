//            Container(
//              height: 120,
//              width: width,
//              color: homebuoyColor,
//              child: Row(
//                children: <Widget>[
//                  IconButton(
//                    icon: Icon(
//                      Icons.home,
//                      color: _selectedIndex==0 ? Colors.white : Colors.white.withOpacity(.5),
//                    ),
//                    iconSize: 80,
//                    onPressed: () {
//                      setState(() {
//                        _selectedIndex = 0;
//                        print(
//                            "position $_selectedIndex, which is ${_navigations[_selectedIndex]}");
//                      });
//                    },
//                  ),
//                  IconButton(
//                    icon: Icon(
//                      Icons.library_books,
//                      color: _selectedIndex==1 ? Colors.white : Colors.white.withOpacity(.5),
//                    ),
//                    iconSize: 80,
//                    onPressed: () {
//                      setState(() {
//                        _selectedIndex = 1;
//                        print(
//                            "position $_selectedIndex, which is ${_navigations[_selectedIndex]}");
//                      });
//                    },
//                  ),
//                  IconButton(
//                    icon: Icon(
//                      Icons.laptop_mac,
//                      color: _selectedIndex==2 ? Colors.white : Colors.white.withOpacity(.5),
//                    ),
//                    iconSize: 80,
//                    onPressed: () {
//                      setState(() {
//                        _selectedIndex = 2;
//                        print(
//                            "position $_selectedIndex, which is ${_navigations[_selectedIndex]}");
//                      });
//                    },
//                  ),
//                  IconButton(
//                    icon: Icon(
//                      Icons.shopping_cart,
//                      color: _selectedIndex==3 ? Colors.white : Colors.white.withOpacity(.5),
//                    ),
//                    iconSize: 80,
//                    onPressed: () {
//                      setState(() {
//                        _selectedIndex = 3;
//                        print(
//                            "position $_selectedIndex, which is ${_navigations[_selectedIndex]}");
//                      });
//                    },
//                  ),
//                  IconButton(
//                    icon: Icon(
//                      Icons.settings,
//                      color: _selectedIndex==4 ? Colors.white : Colors.white.withOpacity(.5),
//                    ),
//                    iconSize: 80,
//                    onPressed: () {
//                      setState(() {
//                        _selectedIndex = 4;
//                        print(
//                            "position $_selectedIndex, which is ${_navigations[_selectedIndex]}");
//                      });
//                    },
//                  ),
//                ],
//              ),
//            )



//bottomNavigationBar: BottomNavigationBar(
//items: const <BottomNavigationBarItem>[
//BottomNavigationBarItem(
//icon: Icon(Icons.home),
//title: Text('Home'),
//backgroundColor: Colors.deepOrange),
//BottomNavigationBarItem(
//icon: Icon(Icons.library_books),
//title: Text('User Manual'),
//backgroundColor: Colors.deepOrange),
//BottomNavigationBarItem(
//icon: Icon(Icons.laptop_mac),
//title: Text('Front Desk'),
//backgroundColor: Colors.deepOrange),
//BottomNavigationBarItem(
//icon: Icon(Icons.shopping_cart),
//title: Text('Shop'),
//backgroundColor: Colors.deepOrange),
//BottomNavigationBarItem(
//icon: Icon(Icons.settings),
//title: Text('Setting'),
//backgroundColor: Colors.deepOrange),
//],
//currentIndex: _selectedIndex,
//selectedItemColor: Colors.white,
//onTap: (i) {
//setState(() {
//_selectedIndex = i;
//print(
//"position $_selectedIndex,"
//"which is ${_navigations[_selectedIndex]}");
//});
//},
//iconSize: 50,
//selectedFontSize: 20,
//showUnselectedLabels: true,
//unselectedFontSize: 15,
//unselectedItemColor: Colors.white.withOpacity(.5),
//),