//
//  Rabbit.swift
//  Rabbit
//
//  Created by Saturngod on 27/1/15.
//  Copyright (c) 2015 comquas. All rights reserved.
//

import UIKit

struct Rabbit {
  
  static func uni2zg(unicode:String) ->String {
    
    var rule:NSArray = [
      ["from": "\u{1004}\u{103A}\u{1039}","to":"\u{1064}"],
      ["from": "\u{1039}\u{1010}\u{103D}","to":"\u{1096}"],
      ["from": "\u{1014}(?=[\u{1030}\u{103D}\u{103E}\u{102F}\u{1039}])","to":"\u{108F}"],
      ["from": "\u{102B}\u{103A}","to":"\u{105A}"],
      ["from": "\u{100B}\u{1039}\u{100C}","to":"\u{1092}"],
      ["from": "\u{102D}\u{1036}","to":"\u{108E}"],
      ["from": "\u{104E}\u{1004}\u{103A}\u{1038}","to":"\u{104E}"],
      ["from": "[\u{1025}\u{1009}](?=[\u{1039}\u{102F}\u{1030}])","to":"\u{106A}"],
      ["from": "[\u{1025}\u{1009}](?=[\u{103A}])","to":"\u{1025}"],
      ["from": "\u{100A}(?=[\u{1039}\u{102F}\u{1030}\u{103D}])","to":"\u{106B}"],
      ["from": "(\u{1039}[\u{1000}-\u{1021}])\u{102F}","to":"$1\u{1033}"],
      ["from": "(\u{1039}[\u{1000}-\u{1021}])\u{1030}","to":"$1\u{1034}"],
      ["from": "\u{1039}\u{1000}","to":"\u{1060}"],
      ["from": "\u{1039}\u{1001}","to":"\u{1061}"],
      ["from": "\u{1039}\u{1002}","to":"\u{1062}"],
      ["from": "\u{1039}\u{1003}","to":"\u{1063}"],
      ["from": "\u{1039}\u{1005}","to":"\u{1065}"],
      ["from": "\u{1039}\u{1007}","to":"\u{1068}"],
      ["from": "\u{1039}\u{1008}","to":"\u{1069}"],
      ["from": "\u{100A}(?=[\u{1039}\u{102F}\u{1030}])","to":"\u{106B}"],
      ["from": "\u{1039}\u{100B}","to":"\u{106C}"],
      ["from": "\u{1039}\u{100C}","to":"\u{106D}"],
      ["from": "\u{100D}\u{1039}\u{100D}","to":"\u{106E}"],
      ["from": "\u{100E}\u{1039}\u{100D}","to":"\u{106F}"],
      ["from": "\u{1039}\u{100F}","to":"\u{1070}"],
      ["from": "\u{1039}\u{1010}","to":"\u{1071}"],
      ["from": "\u{1039}\u{1011}","to":"\u{1073}"],
      ["from": "\u{1039}\u{1012}","to":"\u{1075}"],
      ["from": "\u{1039}\u{1013}","to":"\u{1076}"],
      ["from": "\u{1039}\u{1013}","to":"\u{1076}"],
      ["from": "\u{1039}\u{1014}","to":"\u{1077}"],
      ["from": "\u{1039}\u{1015}","to":"\u{1078}"],
      ["from": "\u{1039}\u{1016}","to":"\u{1079}"],
      ["from": "\u{1039}\u{1017}","to":"\u{107A}"],
      ["from": "\u{1039}\u{1018}","to":"\u{107B}"],
      ["from": "\u{1039}\u{1019}","to":"\u{107C}"],
      ["from": "\u{1039}\u{101C}","to":"\u{1085}"],
      ["from": "\u{103F}","to":"\u{1086}"],
      ["from": "(\u{103C})\u{103E}","to":"$1\u{1087}"],
      ["from": "\u{103D}\u{103E}","to":"\u{108A}"],
      ["from": "(\u{1064})([\u{1031}]?)([\u{103C}]?)([\u{1000}-\u{1021}])\u{102D}","to":"$2$3$4\u{108B}"],
      ["from": "(\u{1064})([\u{1031}]?)([\u{103C}]?)([\u{1000}-\u{1021}])\u{102E}","to":"$2$3$4\u{108C}"],
      ["from": "(\u{1064})([\u{1031}]?)([\u{103C}]?)([\u{1000}-\u{1021}])\u{1036}","to":"$2$3$4\u{108D}"],
      ["from": "\u{101B}(?=[\u{102F}\u{1030}\u{103D}\u{108A}])","to":"\u{1090}"],
      ["from": "\u{100F}\u{1039}\u{100D}","to":"\u{1091}"],
      ["from": "\u{100B}\u{1039}\u{100B}","to":"\u{1097}"],
      ["from": "([\u{1000}-\u{1021}\u{1029}\u{1090}])([\u{1060}-\u{1069}\u{106C}\u{106D}\u{1070}-\u{107C}\u{1085}\u{108A}])?([\u{103B}-\u{103E}]*)?\u{1031}","to":"\u{1031}$1$2$3"],
      ["from": "([\u{1000}-\u{1021}\u{1029}])([\u{1060}-\u{1069}\u{106C}\u{106D}\u{1070}-\u{107C}\u{1085}])?(\u{103C})","to":"$3$1$2"],
      ["from": "\u{103A}","to":"\u{1039}"],
      ["from": "\u{103B}","to":"\u{103A}"],
      ["from": "\u{103C}","to":"\u{103B}"],
      ["from": "\u{103D}","to":"\u{103C}"],
      ["from": "\u{103E}","to":"\u{103D}"],
      ["from": "\u{103D}\u{102F}","to":"\u{1088}"],
      ["from": "([\u{102F}\u{1030}\u{1014}\u{101B}\u{103C}\u{108A}\u{103D}\u{1088}])([\u{1032}\u{1036}][0,1])\u{1037}","to":"$1$2\u{1095}"],
      ["from": "\u{102F}\u{1095}","to":"\u{102F}\u{1094}"],
      ["from": "([\u{1014}\u{101B}])([\u{1032}\u{1036}\u{102D}\u{102E}\u{108B}\u{108C}\u{108D}\u{108E}])\u{1037}","to":"$1$2\u{1095}"],
      ["from": "\u{1095}\u{1039}","to":"\u{1094}\u{1039}"],
      ["from": "([\u{103A}\u{103B}])([\u{1000}-\u{1021}])\u{102F}","to":"$1$2\u{1033}"],
      ["from": "\u{103A}\u{102F}","to":"\u{103A}\u{1033}"],
      ["from": "\u{103A}([\u{1036}\u{102D}\u{102E}\u{108B}\u{108C}\u{108D}\u{108E}])\u{102F}","to":"\u{103A}$1\u{1033}"],
      ["from": "([\u{103A}\u{103B}])([\u{1000}-\u{1021}])\u{1030}","to":"$1$2\u{1034}"],
      ["from": "\u{103A}\u{1030}","to":"\u{103A}\u{1034}"],
      ["from": "\u{103A}([\u{1036}\u{102D}\u{102E}\u{108B}\u{108C}\u{108D}\u{108E}])\u{1030}","to":"\u{103A}$1\u{1034}"],
      ["from": "\u{103D}\u{1030}","to":"\u{1089}"],
      ["from": "\u{103B}([\u{1000}\u{1003}\u{1006}\u{100F}\u{1010}\u{1011}\u{1018}\u{101A}\u{101C}\u{101A}\u{101E}\u{101F}])","to":"\u{107E}$1"],
      ["from": "\u{107E}([\u{1000}\u{1003}\u{1006}\u{100F}\u{1010}\u{1011}\u{1018}\u{101A}\u{101C}\u{101A}\u{101E}\u{101F}])([\u{103C}\u{108A}])([\u{1032}\u{1036}\u{102D}\u{102E}\u{108B}\u{108C}\u{108D}\u{108E}])","to":"\u{1084}$1$2$3"],
      ["from": "\u{107E}([\u{1000}\u{1003}\u{1006}\u{100F}\u{1010}\u{1011}\u{1018}\u{101A}\u{101C}\u{101A}\u{101E}\u{101F}])([\u{103C}\u{108A}])","to":"\u{1082}$1$2"],
      ["from": "\u{107E}([\u{1000}\u{1003}\u{1006}\u{100F}\u{1010}\u{1011}\u{1018}\u{101A}\u{101C}\u{101A}\u{101E}\u{101F}])([\u{1032}\u{1036}\u{102D}\u{102E}\u{108B}\u{108C}\u{108D}\u{108E}])","to":"\u{1080}$1$2"],
      ["from": "\u{103B}([\u{1000}-\u{1021}])([\u{103C}\u{108A}])([\u{1032}\u{1036}\u{102D}\u{102E}\u{108B}\u{108C}\u{108D}\u{108E}])","to":"\u{1083}$1$2$3"],
      ["from": "\u{103B}([\u{1000}-\u{1021}])([\u{103C}\u{108A}])","to":"\u{1081}$1$2"],
      ["from": "\u{103B}([\u{1000}-\u{1021}])([\u{1032}\u{1036}\u{102D}\u{102E}\u{108B}\u{108C}\u{108D}\u{108E}])","to":"\u{107F}$1$2"],
      ["from": "\u{103A}\u{103D}","to":"\u{103D}\u{103A}"],
      ["from": "\u{103A}([\u{103C}\u{108A}])","to":"$1\u{107D}"]
    ]
    
    
    
    return replaceRule(rule, original: unicode)
    
  }
  
