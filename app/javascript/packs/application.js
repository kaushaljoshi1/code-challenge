// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
window.Rails = require("@rails/ujs")

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import "css/site";

import "bootstrap";

require("trix");
require("@rails/actiontext");
require("jquery")
require("@nathanvda/cocoon")

import { Application } from "stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";

const application = Application.start();
const context = require.context("../controllers", true, /\.js$/);

/*$("#selOwner").select2({
    ajax: {
        url: "<% owner_path(format: 'json') %>",

        dataType: 'json',
        results: function(data,page) {
            return {
                results: $.map(data, function (owner, i) {
                    return {id: owner.id, text: owner.email}


                })
            }
        }
    }
});*/

application.load(definitionsFromContext(context));
