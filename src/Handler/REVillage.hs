{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.REVillage where

import Import
import Text.Cassius
import Text.Julius

--import Network.HTTP.Types.Status
--import Database.Persist.Postgresql

getREVillageR :: Handler Html
getREVillageR = do
    defaultLayout $ do
        setTitle "Resident Evil Village"
        addStylesheet (StaticR css_bootstrap_css)
        toWidgetHead $(cassiusFile "templates/REVillage.cassius")
        $ (whamletFile "templates/REVillage.hamlet")
