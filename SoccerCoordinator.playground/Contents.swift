import Foundation


// Create dictionary collection of each players' data

let joeSmith:[String : AnyObject] = ["name": "Joe Smith",
                                     "height": 42.0,
                                     "hasExperience": true,
                                     "guardianName": "Jim and Jan Smith"]

let jillTanner:[String : AnyObject] = ["name": "Jill Tanner",
                                       "height": 36.0,
                                       "hasExperience": true,
                                       "guardianName": "Clara Tanner"]

let billBon:[String : AnyObject] = ["name": "Bill Bon",
                                    "height": 43.0,
                                    "hasExperience": true,
                                    "guardianName": "Sara and Jenny Bon"]

let evaGordon:[String : AnyObject] = ["name": "Eva Gordon",
                                       "height": 45.0,
                                       "hasExperience": false,
                                       "guardianName": "Wendy and Mike Gordon"]

let mattGill:[String : AnyObject] = ["name": "Matt Gill",
                                       "height": 40.0,
                                       "hasExperience": false,
                                       "guardianName": "Charles and Sylvia Gill"]

let kimmyStein:[String : AnyObject] = ["name": "Kimmy Stein",
                                       "height": 41.0,
                                       "hasExperience": false,
                                       "guardianName": "Bill and Hillary Stein"]

let sammyAdams:[String : AnyObject] = ["name": "Sammy Adams",
                                       "height": 45.0,
                                       "hasExperience": false,
                                       "guardianName": "Jeff Adams"]

let karlSaygan:[String : AnyObject] = ["name": "Karl Saygan",
                                       "height": 42.0,
                                       "hasExperience": true,
                                       "guardianName": "Heather Bledsoe"]

let suzaneGreenberg:[String : AnyObject] = ["name": "Suzane Greenberg",
                                       "height": 44.0,
                                       "hasExperience": true,
                                       "guardianName": "Henrietta Dumas"]

let salDali:[String : AnyObject] = ["name": "Sal Dali",
                                       "height": 41.0,
                                       "hasExperience": false,
                                       "guardianName": "Gala Dali"]

let joeKavalier:[String : AnyObject] = ["name": "Joe Kavalier",
                                       "height": 39.0,
                                       "hasExperience": false,
                                       "guardianName": "Sam and Elaine Kavalier"]

let benFinkelstein:[String : AnyObject] = ["name": "Ben Finkelstein",
                                       "height": 44.0,
                                       "hasExperience": false,
                                       "guardianName": "Aaron and Jill Finkelstein"]

let diegoSoto:[String : AnyObject] = ["name": "Diego Soto",
                                       "height": 41.0,
                                       "hasExperience": true,
                                       "guardianName": "Robin and Sarika Soto"]

let chloeAlaska:[String : AnyObject] = ["name": "Chloe Alaska",
                                       "height": 47.0,
                                       "hasExperience": false,
                                       "guardianName": "David and Jamie Alaska"]

let arnoldWillis:[String : AnyObject] = ["name": "Arnold Willis",
                                       "height": 43.0,
                                       "hasExperience": false,
                                       "guardianName": "Claire Willis"]

let phillipHelm:[String : AnyObject] = ["name": "Phillip Helm",
                                       "height": 44.0,
                                       "hasExperience": true,
                                       "guardianName": "Thomas Helm and Eva Jones"]

let lesClay:[String : AnyObject] = ["name": "Les Clay",
                                       "height": 42.0,
                                       "hasExperience": true,
                                       "guardianName": "Wynonna Brown"]

let herschelKrustofski:[String : AnyObject] = ["name": "Herschel Krustofski",
                                       "height": 45.0,
                                       "hasExperience": true,
                                       "guardianName": "Hyman and Rachel Krustofski"]


// Create an array collection of each player

let players = [joeSmith,
               jillTanner,
               billBon,
               evaGordon,
               mattGill,
               kimmyStein,
               sammyAdams,
               karlSaygan,
               suzaneGreenberg,
               salDali,
               joeKavalier,
               benFinkelstein,
               diegoSoto,
               chloeAlaska,
               arnoldWillis,
               phillipHelm,
               lesClay,
               herschelKrustofski]


// Create an array for each team with a dictionary of each players' info

var dragons:[[String : AnyObject]] = []
var sharks:[[String : AnyObject]] = []
var raptors:[[String : AnyObject]] = []


// Create array containing each team

let teams = [dragons, sharks, raptors]


// Determine if player has soccer experience and place them in the associated array

var hasExperience:[[String : AnyObject]] = []
var hasNoExperience:[[String : AnyObject]] = []

for player in players {
    if player["hasExperience"] as! Bool == true {
        hasExperience.append(player)
    } else {
        hasNoExperience.append(player)
    }
}


// Find total number of players per team and number of experienced players per team

let playersPerTeam = players.count / teams.count
let experiencedPlayersPerTeam = hasExperience.count / teams.count


// Sort players into teams

for player in hasExperience {
    if dragons.count < experiencedPlayersPerTeam {
        
        dragons.append(player)
    } else if sharks.count < experiencedPlayersPerTeam {
        sharks.append(player)
    } else if raptors.count < experiencedPlayersPerTeam {
        raptors.append(player)
    }
}

for player in hasNoExperience {
    if dragons.count < playersPerTeam {
        dragons.append(player)
    } else if sharks.count < playersPerTeam {
        sharks.append(player)
    } else if raptors.count < playersPerTeam {
        raptors.append(player)
    }
}


// Generate letters for each player

for player in dragons {
    print("Dear \(player["guardianName"] as! String), Congratulations! \(player["name"] as! String) has been drafted to the Dragons! Please be sure to attend the first team practice on March 17th at 1pm.")
}

for player in sharks {
    print("Dear \(player["guardianName"] as! String), Congratulations! \(player["name"] as! String) has been drafted to the Sharks! Please be sure to attend the first team practice on March 17th at 3pm.")
}

for player in raptors {
    print("Dear \(player["guardianName"] as! String), Congratulations! \(player["name"] as! String) has been drafted to the Raptors! Please be sure to attend the first team practice on March 18th at 1pm.")
}