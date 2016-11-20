<p align="center" >
  <img src="https://raw.githubusercontent.com/choefele/swift-lambda-app/master/swift%2Blambda.png" alt="Swift + Amazon Lambda" title="Swift + Amazon Lambda">
</p>

# Swift Lambda App
Template to build an Amazon Lambda app in Swift

[![Build Status](https://travis-ci.org/choefele/swift-lambda-app.svg?branch=master)](https://travis-ci.org/choefele/swift-lambda-app)

## Overview
This repo contains code and scripts to quicky get you started with writing Swift apps for AWS Lambda, Amazon's serverless computing platform. It contains:
- A sample Lambda app that implements a custom skill for Amazon's Alexa Voice Service using [AlexaSkillsKit](https://github.com/choefele/AlexaSkillsKit)
- A setup to develop and test the app in your development environment
- Scripts to build the app for the Lambda target environment
- Integration tests to proof you app is working before deploying to Lambda
- Instructions on deploying the app to Lambda

swift-lamda-app has been inspired by [SwiftOnLambda](https://github.com/algal/SwiftOnLambda), which provided the initial working code to execute Swift programs on Lambda.
