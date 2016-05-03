---
title       : Data Analytics Course Presentation
subtitle    : Taxi pickup prediction service
author      : John Lee
job         : Team Robo Yellow
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Objective

Our team chose to address both a future and present market opportunity in analyzing route densities to project optimal pickup locations for taxis, ride sharing applications, or autonomous vehicle fleets. The objective was to develop an application which could, based on a current latitude and longitude for any such vehicle, return a destination (in longitude and latitude) which would optimize the balance between the value of the next fare and the expected cost of acquiring that fare.

--- .class #id 

## Team

1. Linda Lin - Project Manager
2. John Lee - Product conceptual design and coordination
3. Charles Channon - Developer

--- .class #id 

## Approach and Anlaysis

In modeling the data, we worked with a subset containing approx. 14,000,000 rows.

- The data was preprocessed to eliminate missing and extraneous values
- Time and distance approximation models (both linear) were built, estimating on lat/lon change
- once cost per minute/mile were estimated, distance was excluded for having too low an impact (<1% impact of time)
- Time cost (once opportunity cost was factored in) was the principal limiting factor, and caused all projections to return always the closest (or second closest) cluster

--- .class #id 

## Product

The model was operationalized through Shiny Apps to always return an array of the closest three cluster centroids, with an indicator for cluster size.  This data could be used by the vehicle (or driver) to select an appropriate next destination based on current road conditions, direction the vehicle is facing, and other details that may be available in the operationalized context and not to the prediction model.

--- .class #id

## Demo
