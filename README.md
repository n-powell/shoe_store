# MALL-Z
### _Mall shoe store directory_
### _May 12, 2017_

This is a sample shoe mall with the ability to add stores and shoe brands.

### About
This is a test site that allows a mall to add Shoe stores and shoe brands to a list of mall stores. Stores can be created with a name. The name can then be created, read, updated, and deleted. Shoe brands can be created with a brand name and a price. These brands can then be associated with a store so that you can view the stores available brands. Brands can also be removed from the association with the store if desired.

### Installing

* _Ensure you have postgres and psql installed on your machine_

* _First run postgres in terminal by running $postgres_

* _create the database by running rake db:create_

* _now run rake db:migrate_

* _now run rake db:test:prepare_

* _now navigate to the project folder and run bundle_

* _now navigate to the project folder and run $ ruby app.rb_

* _Navigate to your browser of choice and put in the url localhost:4567_

## Built With

* Ruby
* Sinatra
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* Jquery https://jquery.com/

# some gems you will want to have installed
* rspec
* capybara
* sinatra
* activerecord
* shoulda-matchers
* rake
* pg

## Authors
* Nick Powell

## License

MIT License

Copyright (c) Nick Powell

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
