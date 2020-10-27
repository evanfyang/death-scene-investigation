//
//  Storage.swift
//  iosDSI
//
//  Created by Andrew Majda on 10/12/20.
//

import Foundation

var tempDate = Date()

struct Storage {
    struct Create {
        static var CaseNumber = ""
        static var County = ""
    
        static func Clear() {
            CaseNumber = ""
            County = ""
        }
    }
    struct IncidentInformation {
        static func Clear(){
            CaseNum = ""
            Version = ""
            Death_Date = tempDate
            Death_Time = tempDate
            Injury_Date = tempDate
            Injury_Time = tempDate
            PlaceDeath = ""
            PlaceInjury = ""
            LS_Date = tempDate
            LS_Time = tempDate
            LS_Loc = ""
            LS_CC = ""
            DD_Date = tempDate
            DD_Time = tempDate
            DD_Loc = ""
            DD_CC = ""
            Found_Dead_By = ""
            FDB_Address = ""
            Last_Seen_Alive = ""
            LSA_Address = ""
            Witness = ""
            Weather = ""
            Activity = ""
            Position_Body = ""
            Livor = ""
            Rigor = ""
            Consistent_With_Position = false
            Clothed = false
            Partially_Clothed = false
            Unclothed = false
            Dis_Mark = ""
            Body_Temp = ""
            Body_Decomp = ""
            Immed_Cause = ""
            Due_To = ""
            Due_To_2 = ""
        }
        static var CaseNum = ""
        static var Version = ""
        static var Death_Date = tempDate
        static var Death_Time = tempDate
        static var Injury_Date = tempDate
        static var Injury_Time = tempDate
        static var PlaceDeath = ""
        static var PlaceInjury = ""
        static var LS_Date = tempDate
        static var LS_Time = tempDate
        static var LS_Loc = ""
        static var LS_CC = ""
        static var DD_Date = tempDate
        static var DD_Time = tempDate
        static var DD_Loc = ""
        static var DD_CC = ""
        static var Found_Dead_By = ""
        static var FDB_Address = ""
        static var Last_Seen_Alive = ""
        static var LSA_Address = ""
        static var Witness = ""
        static var Weather = ""
        static var Activity = ""
        static var Position_Body = ""
        static var Livor = ""
        static var Rigor = ""
        static var Consistent_With_Position = false
        static var Clothed = false
        static var Partially_Clothed = false
        static var Unclothed = false
        static var Dis_Mark = ""
        static var Body_Temp = ""
        static var Body_Decomp  = ""
        static var Immed_Cause = ""
        static var Due_To = ""
        static var Due_To_2 = ""
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    struct DeathSceneInvestigation {
        static var Deputy = ""
        
        static func Clear() {
            Deputy = ""
        }
    }
}
