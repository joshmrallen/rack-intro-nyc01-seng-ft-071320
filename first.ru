require 'rack'
require 'rack/test'

# Retyping for review because I haven't used Proc before this lab -- Instances of Proc automatically have a call method that runs the block they're initialized with
my_server = Proc.new do
    [200, { 'Content-Type' => 'text/html' }, ["<em>Hello, remember to specify port 3000 with rackup -p 3000 filename.ru</em>"]]
end

run my_server

# who cool, it really did run on 9692:
# [2020-08-01 14:58:58] INFO  WEBrick 1.4.2
# [2020-08-01 14:58:58] INFO  ruby 2.6.1 (2019-01-30) [x86_64-darwin18]
# [2020-08-01 14:58:58] INFO  WEBrick::HTTPServer#start: pid=19602 port=9292

