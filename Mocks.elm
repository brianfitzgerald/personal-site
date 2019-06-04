module Mocks exposing (carfax, manyWorlds, mockPastWork, mockProjects, omens, quarkworks, socialLinks, wirecloud)

import Types exposing (..)


socialLinks : List SocialLink
socialLinks =
    [ { url = "https://github.com/brianfitzgerald", title = "GitHub" }
    , { url = "https://www.linkedin.com/in/brian-fitzgerald-2ab8a218/", title = "LinkedIn" }
    , { url = "https://github.com/brianfitzgerald/resume/blob/master/Resume/resume.pdf", title = "Resume" }
    ]


manyWorlds : Project
manyWorlds =
    { description = "This is a personal project that I put together as an exercise in writing a creative tool for mobile devices, as well as an interest in making content authoring easier. I decided to go with basic, choose-your-own-adventure style stories, as a medium that users can interact with, that is also simple enough that it would be possible to make a mobile authoring interface for.\n\n"
    , title = "Many Worlds"
    , link = { title = "View on App Store", url = "https://itunes.apple.com/us/app/many-worlds/id1343988468?ls=1&mt=8" }
    }


omens : Project
omens =
    { description = "An adaptation of the party game Werewolf to mobile phones."
    , title = "Omens"
    , link = { title = "View on App Store", url = "https://itunes.apple.com/us/app/omens-a-game-of-deception/id1244569926?ls=1&mt=8" }
    }


healium : Project
healium =
    { description = "An adaptation of the party game Werewolf to mobile phones."
    , title = "Healium"
    , link = { title = "View on App Store", url = "https://itunes.apple.com/us/app/omens-a-game-of-deception/id1244569926?ls=1&mt=8" }
    }


muse : Project
muse =
    { description = "An adaptation of the party game Werewolf to mobile phones."
    , title = "Muse CES"
    , link = { title = "View on App Store", url = "https://itunes.apple.com/us/app/omens-a-game-of-deception/id1244569926?ls=1&mt=8" }
    }


symphonics : Project
symphonics =
    { description = "An adaptation of the party game Werewolf to mobile phones."
    , title = "Symphonics"
    , link = { title = "View on App Store", url = "https://itunes.apple.com/us/app/omens-a-game-of-deception/id1244569926?ls=1&mt=8" }
    }


symphonicsAR : Project
symphonicsAR =
    { description = "An adaptation of the party game Werewolf to mobile phones."
    , title = "Omens"
    , link = { title = "View on App Store", url = "https://itunes.apple.com/us/app/omens-a-game-of-deception/id1244569926?ls=1&mt=8" }
    }


mockProjects : List Project
mockProjects =
    [ manyWorlds, omens, healium, muse, symphonics, symphonicsAR ]


carfax : Work
carfax =
    { title = "CARFAX"
    , duration = "2016 - Present"
    , description =
        [ "I work full time at Carfax as a software engineer on the myCARFAX team. I've helped ship a bunch of neat stuff and work with some cool people." ]
    }


quarkworks : Work
quarkworks =
    { title = "Quarkworks"
    , duration = "Oct 2015 - Jun 2016"
    , description =
        [ "I worked for Quarkworks doing mobile development on a number of apps that were contracted for other firms, including a flight GPS system and a social network for students. Learned a huge amount working here."
        ]
    }


wirecloud : Work
wirecloud =
    { title = "WireCloud"
    , duration = "Feb 2014 - Sep 2015"
    , description =
        [ "Developed the frontend and backend systems for Gofer, a local food delivery service. Built a system for managing a stream of orders, and assigning them to drivers, as well as a customer-facing order tracking system. Also developed a companion mobile web application for drivers."
        ]
    }


mockPastWork : List Work
mockPastWork =
    [ carfax, quarkworks, wirecloud ]
