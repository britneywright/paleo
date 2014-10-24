desc "Add foods"
task :fetch_foods => :environment do
  require 'nokogiri'
  require 'open-uri'

  url = "http://paleoporn.net/food/"
  doc = Nokogiri::HTML(open(url))

  doc.css(".post").each do |item|
    title = item.at_css(".entry-title").text.gsub(/Is |Are | Paleo\?/, "").downcase
    paleo = item.at_css(".isitpaleo_answer").text
    if paleo == "Yes" || paleo == "No"
      if paleo == "Yes"
        paleo = paleo.gsub(/Yes/, "true")
      elsif paleo == "No"
        paleo = paleo.gsub(/No/, "false")
      end
      Food.find_or_create_by(:name => title, :paleo => paleo)
    end
  end

end