module Application
  include Utilities
  
  def self.run!
    echo("Ruby Rolodex v 1.0", :green)
    loop do
      name = ask("Enter a name: ...type [q] to quit")
      break if name.downcase.eql?('q')
      age = ask("Enter their age:")
      email = ask("What's their email address?")
      echo("You've entered\nName: #{name}\nAge: #{age}\nEmail: #{email}\n", :yellow)
      ContactInfo.save({name: name, age: age, email: email}) if agree("Is this correct? Yn", true)
    end
    echo("Goodbye!", :green)
  end
  
end