// import 'package:music_app/models/song.dart';
// import 'package:music_app/modules/dashboard/repository/dashboard_repository.dart';
// import 'package:music_app/utils/services/api_client.dart';

import '../../../models/song.dart';
import '../../../utils/services/api_client.dart';
import 'dashboard_repository.dart';

class HttpDashBoardRepository implements DashBoardRespository {
  late ApiClient apiClient;
  @override
  Future<Song> getSongs({String artistName = "Sonu Nigam"}) {
    // TODO: implement getSongs
    throw UnimplementedError();
  }
}
