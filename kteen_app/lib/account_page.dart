import 'package:flutter/material.dart';
import 'package:kteen_app/list_article_page.dart';
import 'package:kteen_app/map_article_page.dart';
import 'package:kteen_app/utils/user_information.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text(
        '나의 정보',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 2.0,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 15.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_1280.png'),
                          radius: 50.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 4.0),
                        child: Text(
                          '$userName',
                          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Text(
                          '$userMail',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, top: 16.0, right: 0.0, bottom: 2.0),
                child: Text(
                  '내가 관심있는 복지 정보',
                  style: TextStyle(fontSize: 14.0),
                  textAlign: TextAlign.left,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: userYouthWelfareServiceList.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2.0,
                    child: ListTile(
                      title: Text(userYouthWelfareServiceList[index].TITLE),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListArticlePage(data: userYouthWelfareServiceList[index]),),
                          );
                        },
                      ),
                    ),
                  );
                }
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, top: 16.0, right: 0.0, bottom: 2.0),
                child: Text(
                  '내가 관심있는 시설 정보',
                  style: TextStyle(fontSize: 14.0),
                  textAlign: TextAlign.left,
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: userYouthWelfareCenterList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2.0,
                      child: ListTile(
                        title: Text(userYouthWelfareCenterList[index].CONSLTNCENTEROPERTGRPNM),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MapArticlePage(data: userYouthWelfareCenterList[index]),),
                            );
                          },
                        ),
                      ),
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

