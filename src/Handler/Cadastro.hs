{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Cadastro where

import Import
import Text.Cassius
import Text.Julius

--import Network.HTTP.Types.Status
--import Database.Persist.Postgresql

getCadastroR :: Handler Html
getCadastroR = do
    defaultLayout $ do
        setTitle "Cadastro"
        addStylesheet (StaticR css_bootstrap_css)
        toWidgetHead $(cassiusFile "templates/Cadastro.cassius")
        $ (whamletFile "templates/Cadastro.hamlet")
