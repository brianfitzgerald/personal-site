module View.App exposing (app)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import View.Components as Components
import Mocks exposing (mockProjects, mockPastWork, socialLinks)
import Css exposing (..)


app : String -> Html msg
app model =
    div [ css [ paddingLeft (px 12) ] ]
        [ Components.title "Brian Fitzgerald"
        , socialLinks
            |> List.map Components.socialLink
            |> div []
        , mockProjects
            |> List.map Components.project
            |> Components.itemRow "Projects"
        , mockPastWork
            |> List.map Components.work
            |> Components.itemRow "Work"
        , span []
            [ text "This site was built with "
            , a
                [ href "http://elm-lang.org/", css [ textDecoration none ] ]
                [ text "Elm." ]
            ]
        ]
