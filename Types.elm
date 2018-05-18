module Types exposing (..)


type alias Technology =
    String


type alias Project =
    { title : String
    , tagline : String
    , description : String
    , technologies : List Technology
    }


type alias Work =
    { title : String
    , duration : String
    , description : String
    }
