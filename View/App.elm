module View.App exposing (app)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import View.Components as Components
import Mocks exposing (mockProjects, mockPastWork)
import Css exposing (..)


app : String -> Html msg
app model =
    div [ css [ paddingLeft (px 12) ] ]
        [ Components.title "Brian Fitzgerald"
        , mockProjects
            |> List.map Components.project
            |> Components.itemRow "Projects"
        , mockPastWork
            |> List.map Components.work
            |> Components.itemRow "Work"
        ]
