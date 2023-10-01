// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import { application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const context = require.context(".", true, /_controller\.js$/)
application.load(definitionsFromContext(context))
