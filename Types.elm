module Types exposing (Project, SocialLink, Technology, Work)


type alias SocialLink =
    { url : String
    , title : String
    }


type alias Technology =
    String


type alias Project =
    { title : String
    , tagline : String
    , description : String
    , technologies : List Technology
    , link : Maybe String
    }


type alias Work =
    { title : String
    , duration : String
    , description : List String
    }
