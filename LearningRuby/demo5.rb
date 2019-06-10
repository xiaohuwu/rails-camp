
include Math
 p PI
 p sqrt(2)

module M
   def meth
     "M#meth"
   end
end

class C
  include M
end

c = C.new

p c.meth


