# Grape Swagger UI (for rails app)

## 1. Intro

  Grape Swagger UI is gem for documentating grapes apis which are integrated in rails. This project is started because swagger-ui_rails had bugs  and which don't let us manage status code, models or schema correctly and in most cases that area was blank. but old version of swagger-ui worked better with grape-swagger gem. so I am using  ***2.0.24** version of swagger ui. 
  
## 2. Installation 

Place this line somewhere in your Gemfile 

	gem 'grape_swagger_ui'
	
and run 

	bundle install
	
Next you need to mount in your *config/routes.rb* file

	Rails.application.routes.draw do
	  mount  GrapeSwaggerUi::Engine => '/apidoc'
	end
	
if your api is on **/api/grapw_swagger** then you should be good else you would need to add path in configuration file.

	GrapeSwaggerUi.url = '/api/swagger_doc.json'



	
	
## Configurations

Create a file in *config/initializers/* and set configurations there.

	config/initializers/grape_swagger_ui.rb
	
	
| variable | default value | description |
|:-------- | :------------- | :-----------|
| url      | /api/swagger_doc | this is the path of api which will response with swagger spec|
| doc_expansion| 'none' | 'none' option make all items collapse, 'list' will show some info, 'full' expands all api to show all details|
| dom_id | 'swagger-ui-container' | where apis are documents are displayed in body|
| supported_submit_methods | ['get', 'post', 'put', 'delete', 'patch'] | what methods api supports |
| sorter | 'alpha' |  sort by name or function |
| authenticate_method | -> { puts 'No Authentication Required.' } | if you want to secure your API documentation you provide the method which checks if user signed in or else redirects, in devise its :authenticate_user! (user part depends on resource name) |

### Example how to configure 

In your *config/initializers/grape_sagger_ui.rb* file

	GrapeSwaggerUi.authenticate_method = :authenticate_user!
	GrapeSwaggerUi.url = '/api/swagger_doc.json'
	GrapeSwaggerUi.supported_submit_methods = ['get', 'post']
	


## The MIT License (MIT)

Copyright (c) 2015 Ismail Akram

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
 
	

