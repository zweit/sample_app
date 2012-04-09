
puts "require success"

person1 = {:first => "Roger", :last => "Federer"}

#puts person1

person2 = {:first => "Rafael", :last => "Nadal"}
person3 = {:first => "Novak", :last => "Djokovic"}

#params = {}
#params[:father] = person1
#params[:mother] = person2
#params[:child] = person3


params = {:father => person1, :mother => person2, :child => person3}

#puts "params[:father][:first] = #{params[#{:father}][#{:first}]}"


puts params[:father][:last]
#puts "params[:father][:first] = #{#{params[#{:father}]}[#{:first}]}"
