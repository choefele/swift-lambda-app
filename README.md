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

## Development
The sample app in this repo uses a standard Swift Package Manager directory layout and [package file](https://github.com/choefele/swift-lambda-app/blob/master/Package.swift) thus `swift build`, `swift test` and `swift package generate-xcodeproj` work as expected. Check out the [SPM's documentation](https://github.com/apple/swift-package-manager/blob/master/Documentation/Usage.md) for more info.

There are three targets:
- **AlexaSkill**: this is a library with the code that implements the custom Alexa skill. It's a separate library so it can be used by the other two targets. Also, libraries have `ENABLE_TESTABILITY` enabled by default which allows you to use `@testable import` in your unit tests.
- **Lambda**: The command line executable for deployment to Lambda. This program uses `stdin` and `stdout` for processing data.
- **Server** (macOS only): To simplify implementing a custom Alexa Skill, the Server target provides an HTTP interface to the AlexaSkill library. This HTTP server can be exposed publicly via [ngrok](https://ngrok.com) and configured in the Alexa console, which enables you to develop and debug an Alexa skill with code running on your development server. This target is macOS only because it wasn't possible to cleanly separate target dependencies and I didn't want to link libraries intended for server development to the Lambda executable used during deployment.
