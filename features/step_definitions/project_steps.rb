Then /what/ do
  puts page.body
end

Then /the following projects exist:/ do |table|
  table.hashes.each do |project|
    @project=Project.create! project
  end
end
