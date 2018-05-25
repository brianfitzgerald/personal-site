module Mocks exposing (..)

import Types exposing (..)


birdFighting : Project
birdFighting =
    { description = "For a whole year, whenever I saw a bird, I would pick a fight with it. For owls, I tended to use a stiff uppercut; for pigeons, a couple jabs to the plumage usually did the trick."
    , tagline = "I fought every bird I saw"
    , title = "Bird Fighting"
    , technologies = [ "Birds", "Fists" ]
    , link = "https://github.com/brianfitzgerald/many-worlds"
    }


stealingFromWalmart : Project
stealingFromWalmart =
    { description = "I shoplifted various items from the Walmart in town."
    , tagline = "I took what I wanted from Walmart."
    , title = "Stealing from Walmart"
    , technologies = [ "Pockets" ]
    , link = "https://github.com/brianfitzgerald/many-worlds"
    }


manyWorlds : Project
manyWorlds =
    { description = "This is a personal project that I put together as an exercise in writing a creative tool for mobile devices, as well as an interest in making content authoring easier. I decided to go with basic, choose-your-own-adventure style stories, as a medium that users can interact with, that is also simple enough that it would be possible to make a mobile authoring interface for.\n\n"
    , tagline = "An experimental storytelling platform for Android and iOS"
    , title = "Many Worlds"
    , technologies = [ "React Native", "DynamoDB", "Firebase" ]
    , link = "https://itunes.apple.com/us/app/many-worlds/id1343988468?ls=1&mt=8"
    }


omens : Project
omens =
    { description = "An adaptation of the party Game Werewolf to mobile phones."
    , tagline = "A networked party game for iOS and Android"
    , title = "Omens"
    , technologies = [ "React Native", "DynamoDB" ]
    , link = "https://itunes.apple.com/us/app/omens-a-game-of-deception/id1244569926?ls=1&mt=8"
    }


mockProjects : List Project
mockProjects =
    [ manyWorlds, omens ]


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


quarkworks : Work
quarkworks =
    { title = "Quarkworks"
    , duration = "Oct 2015 - Jun 2016"
    , description =
        [ "Worked on a variety of native mobile applications, including ZephyrCharts, an aviation mapping application for pilots, and the companion app for Columbia's local Roots n Blues music festival."
        , "Developed a cloud architecture for managing content for the Roots n Blues project."
        ]
    }


wirecloud : Work
wirecloud =
    { title = "WireCloud"
    , duration = "Feb 2014 - Sep 2015"
    , description =
        [ "Developed the frontend and backend systems for Gofer, a local food delivery service. Built a system for managing a stream of orders, and assigning them to drivers, as well as a customer-facing order tracking system. Also developed a companion mobile web application for drivers."
        , "Developed an automated cryptocurrency analytics and trading platform."
        ]
    }


mockPastWork : List Work
mockPastWork =
    [ carfax, quarkworks, wirecloud ]
