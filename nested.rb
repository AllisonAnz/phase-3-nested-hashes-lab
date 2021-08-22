
def hopper
  # operates on the programmer_hash and returns the value of the :grace_hopper key
	programmer_hash = 
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }
    programmer_hash[:grace_hopper]
end
puts hopper
#=> {:known_for=>"COBOL", :languages=>["COBOL", "FORTRAN"]}

def alan_kay_is_known_for
  # operates on the programmer_hash and returns the value of what Alan Kay is known for
	# What combination of keys would you use to return the value of the :known_for key of :alan_kay?
	
	programmer_hash = 
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }
    programmer_hash[:alan_kay][:known_for]
end
puts alan_kay_is_known_for
#=> Object Orientation

def dennis_ritchies_language
  # operates on the programmer_hash and returns the value of Dennis Ritchie's language as a string 
	programmer_hash = 
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }
    programmer_hash[:dennis_ritchie][:languages][0]
end
puts dennis_ritchies_language
#=> C

def adding_matz
# add the following information to the top level of programmer_hash
# :yukihiro_matsumoto => {
#   :known_for => "Ruby",
#   :languages => ["LISP", "C"]
# }
# return the entire updated hash
#  operates on the programmer_hash and adds a key/value pair to the top level of the hash, returning the newly-added-to hash 

	programmer_hash = 
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }
    programmer_hash[:yukihiro_matsumoto] = {}
		 programmer_hash[:yukihiro_matsumoto][:known_for] = "Ruby"
		 programmer_hash[:yukihiro_matsumoto][:languages] = ["LISP", "C"]
		 programmer_hash
end

puts adding_matz
#=> {:grace_hopper=>{:known_for=>"COBOL", :languages=>["COBOL", "FORTRAN"]}, 
#   :alan_kay=>{:known_for=>"Object Orientation", :languages=>["Smalltalk", "LISP"]}, 
#   :dennis_ritchie=>{:known_for=>"Unix", :languages=>["C"]}, 
#   :yukihiro_matsumoto=>{:known_for=>"Ruby", :languages=>["LISP", "C"]}}
puts ""

def changing_alan
  # change what Alan Kay is :known_for to the value of the alans_new_info variable. 
  # return the entire updated hash
  #  operates on the programmer_hash and changes what Alan Kay is known for, returning the newly-changed hash

	programmer_hash = 
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }

    alans_new_info = "GUI"
    programmer_hash[:alan_kay][:known_for] = alans_new_info
    programmer_hash
end

puts changing_alan
# => {:grace_hopper=>{:known_for=>"COBOL", :languages=>["COBOL", "FORTRAN"]}, 
#     :alan_kay=>{:known_for=>"GUI", :languages=>["Smalltalk", "LISP"]}, 
#     :dennis_ritchie=>{:known_for=>"Unix", :languages=>["C"]}}
puts ""

def adding_to_dennis
  # add "Assembly" to Dennis Ritchie's languages array
  # return the entire updated hash
  #  operates on the programmer_hash and adds 'Assembly' to Dennis Ritchie's languages, returning the newly-added-to-hash

	programmer_hash = 
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }

    programmer_hash[:dennis_ritchie][:languages] << "Assembly"
    programmer_hash
end

puts adding_to_dennis
# {:grace_hopper=>{:known_for=>"COBOL", :languages=>["COBOL", "FORTRAN"]}, 
#  :alan_kay=>{:known_for=>"Object Orientation", :languages=>["Smalltalk", "LISP"]}, 
#  :dennis_ritchie=>{:known_for=>"Unix", :languages=>["C", "Assembly"]}}