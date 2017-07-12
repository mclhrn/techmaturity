%w(
  .ruby-version
  .rbenv-vars
  /data/tmp/restart.txt
  /data/tmp/caching-dev.txt
).each { |path| Spring.watch(path) }
