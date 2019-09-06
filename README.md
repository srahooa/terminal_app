

## Statement of Purpose and Scope

This app is a derivative of the classic American game, The Oregon Trail. The game, released in 1971, took users on a journey reminiscent of early pioneers traveling west via covered wagons in the 1840s. It provides a perspective of the hardships encountered on the trail. As a player, will you survive? Will you die of cholera? This app enables players to follow along and encounter the same landmarks would have been monumental destinations for pioneers moving west. 

Inspired by a bit of nostalgia I looked to recreate the Oregon Trail experience as a terminal application. While the original game has complexities that I could not address after two weeks of coding (and build in four days) I endeavoured to create a stripped down version that can be added to at a future date.

I previously planned on creating an Australian citizenship/quiz and study aid. This would take the form of a multiple choice quiz where users could select a category; citizenship, history, sports, or pop culture. It would track your scores, tell you what you need to study and loop around to the main menu. While the citizenship test is still viable, constructing the Oregon Trail game has proved more challenging. It has engrained many of the lessons learned at CoderAcademy over the first two weeks. 

The Oregon Trail is a single player game which presents a months long journey in a matter of minutes in your terminal. Throughout the game, the user will progress along the Oregon Trail, much as pioneers in the United States did in the 1840s. A user will be able to travel 12 miles (19.3 km) in a day. The game automatically travel the trail, stopping at landmarks along the way. When a player reaches a landmark; a fort, landmark, or a river, they will be presented with option on how to proceed. Not all options are created equal. You could die. 


## Features and Functionality

From the opening screen users will choose between learning about the Oregon Trail and embarking on the trail. If they select “learn about the trail”, they will be presented with text that describes what the adventure of the trail. Once the user chooses “Travel the Trail,” they will enter their names as a means to personalise the experience. At a later date this could be developed, stored and used further throughout the game. 

Once on the trail, a user will encounter landmarks along the trail. At this point they are updated on the number of days they have been on the trail as well as the miles traveled. It was my original intent to include random events that would add to the number of days on the trail, ie: “You encountered a severe thunderstorm, lose 2 days.” At each landmark, the user will be presented with a number of options that impact how they proceed. If at a river, caulking the wagon could result in capsizing, an event that would kill you and end your game. At forts and other landmarks you can trade or talk to others who may give you advice or perhaps some wise words from Yoda. 

Variables were used to create menu options, present user choices, identify location names, and calculate days on the trail. The information was structured in Additionally I used values stored in arrays to populate

## Prototype features
-welcome screen
-User names character
-User inputs decide course of action
-User can quit at any time
-User encounters landmarks on the trail
-User makes choices that impact their destiny

-   ascii messages
-   randomize 
-   colorize
-   test/unit (for future development)

## Growth

The current version is a stripped down version of the Oregon Trail game.

Future editions can add features such as player budget, a store to buy supplies, hunting to supplement food rations, speed and ration scales, and additional trails to travel. The original game suggests a traveling party of three additional players. This too could be added to a later version.

Tracking of the number of days on the trail was initially part of the project scope, but due to limited technical abilities, it has not been included in this version. 

## Code Structure

The MVP is structured into the following files

-   main.rb
-   obstacles.rb
-   text.rb
-   Modules
    -caulk.rb
    -ferry.rb
    -ford.rb
    -trade.rb
    -speak.rb

The obstacles class is used to formulate menus. The menus are used for the player to choose how they would like to proceed on the trail. The menus then call methods that return a verdict from their choice. 

https://github.com/srahooa/terminal_app/blob/master/DevPlan.jpg
https://github.com/srahooa/terminal_app/blob/master/code_structure.jpg

## Code Structure / Gems

Required to play:
-   Artii (for title)
-   Faker (for names of people you can speak to, advice, and quotes)
-   Colorize (making font a little more colourful) 

Used in development:
-   Test-unit (optimising my code, whether I was ready or not)
-   Bundler (managing gems)


## Help and Instructions for Use

1.  Download and install ruby
        For detailed instructions on installing Ruby and checking your version, see:
        https://www.ruby-lang.org/en/documentation/installation/

2.  Download and unzip the OregonTrail files from github.

3.  Use the terminal to install the bundler gem. 
```
    > bundle install.
```
4.  Run the program by entering 'ruby main.rb' in your terminal.
```
    > ruby main.rb
```
5.  Enjoy!  

## Design and Planning Progress

The design and planning process started on Monday 2 September. Class time was spent creating the basic documentation to support the project. I created a flow chart of the linear journey with points identified for user input. In the initial design period, I created my Trello boards to aid in the project management. I also determined the file structure using multiple files for various classes- forts, tracker, rivers, talk. After deciding on the basic structure of the program, I began to code elements and their corresponding tests.

Further details can be found in the Development-Log. 
https://github.com/srahooa/terminal_app/blob/master/DevPlan.jpg
https://github.com/srahooa/terminal_app/blob/master/code_structure.jpg
https://github.com/srahooa/terminal_app/blob/master/development-log.md

## Difficulties?

My current working understanding of Ruby has a lot of room for improvement. While I understand the basic principles, I found it difficult to pull all the pieces together. Quite honestly, I kept talking myself in circles. 
I learned that starting from TDD would make the whole process easier and optimise my code earlier. As a learning process, I used too much time to get to functional code that was not optimized. I was then didn't want to break it and start all over. That is a next week challenge.
  

## Timeline

2 Sept, 14:30: idea approved.
2 Sept, 14:30- 17:00 worked on documentation and flushing out the idea.

3 Sept, 8:30-17:00 method development
3 Sept, 19:00-21:00 testing process
3 Sept, 21:00-22:30 lost to github

4 Sept, 8:30-12:00  building of methods and flow
4 Sept, 13:00-14:00 documentation
4 Sept, 14:00- 17:00 finalising basic flow

5 Sept, 8:30-12:00 implementing time tracker
5 Sept, 13:00-17:00 reviewing optimising documentation and application. 

6 Sept, 8:00-10:00 compiling presentation
6 Sept, 16:00 submission.


## Trello
Trello is a product management tool which has allowed for the management of tasks. Using a board dedicated to this project, I was able to outline user stories, tests, and specific tickets I was working on, done with, or still need to tackle.

The links provided demonstrate different times during the duration of this project.
https://github.com/srahooa/terminal_app/blob/master/trello_4_9.jpg
  

## Testing

The Obstacle class was tested to make sure the menus that appear throughout the game appear properly. Of the two tests written, this one proved Secondarily, I tested to make sure that the modules could be called and that the information populated properly. The second test prooved most difficult as I had code written that I was trying to force into a test. Lesson learned.
Throughout the development process I would tested by trial and error. This was not an efficient use of time and led to convoluted code. However, it has provided me a file to refactor and improve as my grasp on code improves.   

## Accessibility

The Oregon Trail game was designed to be as clear and accessible as possible. Unfortunately at this time the game is not adaptable for sight impaired users. This, as well as added functions, are areas for improvement. Additionally, the game is played in english. No attempts at translations have been attempted. 
The game has not been tested with a target audience and is in its beta stage.  

## Copyright, Ethical, & Social Issues

The Oregon Trail, published in 1971, served as the inspiration for this code. I would like to offer my sincere thanks to the developers at MECC for fond childhood memories. This terminal app was meant as a tool to improve my code. 
The game is based off the 1840s westward expansion in the United States. All the landmarks and forts are real places where pioneers would stop, trade, and often have troubles. Disease, theft, and death were common along the trail. On a preliminary level, this game can be used as an educational tool (though I recommend the original which can be played https://archive.org/details/msdos_Oregon_Trail_The_1990).

