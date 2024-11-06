import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:appcontainer/src/models/MusicDataResponse.dart';
import 'dart:developer' as devLog;

class ApiService{

  Future<List<MusicDataResponse>> getAllFetchMusicData()async {
    const url = "https://storage.googleapis.com/uamp/catalog.json";
    Uri uri = Uri.parse(url);
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {

            final body=response.body;
            final json=jsonDecode(body);
            final result=json['music'] as List<dynamic>;
            final musicList=result.map( (e) {
              return MusicDataResponse.fromJson(e);
            }).toList();

            debugPrint(response.body.toString());
            devLog.log(musicList.toString(),name: "MyMusicData");
            return musicList;

          } else {
            return  throw("Data fetch failed");
          }
    } catch (e) {
      print(e);
      return  throw("Data fetch failed");
    }
  }
}