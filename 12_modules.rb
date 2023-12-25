#way 1

# $LOAD_PATH << "module_folder"
# require "moral"
# require "trig"

# way2

require_relative 'module_folder/moral'
require_relative 'module_folder/trig'


Trig.sin(Trig::PI) # 3.141592654
Moral.sin(Moral::BAD) # 1