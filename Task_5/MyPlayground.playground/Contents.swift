import UIKit



class Base {
   private var name:String? = "Georgian"
}

class Team:Base{
    var _teamName:String
    var _division:divisions
    var _GoalsDifference:GoalsDifferences
    
    init(teamName:String,division:divisions,GoalsDifference:GoalsDifferences) {
        self._teamName = teamName
        self._division = division
        self._GoalsDifference = GoalsDifference
    }
}
struct GoalsDifferences{
    var positiveScored = 0
    var negativeScored = 0
}

enum divisions: CaseIterable {
    case division1
    case division2
    case division3
    case division4
}
/// მონაცემები შესავსებად ->
var goals1 = GoalsDifferences()
goals1.negativeScored = 10
goals1.positiveScored = 15

var goals2 = GoalsDifferences()
goals2.negativeScored = 88
goals2.positiveScored = 160

var goals3 = GoalsDifferences()
goals3.negativeScored = 100
goals3.positiveScored = 15

var goals4 = GoalsDifferences()
goals4.negativeScored = 10
goals4.positiveScored = 150

var goals5 = GoalsDifferences()
goals5.negativeScored = 0
goals5.positiveScored = 150

var team1 = Team(teamName: "dinamo1",division: divisions.division1,GoalsDifference: goals1)
var team2 = Team(teamName: "torpedo",division: divisions.division3,GoalsDifference: goals2)
var team3 = Team(teamName: "dinamo2",division: divisions.division4,GoalsDifference: goals3)
var team4 = Team(teamName: "Chikhura1",division: divisions.division1,GoalsDifference: goals4)
var team5 = Team(teamName: "Chikhura2",division: divisions.division2,GoalsDifference: goals5)

/// მთავარი გუნდების ჩამონათვალი
var teamsArray = [team1,team4,team1,team5,team2,team1,team1,team3,team5,team1]


print("იპოვეთ ყველაზე კარგი დადებითი ბალანსის მქონე გუნდი \n")

//ამოცანა ორაზროვნად გავიგე, ასე რომ ორივე შემთხვევის ამოხსნას ვწერ :)
var sortid1 = teamsArray.sorted{$0._GoalsDifference.positiveScored - $0._GoalsDifference.negativeScored > $1._GoalsDifference.positiveScored - $1._GoalsDifference.negativeScored}
var sortid2 = teamsArray.sorted{$0._GoalsDifference.positiveScored  > $1._GoalsDifference.positiveScored}


sortid1[0].printTeamData // ყველაზე კარგი გუნდი ეს არის ჩემი აზრით
sortid2[0].printTeamData


print("\n\n\n დააჯგუფეთ გუნდები დივიზიონის მიხედვით\n")

var division1Teams = teamsArray.filter{$0._division == divisions.division1}
var division2Teams = teamsArray.filter{$0._division == divisions.division2}
var division3Teams = teamsArray.filter{$0._division == divisions.division3}
var division4Teams = teamsArray.filter{$0._division == divisions.division4}

division1Teams.printTeamsData(Header: "\(divisions.division1)")
division2Teams.printTeamsData(Header: "\(divisions.division2)")
division3Teams.printTeamsData(Header: "\(divisions.division3)")
division4Teams.printTeamsData(Header: "\(divisions.division4)")

print("\n\n\n დააჯგუფეთ გუნდები სახელის პირველი ასო ბგერის მიხედვით A to Z")

var byFirsLeterTeams = teamsArray.sorted{Array($0._teamName)[0] < Array($1._teamName)[0]}


byFirsLeterTeams.printTeamsData(Header: "byFirsLeterTeams")



print("\n\n\n იპოვეთ დადებითი ბურთების ბალანსის მქონე გუნდები")

var positiveScoredTeams = teamsArray.filter{$0._GoalsDifference.positiveScored - $0._GoalsDifference.negativeScored > 0}

positiveScoredTeams.printTeamsData(Header: "positiveScoredTeams") // გამოაკლდა -> dinamo2


print("\n\n\n იპოვეთ გუნდი რომელსაც ყველაზე მეტი გაშვებული ბურთი აქვს")


var maxNegativeScored = teamsArray.sorted{ $0._GoalsDifference.negativeScored > $1._GoalsDifference.negativeScored}


maxNegativeScored[0].printTeamData // გუნდი რომელსაც ყველაზე მეტი ბურთი აქვს გაშვებული

print("\n\n\n იპოვეთ გუნდი, რომელსაც პირველ დივიზიონში საუკეთესო ბურთების შეფარდება აქვს")


var firstDivisionTeams = teamsArray.filter{$0._division == divisions.division1}




var bestBalansedTeamSorted = firstDivisionTeams.sorted{$0._GoalsDifference.positiveScored / $0._GoalsDifference.negativeScored > $1._GoalsDifference.positiveScored / $1._GoalsDifference.negativeScored}


bestBalansedTeamSorted[0].printTeamData ///საუკეთესო ბალანსის მქონე გუნდი

print("\n\n\n დაალაგეთ გუნდები კლებით, გატანილი ბურთების მიხედვით")



var maxPositiveScored = teamsArray.sorted{ $0._GoalsDifference.positiveScored > $1._GoalsDifference.positiveScored}

maxPositiveScored.printTeamsData(Header: "maxPositiveScored")





extension Team {
    var printTeamData:Void{
        print(" teamName:\(self._teamName)  division:\(self._division) GoalsDifference:\(self._GoalsDifference)\n")
    }
}
extension Array where Element == Team  {
    var printTeamsData:Void{
        self.compactMap{$0.printTeamData}
        print("\n\n")
    }
    func printTeamsData(Header: String){
        print("\n \(Header)->")
        self.compactMap{$0.printTeamData}
        print("\n\n")
    }
}
