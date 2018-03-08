# Rubagotchi

**This is a completed example of the Rubagotchi tamagotchi game.**

What we are going to achieve here today is nothing short of a miracle. For we shall create life, LIFE!

```

  (                          _)                                    `~c~            \       \       ~'
 (_                       __))                                          (        /\W\    ___\ )
   ((                _____)               MWU-HAHAHAHA!                   `~-~''     \   \WW=*'
     (_________)----'                                                               __\   \
         _/  /                                                                      \      \
        /  _/     |>>>                                                      |>>>     \    __\
      _/  /       |                     |>>>          |>>>                  |         \  \
     / __/        *                     |             |                     *          \ \
   _/ /          / \                    *             *                    / \          \ \
  /__/          /___\                 _/ \           / \_                 /___\          \\
 //             [   ]                |/   \_________/   \|                [   ]           \\
/'              [ I ]                /     \       /     \                [ I ]            \
                [   ]_ _ _          /       \     /       \          _ _ _[   ]             \
                [   ] U U |        {#########}   {#########}        | U U [   ]
                [   ]====/          \=======/     \=======/          \====[   ]
                [   ]    |           |   I |_ _ _ _| I   |           |    [   ]
                [___]    |_ _ _ _ _ _|     | U U U |     |_ _ _ _ _ _|    [___]
                \===/  I | U U U U U |     |=======|     | U U U U U | I  \===/
                 \=/     |===========| I   | + W + |   I |===========|     \=/
                  |  I   |           |     |_______|     |           |   I  |
                  |      |           |     |||||||||     |           |      |
                  |      |           |   I ||vvvvv|| I   |           |      |
              _-_-|______|-----------|_____||     ||_____|-----------|______|-_-_
                 /________\         /______||     ||______\         /________\
                |__________|-------|________\_____/________|-------|__________|
```

Or, well, not life but a nifty approximation of it in the form of a tamagotchi built in Ruby.

# TO THE LABORATORY!

## Step 1: Setup

**Terminal:**

Using the cursor and user interface (UI) on your computer is like pointing and gesturing at someone when you want them to do something. This is fine for quick and simple things but when there's a need to get a bit more advanced, you need to tell your computer exactly what you want it to do. That's where the terminal comes in.

The terminal is an app that allows you to interact with your computer using text commands. It's an incredibly powerful tool and one that is at the heart of any software engineer's practice. But today we will be going through some very basic usage.

There are many flavours of terminal out there with various quirks and capabilities, but every operating system comes with a default and that's more than enough for what we needs all the rest is just personal preference.

To open the terminal, do the following:

* On Linux press `ctrl+alt+t` or select 'terminal' from applications.
* On Mac you can find the 'terminal' app in the apllications folder.
* On Windows the 'command prompt' can be found under the start menu > All Programs > Accessories.


**Text Editor:**

The terminal is how we tell our computer what to do with with our code, but how do we write the code in the first place?

Writing code is just that, writing, it's something anyone who has used a computer will be used to. But whilst apps like Microsoft Word can offer many wonderous ways to ruin a document by moving an image slightly to the left, they are not what you want for coding.

There are however a myriad of fantastic text editors designed with coding in mind, any of which will be perfect for this project.

I'd suggest getting started with [Atom](https://atom.io/), as it's free. friendly and fantastic, and it has a version for every operating system. As a bonus, with the syntax highlighting, all you will need is an artisanal coffee and beanie hat to complete the "professional software engineer look"&trade;.

**Installing Ruby:**

Why Ruby?

Ruby is an extremely approachable programming language, especially for beginners. It puts emphasis on readability, versitility and ease of use.

In other words, learning to code in Ruby lets you focus on what you're doing and why rather than worrying if a `}` should be followed by a `;`.

Ultimately it doesn't matter too much which coding language you start in, the core concepts of good software engineering are consistent in just about any language, the most important thing is to dive in, start playing, building and having some fun along the way.

Mac:

* Install Homebrew by typing this command in the terminal.
  ```
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```
* Install ruby
  ```
  brew install ruby
  ```

Windows:

* [Download and install Ruby](https://rubyinstaller.org/)

Linux:

* Check if Ruby is installed by entering this command in the terminal
  ```
  which ruby
  ```
* If which ruby returns a path such as "/usr/bin/ruby" You are good to go.
* Otherwise enter (Note: you will likely need your password)
  ```
  sudo apt-get install ruby-full
  ```

**Github:**

Imagine you're baking a delicious cake, all is going well, you've got that buttery biscuit base, you've mixed up a delicious cheesecake filling, and now it's time to pop it in the oven. Only you realise with dawning dread that it wasn't cream cheese you mixed into the filling, it was mayonaise! Disaster, you can't unmayonaise your cake, the whole thing is ruined and so is your bestie's birthday.

Now imagine that at every step of the baking process, you can magically make a copy of your cake, as is at that moment. When you realise your cake is an eggy nightmare rather than a cheesy dream, you can just go and get the copy you made of your cake before you reached for the Hellman's and take things from there, butty biscuit base and all.

This is exactly what github does, it lets you keep a backup of your project that you can update at key points and switch back to whenever you need.

**Forking the repo:**

Forking a repo is a way of making a copy of it that is yours to do with as you wish.

* First you're going to need to head over to [github](https://github.com/). There you can sign up for a free account with a valid email, user name and password.
* Github will send you verification email, just click the link inside it and you're good to go.
* Next you'll want to head to the [Rubagotchi repo](https://github.com/SiAshbery/rubagotchi) (if you're not already reading this there) and fork the repo.
** insert image for fork button here **
* You will now be looking at your own version of the repo. This repo is currently hosted remotely and whilst it is technically possible to do all your work online, it would be a clunky and frustrating process.

**Installing git:**

We can interact with github and our local repos with git, but we will need to install it first.

---
Installing *Git* on a *Mac*

* Step 1 – Install [*Homebrew*](http://brew.sh/)

> *Homebrew* […] simplifies the installation of software on the Mac OS X operating system.

**Copy & paste the following** into the terminal window and **hit `Return`**.

```shell
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

You will be offered to install the *Command Line Developer Tools* from *Apple*. **Confirm by clicking *Install***. After the installation finished, continue installing *Homebrew* by **hitting `Return`** again.

* Step 2 – Install *Git*

Copy & paste the following into the terminal window and hit `Return`.

```shell
brew install git
```
---
Installing *Git* on *Linux*

Open a terminal window. Copy & paste the following into the terminal window and hit `Return`. You may be prompted to enter your password.

```shell
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
```
---
Installing *Git* on Windows

Download *Git* from [Git for Windows](http://msysgit.github.io/) and install it.
---

You can use *Git* now.

**Cloning the repo:**

* Instead we want to hit the green clone or download button and copy the link that pops up to your clipboard.
** insert image of clone or download + link dropdown here **
* Now we're going to head over to the terminal.

Get started
-----------

* Clone or download this repository
* Navigate to `rubagotchi` using the terminal, and run the program
```
cd rubagotchi
ruby play.rb
```

Acknowledgements
----------------
[Ruby Snake](https://github.com/joelwalden/ruby-snake) by [Joel Walden](https://github.com/joelwalden),

[Ruby Snake](https://github.com/FiddlersCode/ruby-snake) by [Paula Muldoon](https://github.com/FiddlersCode),

[Ruby Snake](https://github.com/nazwhale/ruby-snake) by [Naz Malik](https://github.com/nazwhale),

Ascii Castle by Jeffrey T. Crites,

Ascii Lignting by Dave Bird.

Ascii Divider by Korgg
