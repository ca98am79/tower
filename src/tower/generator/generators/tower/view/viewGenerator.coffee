class Tower.Generator.ViewGenerator extends Tower.Generator
  sourceRoot: __dirname
  
  run: ->
    @inside "app", ->
      @inside "views", ->
        @directory "#{@model.pluralName}"
    
    views = [
      "_form",
      "_item",
      "_list",
      "_table",
      "edit",
      "index",
      "new",
      "show"
    ]
    
    for view in views
      @template "#{view}.coffee", "app/views/#{@model.pluralName}/#{view}.coffee"

module.exports = Tower.Generator.ViewGenerator
