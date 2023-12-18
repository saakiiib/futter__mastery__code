import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebasetest/screens/details.dart';
import 'package:firebasetest/model.dart';

class MatchListScreen extends StatefulWidget {
  const MatchListScreen({super.key});

  @override
  State<MatchListScreen> createState() => _MatchListScreenState();
}

class _MatchListScreenState extends State<MatchListScreen> {
  List<MatchModel> footballMatchList = [];
  CollectionReference users = FirebaseFirestore.instance.collection('football');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Match Lists"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: FutureBuilder(
          future: users.get(),
          builder: (context, AsyncSnapshot<QuerySnapshot> querySnapshot) {
            if (querySnapshot.hasError) {
              return const Text("Something went wrong");
            }

            if (!querySnapshot.hasData) {
              return const Text("Document does not exist");
            }

            if (querySnapshot.connectionState == ConnectionState.done) {
              footballMatchList.clear();
              for (var docSnapshot in querySnapshot.data!.docs) {
                Map<String, dynamic> data =
                    docSnapshot.data() as Map<String, dynamic>;
                footballMatchList
                    .add(MatchModel.fromJson(docSnapshot.id, data));
              }

              return ListView.builder(
                  itemCount: footballMatchList.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DetailsScreen(
                                        detailsData: footballMatchList[index],
                                      )));
                        },
                        title: Text(footballMatchList[index].matchName),
                        trailing: const Icon(Icons.navigate_next));
                  });
            }

            return const Text("loading");
          }),
    );
  }
}
