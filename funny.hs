-- creating left to right go function chain

fuc :: (a -> b) -> a -> b 
fuc f a = f a

(~>) ::  a -> (a -> b) ->  b 
(~>)  a f = fuc f a

x = [1,2,3,4] ~> map(\a -> show a) ~> map(\a -> a++" Foo")
