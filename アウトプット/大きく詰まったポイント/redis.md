# わからない点
## エラーの内容
user_mailerを作成するために以下のコードを実行
```
bin/rails generate mailer UserMailer
```
するとmailerが作成されずに、以下のエラーが発生。
```
/Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootstrap-5.1.0/lib/bootstrap/version.rb:4: warning: already initialized constant Bootstrap::VERSION
/Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootstrap-sass-3.4.1/lib/bootstrap-sass/version.rb:2: warning: previous definition of VERSION was here
/Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootstrap-5.1.0/lib/bootstrap/version.rb:5: warning: already initialized constant Bootstrap::BOOTSTRAP_SHA
/Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootstrap-sass-3.4.1/lib/bootstrap-sass/version.rb:3: warning: previous definition of BOOTSTRAP_SHA was here
/Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/configuration.rb:226:in `const_get': uninitialized constant ActionDispatch::Session::RedisStore (NameError)
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/configuration.rb:226:in `session_store'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/default_middleware_stack.rb:58:in `block in build_stack'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/actionpack-5.2.6/lib/action_dispatch/middleware/stack.rb:47:in `initialize'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/default_middleware_stack.rb:15:in `new'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/default_middleware_stack.rb:15:in `build_stack'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application.rb:576:in `default_middleware_stack'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/engine.rb:508:in `block in app'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/engine.rb:506:in `synchronize'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/engine.rb:506:in `app'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/finisher.rb:47:in `block in <module:Finisher>'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/initializable.rb:32:in `instance_exec'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/initializable.rb:32:in `run'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/initializable.rb:61:in `block in run_initializers'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:228:in `block in tsort_each'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:350:in `block (2 levels) in each_strongly_connected_component'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:431:in `each_strongly_connected_component_from'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:349:in `block in each_strongly_connected_component'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:347:in `each'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:347:in `call'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:347:in `each_strongly_connected_component'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:226:in `tsort_each'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:205:in `tsort_each'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/initializable.rb:60:in `run_initializers'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application.rb:361:in `initialize!'
        from /Users/naoya/ruby_project/instagram_copy/instagram_copy/config/environment.rb:5:in `<main>'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootsnap-1.9.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:23:in `require'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootsnap-1.9.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:23:in `block in require_with_bootsnap_lfi'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootsnap-1.9.1/lib/bootsnap/load_path_cache/loaded_features_index.rb:92:in `register'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootsnap-1.9.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:22:in `require_with_bootsnap_lfi'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootsnap-1.9.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:31:in `require'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application.rb:106:in `preload'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application.rb:157:in `serve'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application.rb:145:in `block in run'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application.rb:139:in `loop'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application.rb:139:in `run'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application/boot.rb:19:in `<top (required)>'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require'
        from -e:1:in `<main>'
```
## 試したこと
同様のエラーの結果でヒットしたものが少なく、あまり情報が得られなかった。ヒットしたものはbootstrap-sassをインストールするというものだった。一旦gem fileからbootstrap-sassを削除し、bootstrapのみ、bootstrap-sassのみ、両方インストールした状態、でrails g mailer UserMailerを実行したが、変わらず。  
お手数ですが、お知恵をいただければと思います。

## bootstrapを削除
bundle exec gem unistall bootstrapをして、gem fileから削除。
```
/Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/configuration.rb:226:in `const_get': uninitialized constant ActionDispatch::Session::RedisStore (NameError)
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/configuration.rb:226:in `session_store'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/default_middleware_stack.rb:58:in `block in build_stack'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/actionpack-5.2.6/lib/action_dispatch/middleware/stack.rb:47:in `initialize'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/default_middleware_stack.rb:15:in `new'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/default_middleware_stack.rb:15:in `build_stack'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application.rb:576:in `default_middleware_stack'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/engine.rb:508:in `block in app'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/engine.rb:506:in `synchronize'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/engine.rb:506:in `app'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application/finisher.rb:47:in `block in <module:Finisher>'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/initializable.rb:32:in `instance_exec'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/initializable.rb:32:in `run'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/initializable.rb:61:in `block in run_initializers'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:228:in `block in tsort_each'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:350:in `block (2 levels) in each_strongly_connected_component'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:431:in `each_strongly_connected_component_from'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:349:in `block in each_strongly_connected_component'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:347:in `each'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:347:in `call'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:347:in `each_strongly_connected_component'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:226:in `tsort_each'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/tsort.rb:205:in `tsort_each'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/initializable.rb:60:in `run_initializers'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/railties-5.2.6/lib/rails/application.rb:361:in `initialize!'
        from /Users/naoya/ruby_project/instagram_copy/instagram_copy/config/environment.rb:5:in `<main>'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootsnap-1.9.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:23:in `require'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootsnap-1.9.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:23:in `block in require_with_bootsnap_lfi'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootsnap-1.9.1/lib/bootsnap/load_path_cache/loaded_features_index.rb:92:in `register'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootsnap-1.9.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:22:in `require_with_bootsnap_lfi'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/bootsnap-1.9.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:31:in `require'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application.rb:106:in `preload'
MacBook-Pro:instagram_copy naoya$       from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application.rb:157:in `serve'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application.rb:145:in `block in run'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application.rb:139:in `loop'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application.rb:139:in `run'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/gems/2.6.0/gems/spring-2.1.1/lib/spring/application/boot.rb:19:in `<top (required)>'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require'
        from /Users/naoya/.rbenv/versions/2.6.4/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require'
        from -e:1:in `<main>'
```
このようなエラーに変わりました。
redisという記載があったので、現在redis周辺について調べています。

# 解決方法
bootstrapを削除すると原因がredisに関することでありそうであったため、redisについて調べたところ、原因は以下のコードにあるようだった。
```
  config.session_store :redis_store, servers: 'redis://localhost:6379', expire_after: 1.day
```
このコードはredis-railsというgemを使ってセッション管理を行うというコードであったが、自分はredisをgemではなくbrewでインストールしてしまっていたことによって起こってしまったと仮定。gem redis-railsを bundleし、railsコマンドを実行すると、無事に成功しました。