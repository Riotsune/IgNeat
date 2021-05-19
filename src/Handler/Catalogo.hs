{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Catalogo where

import Import
import Text.Cassius
import Text.Julius

--import Network.HTTP.Types.Status
--import Database.Persist.Postgresql

getCatalogoR :: Handler Html
getCatalogoR = do
    defaultLayout $ do
        setTitle "Catalogo"
        addStylesheet (StaticR css_bootstrap_css)
        toWidgetHead $(cassiusFile "templates/Catalogo.cassius")
        $ (whamletFile "templates/Catalogo.hamlet")