  static func zg2uni(zawgyi:String) ->String {
    
    var rule:NSArray = [
      ["from": "(\u{103D}|\u{1087})","to":"\u{103E}"],
      ["from": "\u{103C}","to":"\u{103D}"],
      ["from": "(\u{103B}|\u{107E}|\u{107F}|\u{1080}|\u{1081}|\u{1082}|\u{1083}|\u{1084})","to":"\u{103C}"],
      ["from": "(\u{103A}|\u{107D})","to":"\u{103B}"],
      ["from": "\u{1039}","to":"\u{103A}"],
      ["from": "\u{106A}","to":"\u{1009}"],
      ["from": "\u{106B}","to":"\u{100A}"],
      ["from": "\u{106C}","to":"\u{1039}\u{100B}"],
      ["from": "\u{106D}","to":"\u{1039}\u{100C}"],
      ["from": "\u{106E}","to":"\u{100D}\u{1039}\u{100D}"],
      ["from": "\u{106F}","to":"\u{100D}\u{1039}\u{100E}"],
      ["from": "\u{1070}","to":"\u{1039}\u{100F}"],
      ["from": "(\u{1071}|\u{1072})","to":"\u{1039}\u{1010}"],
      ["from": "\u{1060}","to":"\u{1039}\u{1000}"],
      ["from": "\u{1061}","to":"\u{1039}\u{1001}"],
      ["from": "\u{1062}","to":"\u{1039}\u{1002}"],
      ["from": "\u{1063}","to":"\u{1039}\u{1003}"],
      ["from": "\u{1065}","to":"\u{1039}\u{1005}"],
      ["from": "\u{1068}","to":"\u{1039}\u{1007}"],
      ["from": "\u{1069}","to":"\u{1039}\u{1008}"],
      ["from": "/(\u{1073}|\u{1074})/g","to":"\u{1039}\u{1011}"],
      ["from": "\u{1075}","to":"\u{1039}\u{1012}"],
      ["from": "\u{1076}","to":"\u{1039}\u{1013}"],
      ["from": "\u{1077}","to":"\u{1039}\u{1014}"],
      ["from": "\u{1078}","to":"\u{1039}\u{1015}"],
      ["from": "\u{1079}","to":"\u{1039}\u{1016}"],
      ["from": "\u{107A}","to":"\u{1039}\u{1017}"],
      ["from": "\u{107C}","to":"\u{1039}\u{1019}"],
      ["from": "\u{1085}","to":"\u{1039}\u{101C}"],
      ["from": "\u{1033}","to":"\u{102F}"],
      ["from": "\u{1034}","to":"\u{1030}"],
      ["from": "\u{103F}","to":"\u{1030}"],
      ["from": "\u{1086}","to":"\u{103F}"],
      ["from": "\u{1088}","to":"\u{103E}\u{102F}"],
      ["from": "\u{1089}","to":"\u{103E}\u{1030}"],
      ["from": "\u{108A}","to":"\u{103D}\u{103E}"],
      ["from": "([\u{1000}-\u{1021}])\u{1064}","to":"\u{1004}\u{103A}\u{1039}$1"],
      ["from": "([\u{1000}-\u{1021}])\u{108B}","to":"\u{1004}\u{103A}\u{1039}$1\u{102D}"],
      ["from": "([\u{1000}-\u{1021}])\u{108C}","to":"\u{1004}\u{103A}\u{1039}$1\u{102E}"],
      ["from": "([\u{1000}-\u{1021}])\u{108D}","to":"\u{1004}\u{103A}\u{1039}$1\u{1036}"],
      ["from": "\u{108E}","to":"\u{102D}\u{1036}"],
      ["from": "\u{108F}","to":"\u{1014}"],
      ["from": "\u{1090}","to":"\u{101B}"],
      ["from": "\u{1091}","to":"\u{100F}\u{1039}\u{1091}"],
      ["from": "\u{1019}\u{102C}(\u{107B}|\u{1093})","to":"\u{1019}\u{1039}\u{1018}\u{102C}"],
      ["from": "(\u{107B}|\u{1093})","to":"\u{103A}\u{1018}"],
      ["from": "(\u{1094}|\u{1095})","to":"\u{1037}"],
      ["from": "\u{1096}","to":"\u{1039}\u{1010}\u{103D}"],
      ["from": "\u{1097}","to":"\u{100B}\u{1039}\u{100B}"],
      ["from": "\u{103C}([\u{1000}-\u{1021}])([\u{1000}-\u{1021}])?","to":"$1\u{103C}$2"],
      ["from": "([\u{1000}-\u{1021}])\u{103C}\u{103A}","to":"\u{103C}$1\u{103A}"],
      ["from": "\u{1031}([\u{1000}-\u{1021}])(\u{103E})?(\u{103B})?","to":"$1$2$3\u{1031}"],
      ["from": "([\u{1000}-\u{1021}])\u{1031}(\u{103B}|\u{103C}|\u{103D})","to":"$1$2\u{1031}"],
      ["from": "\u{1032}\u{103D}","to":"\u{103D}\u{1032}"],
      ["from": "\u{103D}\u{103B}","to":"\u{103B}\u{103D}"],
      ["from": "\u{103A}\u{1037}","to":"\u{1037}\u{103A}"],
      ["from": "\u{102F}(\u{102D}|\u{102E}|\u{1036}|\u{1037})\u{102F}","to":"\u{102F}$1"],
      ["from": "\u{102F}\u{102F}","to":"\u{102F}"],
      ["from": "(\u{102F}|\u{1030})(\u{102D}|\u{102E})","to":"$2$1"],
      ["from": "(\u{103E})(\u{103B}|\u{1037})","to":"$2$1"],
      ["from": "\u{1025}(\u{103A}|\u{102C})","to":"\u{1009}$1"],
      ["from": "\u{1025}\u{102E}","to":"\u{1026}"],
      ["from": "\u{1005}\u{103B}","to":"\u{1008}"],
      ["from": "\u{1036}(\u{102F}|\u{1030})","to":"$1\u{1036}"],
      ["from": "\u{1031}\u{1037}\u{103E}","to":"\u{103E}\u{1031}\u{1037}"],
      ["from": "\u{1031}\u{103E}\u{102C}","to":"\u{103E}\u{1031}\u{102C}"],
      ["from": "\u{105A}","to":"\u{102B}\u{103A}"],
      ["from": "\u{1031}\u{103B}\u{103E}","to":"\u{103B}\u{103E}\u{1031}"],
      ["from": "(\u{102D}|\u{102E})(\u{103D}|\u{103E})","to":"$2$1"],
      ["from": "\u{102C}\u{1039}([\u{1000}-\u{1021}])","to":"\u{1039}$1\u{102C}"],
      ["from": "\u{103C}\u{1004}\u{103A}\u{1039}([\u{1000}-\u{1021}])","to":"\u{1004}\u{103A}\u{1039}$1\u{103C}"],
      ["from": "\u{1039}\u{103C}\u{103A}\u{1039}([\u{1000}-\u{1021}])","to":"\u{103A}\u{1039}$1\u{103C}"],
      ["from": "\u{103C}\u{1039}([\u{1000}-\u{1021}])","to":"\u{1039}$1\u{103C}"],
      ["from": "\u{1036}\u{1039}([\u{1000}-\u{1021}])","to":"\u{1039}$1\u{1036}"],
      ["from": "\u{1092}","to":"\u{100B}\u{1039}\u{100C}"],
      ["from": "\u{104E}","to":"\u{104E}\u{1004}\u{103A}\u{1038}"],
      ["from": "\u{1040}(\u{102B}|\u{102C}|\u{1036})","to":"\u{101D}$1"],
      ["from": "\u{1025}\u{1039}","to":"\u{1009}\u{1039}"]
    ]
    
    
    return replaceRule(rule, original: zawgyi)
    
  }
  
  static func replaceRule(rule:NSArray,original:String) -> String {
    
    var output = original
    var maxLoop = rule.count
    var i = 0
    for(i ; i < maxLoop ; i++) {
      var data:NSDictionary = rule[i] as NSDictionary
      var from:String = data["from"] as String
      var to:String = data["to"] as String
      var range: Range<String.Index> = Range<String.Index>(start: output.startIndex,end: output.endIndex)
      output = output.stringByReplacingOccurrencesOfString(from, withString: to, options: .RegularExpressionSearch, range: range)
    }
    
    return output
    
  }
  
}