When /^the following tickets exist:$/ do |table|
  table.hashes.each do |ticket|
    @ticket=@project.tickets.create! ticket
  end
end
