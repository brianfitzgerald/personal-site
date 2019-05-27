module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Html.Styled exposing (toUnstyled)
import View.App exposing (Model, Msg(..), view)


initialModel : Model
initialModel =
    { count = 0 }


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | count = model.count + 1 }

        Decrement ->
            { model | count = model.count - 1 }


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view >> toUnstyled
        , update = update
        }
