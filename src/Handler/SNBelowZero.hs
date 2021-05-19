{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.SNBelowZero where

import Import
import Text.Cassius
import Text.Julius

--import Network.HTTP.Types.Status
--import Database.Persist.Postgresql

getSNBelowZeroR :: Handler Html
getSNBelowZeroR = do
    defaultLayout $ do
        setTitle "Subnautica Below Zero"
        addStylesheet (StaticR css_bootstrap_css)
        toWidgetHead $(cassiusFile "templates/SNBelowZero.cassius")
        $ (whamletFile "templates/SNBelowZero.hamlet")