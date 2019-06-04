module View.Components exposing (itemRow, linkButton, project, socialLink, subtitle, title, work)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Types exposing (Link, Project, Work)


title : String -> Html msg
title content =
    h1 [ css [ fontSize (px 48), fontWeight bold ] ] [ text content ]


subtitle : String -> Html msg
subtitle content =
    span [ css [ fontSize (px 28) ] ] [ text content ]


itemRow : String -> List (Html msg) -> Html msg
itemRow t content =
    div [ css [ marginTop (px 15) ] ] <| span [ css [ fontSize (px 36) ] ] [ text t ] :: content


socialLink : Types.SocialLink -> Html msg
socialLink s =
    span [ css [ display block, paddingTop (px 5), paddingBottom (px 5) ] ]
        [ a
            [ href s.url
            , css
                [ color (hex "007AFF")
                , textDecoration none
                ]
            ]
            [ text s.title ]
        ]


linkButton : Link -> Html msg
linkButton link =
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
            [ href link.url, css [ textDecoration none, color (hex "FFFFFF") ] ]
            [ text link.title ]
        ]


project : Project -> Html msg
project proj =
    div [ css [ maxWidth (px 500) ] ]
        [ span [ css [ paddingTop (px 15), paddingBottom (px 15), displayFlex ] ]
            [ span [ css [ fontSize (px 24), flex (int 1) ] ] [ text proj.title ]
            , proj.link
                |> linkButton
            ]
        , div [ css [ fontSize (px 16), paddingTop (px 15), paddingBottom (px 15), maxWidth (px 500) ] ] [ text proj.description ]
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
