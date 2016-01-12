//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        var containsS1S2 = false
        if s1.characters.count + s2.characters.count == shuffle.characters.count {
            if s1 + s2 == shuffle {
                containsS1S2 = true
                return containsS1S2
            }
            var s1Characters: [Character] = []
            for char in s1.characters {
                s1Characters.append(char)
            }
            var s2Characters: [Character] = []
            for char in s2.characters {
                s2Characters.append(char)
            }
            var shuffleCharacters: [Character] = []
            for char in shuffle.characters {
                shuffleCharacters.append(char)
            }
            if s1Characters[0] == shuffleCharacters[0] && s2Characters[0] == shuffleCharacters[1] {
                if s2Characters[1] == shuffleCharacters[2] && s1Characters[1] == shuffleCharacters[3] {
                    containsS1S2 = true
                }
            }
            if s1Characters[0] == shuffleCharacters[0] && s2Characters[0] == shuffleCharacters[1] {
                if s1Characters[1] == shuffleCharacters[2] && s2Characters[1] == shuffleCharacters[3] {
                    containsS1S2 = true
                }
            }
            if s2Characters[0] == shuffleCharacters[0] && s2Characters[0] == shuffleCharacters[1] {
                if s1Characters[0] == shuffleCharacters[2] && s1Characters[1] == shuffleCharacters[3] {
                    containsS1S2 = true
                }
            }
        }
        
        return containsS1S2
    }
}
