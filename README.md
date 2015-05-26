# Nat's dotfiles

## Setting up a new OS X box...

* Install / generate SSH key
* Add to github
* Validate SSH key:

```
$ ssh git@github.com
```

* Install XCode tools:

```
$ xcode-select --instal
```

* Clone this repo

```
$ mkdir -p ~/github/natm
$ cd ~/github/natm
$ git clone git@github.com:natm/dotfiles.git
```

* Run the setup script:

```
$ cd dotfiles
$ ./setup_mac.sh
```

## Todo

* setup iterm2
* configure dock; size, zoom, etc
* menumeter items
* remove things i dont use from the dock; iphoto, itunes etc
