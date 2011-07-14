require 'yaml'

class ContactInfo
  
  def self.save(info = {})
    echo("Saving information", :blue)
    filename = info[:name].downcase.gsub(/\s+/, "_") + "_#{Time.now.sec}.yml"
    path = File.expand_path(File.join('dex', filename))
    File.open(path, "w") { |file| YAML.dump(info, file) }
  end
  
end