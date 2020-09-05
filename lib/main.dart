import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MessageNotify(),
    debugShowCheckedModeBanner: false,
  ));
}

class Message {
  String note;
  String date;
  String order;
  String pic;

  Message({this.note, this.date, this.order, this.pic});
}

class MessageNotify extends StatelessWidget {
  List<Message> msgs = [
    Message(
      note:
          'Your order containing Super Dinner KFC Salmia will be delivered on August 26,2020',
      date: '22/08/2020',
      pic: 'kfc1.png',
      order: 'Ordered on  22/08/2020',
    ),
    Message(
      note: 'Flash sale is available for now for product shoes',
      date: '21/08/2020',
      pic: 'flash1.png',
      order: ' ',
    ),
    Message(
      note: 'New freedom sale offers are available for 2 days.! Hurry Now',
      date: '22/05/2020',
      pic: 'new4.jpg',
      order: ' ',
    ),
    Message(
      note:
          'Your order containing Walkaroo Shoes is being shipped from Bangalore facility on 4 July,2020',
      date: '04/07/2020',
      pic: 'walkaroo.jpeg',
      order: 'Ordered on  01/07/2020',
    ),
    Message(
      note:
          'Your order containing Walkaroo Shoes from Shoemart Bazar Bangalore was delivered on 6 July,2020',
      date: '06/07/2020',
      pic: 'walkaroo.jpeg',
      order: 'Ordered on  01/07/2020',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20.0,
            ),
            onPressed: () {}),
        title: Text(
          'Notifications',
          style: TextStyle(color: Color(0xff4A8590), fontSize: 23.0),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                'Unread (2)',
                style: TextStyle(
                  color: Color(0xff4A8590),
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: msgs.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      dense: false,
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/${msgs[index].pic}',
                            height: 75.0,
                            width: 75.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 235.0,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    msgs[index].note,
                                    style: TextStyle(
                                      color: Color(0xff5D828A),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 150,
                                      child: Text(
                                        msgs[index].order,
                                        style: TextStyle(
                                          color: Color(0xff5D828A),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      msgs[index].date,
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('BACK TO SHOP'),
                    color: Colors.orangeAccent,
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('CART'),
                    color: Colors.orangeAccent,
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
