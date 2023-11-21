#!/bin/bash

# Build and deploy your code
npm run build
rsync -avz --delete dist/ sorority1@github.com:/var/www/html/
