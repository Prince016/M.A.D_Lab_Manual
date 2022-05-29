// import 'package:music_app/models/song.dart';

import '../../../models/song.dart';

abstract class DashBoardRespository {
  Future<Song> getSongs({String artistName = "Sonu Nigam"});
}
