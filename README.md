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

**Note:** Since we're building new features on an existing project that
already has tests, part of the job is to make sure the tests that
already pass at the beginning still pass when you're done!

1. Create a model called `Preference` with two `string` fields:
   `song_sort_order` and `artist_sort_order` and two `boolean` fields:
`allow_create_artists` and `allow_create_songs`.
2. Implement a `SettingsController` under an `Admin` module with `index` and `update` actions. It will be responsible for maintaining two
`preference` entries named `song_sort_order` and `artist_sort_order`. There
should only be one record for each so try `first_or_create` to
create an `@preference` in the controller. The default `value` for each sort preference should be "DESC". Redirect to `settings#index` after update.
  * **Hint:** Because Rails doesn't know how to "count" `Settings`, the
    helper for the index route will be different than you're used to.
Instead of `admin_settings_path` going to `/admin/settings`, you'll need
to use `admin_settings_index_path`. Make sure to run `rake routes` to
verify your URL helper names.
3. Implement routes and views for the `SettingsController`. Use
   radio buttons for the values. Acceptable values are "ASC" and "DESC".
Both preferences should be editable from the `index` view whether new or existing.
4. Update the `artists#index` action to order by `name` with `artist_sort_order`
   and the `songs#index` action to order songs by `title` with `song_sort_order`. Make sure to check that the value exists and set it to the default if it doesn't.
5. Implement an `AccessController` under the `Admin` module with
   `index` and `update` actions. It will be responsible for maintaining
two preference entries named `allow_create_artists` and
`allow_create_songs`. As with the `SettingsController`, use
`first_or_create` to ensure we only have one `preference`. The default values for `allow_create_songs` and `allow_create_artists` should be `true`. Redirect to `access#index` after update.
6. Implement routes and views to manipulate for the `AccessController`. Use radio buttons for the values. Acceptable values are
"true" and "false". Follow the same guidelines as for
`SettingsController` views in step 3.
  * **Note:** We will have the same URL helper change here as we do for
    `SettingsController`, so check your `rake routes` to ensure you use
the right helpers.
7. Update the `songs#new` and `artists#new` actions to check the access
   control preferences and redirect to `/songs` and `/artists`,
respectively, if creation is disabled.
8. Make sure tests pass.
9. Ride the bull. Feel the flow.

![Happy Gilmore](http://i.giphy.com/h2Q9ZYee54UOk.gif)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/namespaced-routes-lab' title='Objectives'>Objectives</a> on Learn.co and start learning to code for free.</p>
