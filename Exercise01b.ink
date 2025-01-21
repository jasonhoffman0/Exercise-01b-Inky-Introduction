-> court_back

== court_back ==
You're at the back of the court. {has_basketball: In your hands is the basketball.} What will you do?
 + [Move Up] -> court_back_mid
 + {not has_basketball} [Call for basketball] -> basketball_called_for

== court_back_mid ==
You're at the back-middle of the court. {has_basketball: In your hands is the basketball.} What will you do?
 + [Move Up] -> court_front_mid
 + {not has_basketball} [Call for basketball] -> basketball_called_for

== court_front_mid
You're at the front-middle of the court. {has_basketball: In your hands is the basketball.} What will you do?
 + [Move Up] -> court_front
 + {not has_basketball} [Call for basketball] -> basketball_called_for

== court_front ==
You're at the back-middle of the court. {has_basketball: In your hands is the basketball.} What will you do?
 + [Move Back] -> court_front_mid
 + {not has_basketball} [Call for basketball] -> basketball_called_for
 
 == basketball_called_for ==
 ~ temp chance = RANDOM(1, 10)
 {  chance > 3:
        The basketball is passed to you.
        + [Catch the basketball] -> has_basketball
        
    - else:
        You're ignored by your teammate.
        + [Resume playing] -> court_back
 }
 
 === has_basketball ===
 You're now holding the basketball
 * [Begin dribbling] -> court_back