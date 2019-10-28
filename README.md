<br />
<p align="center">
  <a href="https://www.microverse.org">
    <img src="img/microverse.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">PROJECT: OOP</h3>

  <p align="center">
    This is the 3th project of the Ruby curriculum at Microverse
    <br />
    <br />
    <a href="https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks">Assignment</a>
  </p>
</p>


## Instructions for Player Game:
<ul>

  <li>Step 1: Tic Tac Toe is a game for 2 players.</li>
  <li>Step 2: The game is played on a cell that's 3 x 3</li>
  <li>Step 3: If you are X, your friend? is O</li>
  <li>Step 4: Players take turns putting their marks in empty squares</li>
  <li>Step 5: The first player to get 3 marks in a row WIN</li>
  <li>Step 6: When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie</li>
  <li>Step 7: Make sure to move in diagonal, horizontal and vertical, otherwise it's going to be an invalid movement</li>
</ul> 

<!-- ABOUT THE PROJECT -->
## Milestone 1: Project setup

Setup project as it is described in requirements.

In addition, create 2 main directories:

lib - for the game logic (HINT: as this directory is empty you can use .gitkeep file)<br/>
bin - with the [executable file] https://commandercoriander.net/blog/2013/02/16/making-a-ruby-script-executable/) called main.rb.<br/>
main.rb file should be responsible for user interaction. This is the only one place where puts and get.chomp can be used.<br/>
Make your main.rb file displaying “Hello world!” when you use bin/main.rb as a bash command.<br/>

## Milestone 2: User interface

Suggested branch name: user_interface.<br/>
main.rb file should be responsible for user interaction. In this milestone you should only create content in this file.<br/>
Think about steps needed to play the game:<br/>
what do you need from player?<br/>
what do you need to display for player?<br/>
Display prompts for users (hint: puts/print), collect user input (hint: get.chomp) and only mock the basic flow of the game (you can use puts or inline comments to say for example “Now, your move is displayed on the board”).<br/>
Make sure that you can run your game with your executable file and play with the basic flow.<br/>
The final point of this milestone is to make sure that you thought about all actions needed to play Tic Tac Toe. It does not need to work yet - this will be done in the next milestone.<br/>

## Milestone 3: Game logic

Suggested branch name game_logic.<br/>
Add real logic for your game - get rid of all inline comments and mocked logic used in previous milestone.<br/>
As main.rb file should be responsible for user interaction, this is the only(!) one place where puts/print and get.chomp can be used.<br/>
Think how you can encapsulate diffrent parts of game logic in classes. Do not create one class for everything.
Read about DRY rule and use it.<br/>
Think about the diffrence between attr_readers/attr_writers and atrr_acessors. Use atrr_acessors only if you really need it.
Remember about single responsibility rule. Always.<br/>
Remember to cover edge cases: think what player could try to do to cheat the game and make sure that your program does not allow to perform invalid action.<br/>

## Milestone 4: Game instructions and final touches

Suggested branch name readme_game_instructions<br/>
Add full description of game rules in README file - remember that some people might not be familiar with Tic Tac Toe game rules.<br/>
Make sure that you informed your players on how to start your game - they might not be programmers.<br/>
Improve anything you want to improve in order to mkae your game perfect.<br/>


<!-- LICENSE -->
## License

Distributed under the GNU General Public License v3.0. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

* Diego Gomes: [Github](https://github.com/digomes87), [Twitter](https://twitter.com/devdiegogo)
* Elijah Obominuru: [Github](https://github.com/Elijahscriptdev), [Twitter](https://twitter.com/ElijahObominuru)



[product-screenshot]: img/mockup.png
