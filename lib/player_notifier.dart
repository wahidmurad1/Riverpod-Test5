import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'player_notifier.g.dart';

@riverpod
class PlayerNotifier extends _$PlayerNotifier {
  final List<Map<String, dynamic>> allPlayers = [
    {'name': 'Mashrafi Bin Mortaza', 'country': 'Bangladesh'},
    {'name': 'Tamim Iqbal', 'country': 'Bangladesh'},
    {'name': 'Sakib Al hasan', 'country': 'Bangladesh'},
    {'name': 'Ms. Dhoni', 'country': 'India'},
    {'name': 'Ab De villers', 'country': 'South Africa'},
    {'name': 'Kumar Sangakara', 'country': 'Sri Lanka'},
  ];
  @override
  build() {
    return allPlayers;
  }

  void filterPlayer(String playerName) {
    List<Map<String, dynamic>> results = allPlayers;
    if (playerName.isEmpty) {
      results = allPlayers;
    } else {
      results = allPlayers.where((element) => element['name'].toString().toLowerCase().contains(playerName.toLowerCase())).toList();
    }
    state = results;
  }
}
