module Types exposing (Link, Project, SocialLink, Work)


type alias SocialLink =
    { url : String
    , title : String
    }


type alias Link =
    { title : String
    , url : String
    }


type alias Project =
    { title : String
    , description : String
    , link : Link
    }


type alias Work =
    { title : String
    , duration : String
    , description : List String
    }
