module View.App exposing (Model, Msg(..), view)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Mocks exposing (mockPastWork, mockProjects, socialLinks)
import View.Components as Components


type Msg
    = Increment
    | Decrement


type alias Model =
    { count : Int }


view : Model -> Html Msg
view model =
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
