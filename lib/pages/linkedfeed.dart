import 'package:flutter/material.dart';
class Linkedfeed extends StatelessWidget {
  const Linkedfeed({super.key});

  final List<Map<String,String>>feedData=const
  [
    {
      "name":"Tom",
      "sub":"SWE 1 at Amazon",
      "profilePic":"https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg",
      "postImage":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcsV18XytB_2TiybueZHajWFsNhaTmzvChpA&s",
      "date":"4d",
      "likes":"35",
      "comment":"20 comments"
    },
    {
      "name":"Anjali",
      "sub":"SWE 2 at Cisco",
      "profilePic":"https://image.tmdb.org/t/p/original/aTLJCkl6mBXnb5ekKQytd7zTfne.jpg",
      "postImage":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfKe0Lr6uW-tGo_6p-g-hC7ak0UQP4qTtQbw&s",
      "date":"1d",
      "likes":"435",
      "comment":"10 comments"
    },
    {
      "name":"Mathew George",
      "sub":"Data analyst at Google",
      "profilePic":"https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png",
      "postImage":"https://media.licdn.com/dms/image/sync/v2/D5627AQHVExzgjRNxnA/articleshare-shrink_800/articleshare-shrink_800/0/1723037637111?e=2147483647&v=beta&t=_GEKLkksMb64UKoMK2RspcKSoohDX7tcQGYop-sb8us",
      "date":"8h ago",
      "likes":"5",
      "comment":"5 comments"
    },
    {
      "name":"Hari",
      "sub":"SDE 3 at Atlassian",
      "profilePic":"https://m.media-amazon.com/images/M/MV5BNjMyNTEyNzAtODRhNi00YWQ4LWE3YmEtZjg1YzcxZmUyYWUxXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "postImage":"https://e0.pxfuel.com/wallpapers/451/312/desktop-wallpaper-high-quality-iphone-happy-cute-dog-dogs-thumbnail.jpg",
      "date":"20m ago",
      "likes":"45",
      "comment":"10 comments"
    },
    {
      "name":"George",
      "sub":"Intern",
      "profilePic":"https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png",
      "postImage":"https://images.unsplash.com/photo-1496372412473-e8548ffd82bc?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWF8ZW58MHx8MHx8fDA%3D",
      "date":"5 May",
      "likes":"75",
      "comment":"5 comments"
    },
    {
      "name":"Kim",
      "sub":"Analyst",
      "profilePic":"https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png",
      "postImage":"https://media.flytographer.com/uploads/2024/01/Photoshoot-poses-men-photographer-flytographer-15.jpeg",
      "date":"5d",
      "likes":"35",
      "comment":"20 comments"
    },
    {
      "name":"Neveditha",
      "sub":"SWE",
      "profilePic":"https://cdn.vectorstock.com/i/1000v/54/41/young-and-elegant-woman-avatar-profile-vector-9685441.jpg",
      "postImage":"https://t3.ftcdn.net/jpg/04/02/08/38/360_F_402083813_4dLEweSrZCiooyhx4ihf5nLTNrRQuucp.jpg",
      "date":"2h ago",
      "likes":"9",
      "comment":"10 comments"
    },
    {
      "name":"Dhiya Sara Varghese",
      "sub":"Student",
      "profilePic":"https://media.licdn.com/dms/image/D5603AQE4lO-_OII-3g/profile-displayphoto-shrink_200_200/0/1719725424385?e=2147483647&v=beta&t=_tihU5V5A05w3_w_KhaSfti2wKN3hJt0JEQVJIMqZq0",
      "postImage":"https://static.wikia.nocookie.net/inreallife/images/d/d1/Chance_Perez.jpeg/revision/latest?cb=20210831224703",
      "date":"20 Sept",
      "likes":"67",
      "comment":"5 comments"
    },
    {
      "name":"Nimmi",
      "sub":"Coder at SBCE",
      "profilePic":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGtHTsLVnVNQfB4fG-s3eA4--QVUR6cHDoiw&s",
      "postImage":"https://i.pinimg.com/736x/26/0f/7b/260f7b60a5411219498ac2d2af8f9d1d.jpg",
      "date":"7d",
      "likes":"89",
      "comment":"20 comments"
    },
    {
      "name":"Indu",
      "sub":"CEO",
      "profilePic":"https://cdn.vectorstock.com/i/1000v/54/41/young-and-elegant-woman-avatar-profile-vector-9685441.jpg",
      "postImage":"https://i.pinimg.com/736x/68/e2/68/68e268bada0b113095d0949954f6d4a9.jpg",
      "date":"20h ago",
      "likes":"4",
      "comment":"10 comments"
    },
    {
      "name":"Prince",
      "sub":"Founder",
      "profilePic":"https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png",
      "postImage":"https://i.pinimg.com/564x/62/3e/e0/623ee0468b49b52fabf66f33086608c9.jpg",
      "date":"10h ago",
      "likes":"1",
      "comment":"5 comments"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: feedData.length,
        itemBuilder: (context,index)
        {
          return Container(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(feedData[index]["profilePic"]!),
                  ),
                  title: Text(feedData[index]["name"]!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(feedData[index]["sub"]!,
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                      Text(feedData[index]["date"]!,
                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),), // This is the subtitle under the first subtitle
                    ],
                  ),
                  trailing: Wrap(
                    spacing: 12, // space between two icons
                    children: <Widget>[
                      Icon(Icons.more_horiz), // icon-1
                      Icon(Icons.close), // icon-2
                    ],
                  ),
                ),
                Image.network(feedData[index]["postImage"]!,
                  fit: BoxFit.fill,
                  width: double.infinity,),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.recommend),
                        SizedBox(width: 8),
                        Text(feedData[index]["likes"]!),
                      ],
                    ),
                    Text(feedData[index]["comment"]!)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_outlined)),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text("Like"),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.comment_outlined)),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text("Comment"),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.repeat)),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text("Repost"),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.near_me_outlined)),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text("Share"),
                        )
                      ],
                    ),

                  ],
                )
              ],
            ),
          );
        });
  }
}
