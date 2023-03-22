import 'package:flutter/cupertino.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool onTap = true;
  bool onT = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(
        middle: Text("Settings UI"),
        backgroundColor: CupertinoColors.systemRed,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text("Common",style: TextStyle(fontSize: 15,color: CupertinoColors.systemGrey),),
          ),
          SizedBox(height: 10),
          CupertinoListTile(
            title: Text("Launguage",style: TextStyle(color: CupertinoColors.black,fontSize: 16),),
            leading: Icon(
              CupertinoIcons.globe,
              color: CupertinoColors.systemGrey,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "English",
                  style: TextStyle(color: CupertinoColors.systemGrey),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  CupertinoIcons.forward,
                  color: CupertinoColors.systemGrey,
                  size: 13,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          CupertinoListTile(
            title: Text("Environment",style: TextStyle(color: CupertinoColors.black,fontSize: 16),),
            leading: Icon(
              CupertinoIcons.cloud,
              color: CupertinoColors.systemGrey,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Production",
                  style: TextStyle(color: CupertinoColors.systemGrey),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  CupertinoIcons.forward,
                  color: CupertinoColors.systemGrey,
                  size: 13,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text("Accounts",style: TextStyle(fontSize: 15,color: CupertinoColors.systemGrey),),
          ),
          SizedBox(height: 10),
          CupertinoListTile(
            title: Text("Phone number",style: TextStyle(color: CupertinoColors.black,fontSize: 16),),
            leading: Icon(
              CupertinoIcons.phone_fill,
              color: CupertinoColors.systemGrey,
            ),
            trailing:  Icon(
              CupertinoIcons.forward,
              color: CupertinoColors.systemGrey,
              size: 13,
            ),
          ),
          SizedBox(height: 10),
          CupertinoListTile(
            title: Text("Email",style: TextStyle(color: CupertinoColors.black,fontSize: 16),),
            leading: Icon(
              CupertinoIcons.mail_solid,
              color: CupertinoColors.systemGrey,
            ),trailing:  Icon(
            CupertinoIcons.forward,
            color: CupertinoColors.systemGrey,
            size: 13,
          ),
          ),
          SizedBox(height: 10),
          CupertinoListTile(
            title: Text("Sign out",style: TextStyle(color: CupertinoColors.black,fontSize: 16),),
            leading: Icon(
              CupertinoIcons.square_arrow_right,
              color: CupertinoColors.systemGrey,
            ),trailing:  Icon(
            CupertinoIcons.forward,
            color: CupertinoColors.systemGrey,
            size: 13,
          ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text("Security",style: TextStyle(fontSize: 15,color: CupertinoColors.systemGrey),),
          ),
          SizedBox(height: 10),
          CupertinoListTile(
            title: Text("Lock app in background",style: TextStyle(color: CupertinoColors.black,fontSize: 16),),
            leading: Icon(
              CupertinoIcons.device_phone_portrait,
              color: CupertinoColors.systemGrey,
            ),
            trailing: CupertinoSwitch(value: onTap,onChanged: (value) {
              setState(() {
                onTap = value;
              });
            },activeColor: CupertinoColors.systemRed),
          ),
          SizedBox(height: 10),
          CupertinoListTile(
            title: Text("Use fingerprint",style: TextStyle(color: CupertinoColors.black,fontSize: 16),),
            leading: Icon(
              CupertinoIcons.lock_shield,
              color: CupertinoColors.systemGrey,
            ),
            trailing: CupertinoSwitch(value: onT,onChanged: (value) {
              setState(() {
                onT = value;
              });
            },activeColor: CupertinoColors.systemRed,),
          ),
          SizedBox(height: 10),
          CupertinoListTile(
            title: Text("Change password",style: TextStyle(color: CupertinoColors.black,fontSize: 16),),
            leading: Icon(
              CupertinoIcons.lock,
              color: CupertinoColors.systemGrey,
            ),
            trailing: CupertinoSwitch(value: onTap,onChanged: (value) {
              setState(() {
                onTap = value;
              });
            },activeColor: CupertinoColors.systemRed),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text("Misc",style: TextStyle(fontSize: 15,color: CupertinoColors.systemGrey),),
          ),
          CupertinoListTile(
            title: Text("Terms of Service",style: TextStyle(color: CupertinoColors.black,fontSize: 16),),
            leading: Icon(
              CupertinoIcons.macwindow,
              color: CupertinoColors.systemGrey,
            ),trailing:  Icon(
            CupertinoIcons.forward,
            color: CupertinoColors.systemGrey,
            size: 13,
          ),
          ),
          SizedBox(height: 10),
          CupertinoListTile(
            title: Text("Open source licenses",style: TextStyle(color: CupertinoColors.black,fontSize: 16),),
            leading: Icon(
              CupertinoIcons.square_fill_on_square_fill,
              color: CupertinoColors.systemGrey,
            ),trailing:  Icon(
            CupertinoIcons.forward,
            color: CupertinoColors.systemGrey,
            size: 13,
          ),
          ),
        ],
      ),
    );
  }
}
