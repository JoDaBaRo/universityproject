/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb
//= require_tree .
//= require  hello_vue
import 'bootstrap/dist/js/bootstrap'; 
console.log('Hello World from Webpacker')
require('./hello_vue');
require('./sign_up');
require('./people');
require('./theoretical_classes');
require('./practical_classes');
require('./enrollment');
require('./licence_types');
require('./vehicle_categories');
require('./vehicles');
require('./general_costs');
require('./control_tests');
require('./tests');
require('./teacher_categories');
require('./practical_licence_classes');
require('./student_licences');
window.axios = require('axios');
