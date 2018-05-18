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
    [ manyWorlds ]


carfax : Work
carfax =
    { title = "CARFAX"
    , duration = "2016 - Present"
    , description =
        [ "Led the development of the CARFAX Service Shops application, which provides shops with a toolset for managing customer-facing data for their shop and viewing analytics."
        , "Designed and implemented a package-based frontend architecture for myCARFAX's core products over the span of several project timelines. Developed a standard for sharing common functionality across products and teams.\n"
        , "Created an architecture for one of CARFAX's first user-facing products running on Amazon Web Services. Collaborated on the strategy for migrating the CARFAX's on-premises consumer services to an AWS-managed, Kubernetes-based infrastructure."
        , "Worked on the rewrite of myCARFAX's core web applications from Angular to React/Redux. Worked with the User Experience team to enforce a consistent look and feel across myCARFAX products.\n"
        ]
    }


mockPastWork : List Work
mockPastWork =
    [ carfax ]
