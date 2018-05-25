module Types exposing (..)


type alias Technology =
    String


type alias Project =
    { title : String
    , tagline : String
    , description : String
    , technologies : List Technology
    , link : String
    }


type alias Work =
    { title : String
    , duration : String
    , description : List String
    }
