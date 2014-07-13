ar-review
=========
Please model the following relationships. We're simulating athletes playing for various teams, with various skills, and varying titles on a given team (either a player or the team captain).

This involves two many-to-many relationships and aliasing. It's representative of what you can expect to see on the Phase 2 assessment. 

+ The models are players, teams, memberships (the join between players and teams), and skills
+ Each team has multiple players
+ Each team has one captain 
+ A player could belong to multiple teams
+ A player has many skills
+ A skill can belong to many players

This page is the canonical source of Active Record association goodness. Would recommend referring to it often: http://guides.rubyonrails.org/association_basics.html

