# TO DO
Take out the genre column and all references to genres in background, it can inherit from the project it's assigned to and that was only there to practice drop-down menus anyway.
Maybe associate projects with books on the wish list? Oooh, then you can cross-reference a count of projects that want a specific book.
Validate that a background document has an associated project? Maybe make a project that's just miscellaneous junk or trash file.
Add a fileloc object type with location(string), created_at(datetime, null: false), updated_at(catetime, null:false), background_id to do the array thing you wanted to do earlier. see forms_and_basic_associations lab.

# 11 February 2021
Okay, finally making a log here.
Practiced drop down menu and autocomplete menu once each, both seem to have to be made from an object
BUT, crucially, they can also just pass in a string from the object rather than the object itself.
(Maybe practice them passing an object association too: forms_and_basic_associations lab)
Tidied up the views some, created a background documents tracker which might be the most useful thing ever.
In the pm, reworked the background documents so that they are created associating with a project (not included in validations), attempted to make an array out of multiple file locations but ran into problems because ActiveRecord already had that as a string. Whoops. There is no 'array' datatype in AR.
BUG NOTE: What the fuck is going on with the artifact routes. That's a few sections later, I guess. 

# 12 February 2021
Added a samples file for all the scrap code accumulated, each lesson that has some code to learn goes in there with explanations.
Scrap code will now be used for code that was entered, now scrapped, to look over to find out what was wrong with it.
Also for random things that I'll want to remember later but have no idea what they're doing now. Like stylesheets. Complicated, JavaScript-having stylesheets.
Updated the about and home pages. Made an about page, in general. 
Too tired to do anything on the to-do list.

