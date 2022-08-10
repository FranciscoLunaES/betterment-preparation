$cat = "gato"
dog = "perro"

def run
  x = 10
  $y = 20
end

def stop
    puts $y
    puts $cat
    puts x
    puts dog
end

run()
stop()