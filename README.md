# Namespaced Routes Lab

## Objectives

1. Organize controllers with a module
2. Use namespaced routes

## Overview

We're going to add some administrator functions to our song library and
use what we learned about namespaced routes and module scope to organize
our routes and controllers.

## Instructions

The base application has been provided with tests. Make sure to run
`rake db:seed` to set up seed data. Tests can be run with `rspec`.

1. Create a model called `Settings` with two `string` fields:
   `song_sort_order` and `artist_sort_order`.
2. Implement a `SettingsController` under an `Admin` module with actions
   to edit and update settings.
3. Implement routes and views to manipulate the settings values. Use
   radio buttons. Acceptable values are "ASC" and "DESC", and the default should be
"DESC" if there is no value. Both settings should be editable from a
single view, i.e. there should only be a single `edit` view for
`SettingsController`. 
4. Update the `artists#index` action to order by the `artist_sort_order`
   and the `songs#index` action to order songs by the `song_sort_order`.
5. Add two `boolean` fields to the `Settings` model:
   `allow_create_artists` and `allow_create_songs`. Set the default
value to `true`.
6. Implement an `AccessControl` controller under the `Admin` module with
   actions to edit and update the two new fields.
7. Implement routes and views to manipulate the `allow_create_songs` and
   `allow_create_artists`, again using radio buttons.
8. Update the `songs#new` and `artists#new` actions to check the access
   control settings and redirect to `/songs` and `/artists`,
respectively, if creation is disabled.
9. Make sure tests pass.
10. Ride the bull. Feel the flow.

![Happy Gilmore](http://i.giphy.com/h2Q9ZYee54UOk.gif)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/namespaced-routes-lab' title='Objectives'>Objectives</a> on Learn.co and start learning to code for free.</p>
