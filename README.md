# Angular.js for Rails 3 & 4
Make [Angular.js](http://angularjs.org) into Rails Engine. 

## Version
Angular.js 1.2.13.

### Older Versions

For Angular.js 1.0.x, try [1.0 branch](https://github.com/yjchen/angular-rails-engine/tree/1.0) or gem version around 1.0.x.x. So does 1.1.x from its branch.

## Rails 3.2 or later
Include Gemfile,

    gem 'angular-rails-engine'

Add javascripts into application.js

    //= require angular/angular
    //= require angular/angular-resource

## CDN

This gem supports cdn the same as [jquery-rails-cdn](https://github.com/yjchen/jquery-rails-cdn). In the application layout, add

    = angular_js_include_tag :default

and remove corresponding lines in application.js.

### Options

Set :compressed to use minimized library locally like this:

    = angular_js_include_tag :default, :compressed => true

Set :local_copy true to use local copy when CDN is not available.

Remember to add assets name in confign/environments/production.rb:

    config.assets.precompile += %w( angular/angular.min.js)

See https://gist.github.com/3698589 for using Angular.js with Rails assets.

## License

Copyright (c) 2012-2013 Yen-Ju Chen

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
