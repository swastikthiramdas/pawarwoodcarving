import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firestoredata_event.dart';
import 'firestoredata_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc() : super(DataInitial());

  @override
  Stream<DataState> mapEventToState(DataEvent event) async* {
    if (event is GetDataEvent) {
      try {
        List<String> data = await fetchDataFromFirestore();
        yield DataLoaded(data: data);
      } catch (e) {
        yield DataError(error: e.toString());
      }
    }
  }

  Future<List<String>> fetchDataFromFirestore() async {
    QuerySnapshot querySnapshot =
    await FirebaseFirestore.instance.collection('your_collection').get();

    List<String> data = [];

    /*querySnapshot.docs.forEach((doc) {
      data.add(doc.data()['your_field']);
    });*/

    return data;
  }
}
