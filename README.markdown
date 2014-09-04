## example app for https://github.com/rails/rails/issues/15124

*  Start the app
*  GET a url like http://localhost:3000/posts/%E2
*  see a 500 rather than the expected 400

Browser ouput will be:

```
500 Internal Server Error
If you are the administrator of this website, then please read this web application's log file and/or the web server's log file to find out what went wrong.
```

Console output will be something like:
```
Started GET "/posts/%E2" for 127.0.0.1 at 2014-09-04 12:39:19 -0400
  ActiveRecord::SchemaMigration Load (0.1ms)  SELECT "schema_migrations".* FROM "schema_migrations"

ActionController::BadRequest (ActionController::BadRequest):
  actionpack (4.1.1) lib/action_dispatch/routing/route_set.rb:37:in `block in call'
  actionpack (4.1.1) lib/action_dispatch/routing/route_set.rb:33:in `each'
  actionpack (4.1.1) lib/action_dispatch/routing/route_set.rb:33:in `call'
  actionpack (4.1.1) lib/action_dispatch/journey/router.rb:71:in `block in call'
  actionpack (4.1.1) lib/action_dispatch/journey/router.rb:59:in `each'
  actionpack (4.1.1) lib/action_dispatch/journey/router.rb:59:in `call'
  actionpack (4.1.1) lib/action_dispatch/routing/route_set.rb:676:in `call'
  rack (1.5.2) lib/rack/etag.rb:23:in `call'
  rack (1.5.2) lib/rack/conditionalget.rb:25:in `call'
  rack (1.5.2) lib/rack/head.rb:11:in `call'
  actionpack (4.1.1) lib/action_dispatch/middleware/params_parser.rb:27:in `call'
  actionpack (4.1.1) lib/action_dispatch/middleware/flash.rb:254:in `call'
  rack (1.5.2) lib/rack/session/abstract/id.rb:225:in `context'
  rack (1.5.2) lib/rack/session/abstract/id.rb:220:in `call'
  actionpack (4.1.1) lib/action_dispatch/middleware/cookies.rb:560:in `call'
  activerecord (4.1.1) lib/active_record/query_cache.rb:36:in `call'
  activerecord (4.1.1) lib/active_record/connection_adapters/abstract/connection_pool.rb:621:in `call'
  activerecord (4.1.1) lib/active_record/migration.rb:380:in `call'
  actionpack (4.1.1) lib/action_dispatch/middleware/callbacks.rb:29:in `block in call'
  activesupport (4.1.1) lib/active_support/callbacks.rb:82:in `run_callbacks'
  actionpack (4.1.1) lib/action_dispatch/middleware/callbacks.rb:27:in `call'
  actionpack (4.1.1) lib/action_dispatch/middleware/reloader.rb:73:in `call'
  actionpack (4.1.1) lib/action_dispatch/middleware/remote_ip.rb:76:in `call'
  actionpack (4.1.1) lib/action_dispatch/middleware/debug_exceptions.rb:17:in `call'
  actionpack (4.1.1) lib/action_dispatch/middleware/show_exceptions.rb:30:in `call'
  railties (4.1.1) lib/rails/rack/logger.rb:38:in `call_app'
  railties (4.1.1) lib/rails/rack/logger.rb:20:in `block in call'
  activesupport (4.1.1) lib/active_support/tagged_logging.rb:68:in `block in tagged'
  activesupport (4.1.1) lib/active_support/tagged_logging.rb:26:in `tagged'
  activesupport (4.1.1) lib/active_support/tagged_logging.rb:68:in `tagged'
  railties (4.1.1) lib/rails/rack/logger.rb:20:in `call'
  actionpack (4.1.1) lib/action_dispatch/middleware/request_id.rb:21:in `call'
  rack (1.5.2) lib/rack/methodoverride.rb:21:in `call'
  rack (1.5.2) lib/rack/runtime.rb:17:in `call'
  activesupport (4.1.1) lib/active_support/cache/strategy/local_cache_middleware.rb:26:in `call'
  rack (1.5.2) lib/rack/lock.rb:17:in `call'
  actionpack (4.1.1) lib/action_dispatch/middleware/static.rb:64:in `call'
  rack (1.5.2) lib/rack/sendfile.rb:112:in `call'
  railties (4.1.1) lib/rails/engine.rb:514:in `call'
  railties (4.1.1) lib/rails/application.rb:144:in `call'
  rack (1.5.2) lib/rack/lock.rb:17:in `call'
  rack (1.5.2) lib/rack/content_length.rb:14:in `call'
  rack (1.5.2) lib/rack/handler/webrick.rb:60:in `service'
  ~/.rvm/rubies/ruby-2.1.1/lib/ruby/2.1.0/webrick/httpserver.rb:138:in `service'
  ~/.rvm/rubies/ruby-2.1.1/lib/ruby/2.1.0/webrick/httpserver.rb:94:in `run'
  ~/.rvm/rubies/ruby-2.1.1/lib/ruby/2.1.0/webrick/server.rb:295:in `block in start_thread'


Error during failsafe response: ActionController::BadRequest
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/routing/route_set.rb:37:in `block in call'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/routing/route_set.rb:33:in `each'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/routing/route_set.rb:33:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/journey/router.rb:71:in `block in call'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/journey/router.rb:59:in `each'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/journey/router.rb:59:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/routing/route_set.rb:676:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/middleware/show_exceptions.rb:46:in `render_exception'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/middleware/show_exceptions.rb:35:in `rescue in call'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/middleware/show_exceptions.rb:30:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/railties-4.1.1/lib/rails/rack/logger.rb:38:in `call_app'
  ~/.rvm/gems/ruby-2.1.1/gems/railties-4.1.1/lib/rails/rack/logger.rb:20:in `block in call'
  ~/.rvm/gems/ruby-2.1.1/gems/activesupport-4.1.1/lib/active_support/tagged_logging.rb:68:in `block in tagged'
  ~/.rvm/gems/ruby-2.1.1/gems/activesupport-4.1.1/lib/active_support/tagged_logging.rb:26:in `tagged'
  ~/.rvm/gems/ruby-2.1.1/gems/activesupport-4.1.1/lib/active_support/tagged_logging.rb:68:in `tagged'
  ~/.rvm/gems/ruby-2.1.1/gems/railties-4.1.1/lib/rails/rack/logger.rb:20:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/middleware/request_id.rb:21:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/methodoverride.rb:21:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/runtime.rb:17:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/activesupport-4.1.1/lib/active_support/cache/strategy/local_cache_middleware.rb:26:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/lock.rb:17:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/actionpack-4.1.1/lib/action_dispatch/middleware/static.rb:64:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/sendfile.rb:112:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/railties-4.1.1/lib/rails/engine.rb:514:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/railties-4.1.1/lib/rails/application.rb:144:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/lock.rb:17:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/content_length.rb:14:in `call'
  ~/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/handler/webrick.rb:60:in `service'
  ~/.rvm/rubies/ruby-2.1.1/lib/ruby/2.1.0/webrick/httpserver.rb:138:in `service'
  ~/.rvm/rubies/ruby-2.1.1/lib/ruby/2.1.0/webrick/httpserver.rb:94:in `run'
  ~/.rvm/rubies/ruby-2.1.1/lib/ruby/2.1.0/webrick/server.rb:295:in `block in start_thread'
```


