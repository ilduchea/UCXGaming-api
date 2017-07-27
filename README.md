# README

# UCXGaming API

## Description

#### _**This API is designed to be the back end for the UCXGaming site. It is a site designed to be an easy place to store and use various tabletop rpg character sheets.**

#### _**By Tyler Stephenson, July 24, 2017**_

### Setup/Installation Requirements
* clone <link to repo>
* cd <local repo>
* run this series of commands:
  * `$ bundle install`
  * `$ rails s`

## Planning

1. Specs
  * User model.
    * name - string
    * email - string
    * admin - boolean
    * timestamps
  * User validations.
    * presence and uniqueness of email

  * GameSystem model.
    * name - string
    * publisher - string
    * description - string
    * timestamps
  * GameSystem relationships
    * has many CharacterSheets
    * has many Sections, as sectional

  * Character model.
    * char_sheet, boolean
    * sheet_name
    * timestamps
  *  relationships
    * belongs to User
    * belongs to GameSystem
    * has many Sections, as sectional

  * Section model.
    * name - string
  *  relationships
    * belongs to sectional, polymorphic
    * recursively embeds many (embeds itself)
    * embeds many Traits

  * Trait model.
    * name - string
    * property - string
    * timestamps
  *  relationships
    * embeds in Section


### Known Bugs
No known bugs at this time.

## Support and Contact details
* Tyler Stephenson
* ilduchea@gmail.com

### Technologies Used

* Ruby
* Rails

### License

*This is web page is licensed under the MIT License.*

Copyright (c) 2017 **Tyler Stephenson**
