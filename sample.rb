require 'mini_racer'

CONTEXT = MiniRacer::Context.new
CONTEXT.eval(File.read("dist/main.js"))

def rtlcss(css)
  CONTEXT.eval("rtlcss.default.process(#{css.inspect})")
end

css = "a { right: 100px }"
puts "before #{css}"
puts "after #{rtlcss(css)}"
