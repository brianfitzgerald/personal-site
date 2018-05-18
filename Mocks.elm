module Mocks exposing (..)

import Types exposing (..)


birdFighting : Project
birdFighting =
    { description = "For a whole year, whenever I saw a bird, I would pick a fight with it. For owls, I tended to use a stiff uppercut; for pigeons, a couple jabs to the plumage usually did the trick."
    , tagline = "I fought every bird I saw"
    , title = "Bird Fighting"
    , technologies = [ "Birds", "Fists" ]
    }


stealingFromWalmart : Project
stealingFromWalmart =
    { description = "I shoplifted various items from the Walmart in town."
    , tagline = "I took what I wanted from Walmart."
    , title = "Stealing from Walmart"
    , technologies = [ "Pockets" ]
    }


manyWorlds : Project
manyWorlds =
    { description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n"
    , tagline = "An experimental storytelling platform for Android and iOS"
    , title = "Many Worlds"
    , technologies = [ "React Native", "DynamoDB" ]
    }


mockProjects : List Project
mockProjects =
    [ birdFighting, stealingFromWalmart, manyWorlds ]


carfax : Work
carfax =
    { title = "CARFAX"
    , duration = "2016 - Present"
    , description = "Software Engineer"
    }


mockPastWork : List Work
mockPastWork =
    [ carfax ]
