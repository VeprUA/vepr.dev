#!/bin/bash

$ROJECT_PATH=/home/$USER/Development/revent.studio

project_name="vepr.dev"

# Install dependencies
npm install

# Build project
npm run build:prod

# Clean up dist
rm -rf $PROJECT_PATH/dist/
mkdir $PROJECT_PATH/dist/

if [ $? -ne 0 ]
then
  echo "Failed to build $project_name"
else
  echo "Finished building project $project_name"
fi