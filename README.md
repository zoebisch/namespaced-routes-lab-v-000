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

1. Create a model called `Preference` with two string fields: `name` and
   `value`.
2. Implement a `SettingsController` under an `Admin` module with actions
   to edit and update. It will be responsible for maintaining two
`preference` entries named `song_sort_order` and `artist_sort_order`. There
should only be one record for each so remember `find_or_create_by`. The
default `value` for each should be "DESC".
3. Implement routes and views for the `SettingsController`. Use
   radio buttons for the values. Acceptable values are "ASC" and "DESC".
Both preferences should be editable from a single view, i.e. there should only be a single `edit` view for
`SettingsController`. 
4. Update the `artists#index` action to order by the `artist_sort_order`
   and the `songs#index` action to order songs by the `song_sort_order`.
5. Implement an `AccessControl` controller under the `Admin` module with
   actions to edit and update. It will be responsible for maintaining
two preference entries named `allow_create_artists` and
`allow_create_songs`. Again, there should only be one record for each.
The default value should be `true`.
6. Implement routes and views to manipulate for the `AccessControl`
   controller. Use radio buttons for the values. Acceptable values are
"true" and "false".
7. Update the `songs#new` and `artists#new` actions to check the access
   control preferences and redirect to `/songs` and `/artists`,
respectively, if creation is disabled.
8. Make sure tests pass.
9. Ride the bull. Feel the flow.

![Happy Gilmore](http://i.giphy.com/h2Q9ZYee54UOk.gif)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/namespaced-routes-lab' title='Objectives'>Objectives</a> on Learn.co and start learning to code for free.</p>
