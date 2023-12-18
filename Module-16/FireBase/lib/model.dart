class MatchModel {
  final String docId;
  final String matchName;
  final int goalsTeamA;
  final int goalsTeamB;
  final String spendTime;
  final String totalTime;
  MatchModel(this.docId, this.matchName, this.goalsTeamA, this.goalsTeamB,
      this.spendTime, this.totalTime);

  factory MatchModel.fromJson(id, Map<String, dynamic> docJson) {
    return MatchModel(
      id ?? '',
      docJson['match_name'] ?? '',
      docJson['goals_team_a'] ?? 0,
      docJson['goals_team_b'] ?? 0,
      docJson['spend_time'] ?? '0',
      docJson['total_time'] ?? '0',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'match_name': matchName,
      'goals_team_a': goalsTeamA,
      'goals_team_b': goalsTeamB,
      'spend_time': spendTime,
      'total_time': totalTime,
    };
  }
}
