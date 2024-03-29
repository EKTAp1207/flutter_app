import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  void onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   PageView(
        controller: pageController,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/login.png'),fit:BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 35,top: 130),
                    child: Text(
                      'Welcome\nBack',
                      style: TextStyle(color: Colors.white,fontSize: 33),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5,
                          right: 35,left: 35),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade50,
                                filled: true,
                                hintText: 'Name',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                )
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade50,
                                filled: true,
                                hintText: 'Mobile No',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                )
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Get OTP',style: TextStyle(
                                  fontSize: 27,fontWeight: FontWeight.w700
                              ),
                              ),
                              CircleAvatar(
                                radius: 30,backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                  color: Colors.white,
                                  onPressed: (){
                                    Navigator.pushNamed(context,'otp');
                                  },
                                  icon: Icon(Icons.arrow_forward),
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/register.png'),fit:BoxFit.cover)),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar( backgroundColor: Colors.transparent,elevation: 0,
                    title: Container(
                      padding: EdgeInsets.only(left: 100,top: 5),
                      child: Text(
                        'Create Account',
                        style: TextStyle(color: Colors.white,fontSize: 10),
                      ),
                    )
                ),
                body: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Container(
                              margin: EdgeInsets.only(left: 35,right: 35),
                              child: Column(
                                children: [
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        hintText: "Project",
                                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        hintText: "Building",
                                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        hintText: "Wing",
                                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        hintText: "Flat No*",
                                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        hintText: "Member",
                                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        hintText: "Name",
                                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        hintText: "Mobile No",
                                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        hintText: "Email ID",
                                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        hintText: "Name",
                                        hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                                    ),
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Text('Register',style: TextStyle(
                                      fontSize: 27,fontWeight: FontWeight.w700
                                       ),
                                       ),
                                      CircleAvatar(
                                    radius: 30,backgroundColor: Color(0xff4c505b),
                                    child: IconButton(
                                      color: Colors.white,
                                      onPressed: (){
                                        Navigator.pushNamed(context,'home');

                                      },
                                      icon: Icon(Icons.arrow_forward),
                                    ),
                                    )]
                                    )

                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ),],),)
              ),
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.purple),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: 'Register'),
            BottomNavigationBarItem(icon: Icon(Icons.height), label: 'Alert'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
     ],
      currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: onTapped
      ),
    );
  }
}
