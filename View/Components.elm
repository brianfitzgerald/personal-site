module View.Components exposing (..)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Css exposing (..)
import Types exposing (Project, Work)


title : String -> Html msg
title content =
    h1 [ css [ fontSize (px 48), fontWeight bold ] ] [ text content ]


subtitle : String -> Html msg
subtitle content =
    span [ css [ fontSize (px 28) ] ] [ text content ]


itemRow : String -> List (Html msg) -> Html msg
itemRow title content =
    div [ css [ marginTop (px 15) ] ] <| span [ css [ fontSize (px 36) ] ] [ text title ] :: content


socialLink : Types.SocialLink -> Html msg
socialLink socialLink =
    span [ css [ display block, paddingTop (px 5), paddingBottom (px 5) ] ]
        [ a
            [ href socialLink.url
            , css
                [ color (hex "007AFF")
                , textDecoration none
                ]
            ]
            [ text socialLink.title ]
        ]


linkButton : String -> String -> Html msg
linkButton title link =
    span
        [ css
            [ paddingTop (px 10)
            , paddingBottom (px 10)
            , paddingRight (px 25)
            , paddingLeft (px 25)
            , backgroundColor (hex "009AFF")
            , borderRadius (px 8)
            ]
        ]
        [ a
            [ href link, css [ textDecoration none, color (hex "FFFFFF") ] ]
            [ text title ]
        ]


project : Project -> Html msg
project proj =
    div [ css [ maxWidth (px 500) ] ]
        [ span [ css [ paddingTop (px 15), paddingBottom (px 15), displayFlex ] ]
            [ span [ css [ fontSize (px 24), flex (int 1) ] ] [ text proj.title ]
            , proj.link
                |> Maybe.map (linkButton "Open")
                |> Maybe.withDefault (text "")
            ]
        , span [ css [ fontSize (px 16) ] ] [ text proj.tagline ]
        , div [ css [ fontSize (px 16), paddingTop (px 15), paddingBottom (px 15), maxWidth (px 500) ] ] [ text proj.description ]
        , proj.technologies |> List.map (\l -> span [] [ text l ]) |> List.intersperse (text ", ") |> span []
        ]


work : Work -> Html msg
work wor =
    div []
        [ h1 [ css [ fontSize (px 24) ] ] [ text wor.title ]
        , span [ css [ fontSize (px 16) ] ] [ text wor.duration ]
        , div [ css [ fontSize (px 16), paddingTop (px 15), paddingBottom (px 15), maxWidth (px 500) ] ]
            [ wor.description |> List.map (\l -> li [ css [ paddingTop (px 5), paddingBottom (px 5) ] ] [ text l ]) |> ul []
            ]
        ]
