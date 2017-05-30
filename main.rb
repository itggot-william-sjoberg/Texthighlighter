require 'colorize'

def main
    filename = ARGV[0]
    needle = ARGV[1]
    haystack = read_file(filename)
    positions = linear(needle, haystack)
    print_highlighted_text(haystack, positions)
end 

def read_file (filename)
    
    return File.read(filename)

end

def linear(needle, haystack)

lista=[]
i=0

  while i+needle.size < haystack.size

   part = haystack[i,needle.size]

    if part == needle
      lista << i
      set = i + 1
      j = 1

      while j < needle.size

          lista << set
          set += 1
          j += 1

      end

    end
    i+=1

  end
  return lista
end


    

def print_highlighted_text(haystack,lista)
i=0
j=0

while i < haystack.length
    if i == lista[j]
        j+=1
        print haystack[i].on_blue
    else print haystack[i]
    end
    i+=1
    

end
 

end 

    
main