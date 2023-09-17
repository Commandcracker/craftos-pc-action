#!/bin/bash

# Ensure that default values are set
if [[ -z $TIMEOUT_SIGNAL ]]; then
    TIMEOUT_SIGNAL="HUP"
fi

if [[ -z $ROOT ]]; then
    ROOT="./"
fi

if [[ -z $TIMEOUT ]]; then
    TIMEOUT="60"
fi

# Setup variables
if [[ -z $LUAJIT ]]; then
    COMMAND="craftos"
else
    COMMAND="craftos-luajit"
fi

if [[ ! -z $DIRECTORY ]]; then
    DIRECTORY="--directory $DIRECTORY"
fi

if [[ ! -z $ID ]]; then
    ID="--id $ID"
fi

if [[ -z $DISABLE_TWEAKS ]]; then
    MOUNT_TWEAKS="--mount /rom/autorun=/opt/craftos-pc-action/craftos-pc-tweaks"
fi

if [[ -z $DISABLE_DEFAULT_SETTINGS ]]; then
    MOUNT_DEFAULT_SETTINGS="--mount /=/opt/craftos-pc-action/settings"
fi

if [[ -z $DISABLE_ROOT ]]; then
    MOUNT_ROOT="--mount /=$ROOT"
fi

if [[ -z $DISABLE_HEADLESS ]]; then
    HEADLESS="--headless"
fi

if [[ -z $DISABLE_SINGLE ]]; then
    SINGLE="--single"
fi

if [[ -z $DISABLE_TIMEOUT_VERBOSE ]]; then
    TIMEOUT_VERBOSE="--verbose"
fi

# Run CraftOS-PC
timeout --signal=$TIMEOUT_SIGNAL $TIMEOUT_VERBOSE $TIMEOUT_ARGUMENTS $TIMEOUT $COMMAND \
    $HEADLESS $SINGLE \
    $MOUNT_ROOT \
    $MOUNT_DEFAULT_SETTINGS \
    $MOUNT_TWEAKS \
    $ID $DIRECTORY $OPTIONS
