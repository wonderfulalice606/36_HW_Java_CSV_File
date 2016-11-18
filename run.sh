#!/bin/sh
#  ====================
GITHUB_ACCOUNT=wonderfulalice606
WS_DIR=workspace
DOC=Documents
REPO_NAME=36_HW_Java_CSV_File
APP_VERSION=1.2
#MAIN_CLASS=core.HtmlUnitTry
#MAIN_CLASS=core.HtmlUnitThrows
MAIN_CLASS=core.SeleniumThrows
#MAIN_CLASS=core.SeleniumTry
ARGS_01=
# =====================

if ! which java >/dev/null 2>&1 ; then echo Java not installed; return; fi
if ! which mvn >/dev/null 2>&1 ; then echo Maven not installed; return; fi
if ! which git >/dev/null 2>&1 ; then echo Git not installed; return; fi

if [ -d "$HOME/$DOC/$WS_DIR" ] ; then cd ~/$DOC/$WS_DIR; else echo $WS_DIR directory is not exist; return; fi

if [ -d "$HOME/$DOC/$WS_DIR/$REPO_NAME" ]; then rm -rf $HOME/$DOC/$WS_DIR/$REPO_NAME; fi

git clone https://github.com/$GITHUB_ACCOUNT/$REPO_NAME.git	

cd ./$REPO_NAME

mvn clean package

echo "Executing Java programm ..."

java -cp ./target/$REPO_NAME-$APP_VERSION-jar-with-dependencies.jar $MAIN_CLASS $ARGS_01

cd ..
