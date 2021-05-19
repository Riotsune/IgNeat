{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.DaysGone where

import Import
import Text.Cassius
import Text.Julius

--import Network.HTTP.Types.Status
--import Database.Persist.Postgresql

getDaysGoneR :: Handler Html
getDaysGoneR = do
    defaultLayout $ do
        setTitle "Days Gone"
        addStylesheet (StaticR css_bootstrap_css)
        toWidgetHead $(cassiusFile "templates/DaysGone.cassius")
        $ (whamletFile "templates/DaysGone.hamlet")
