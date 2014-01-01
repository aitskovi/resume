guard :shell do
  watch /templates\/*/ do
    `ruby resume.rb`
  end

  watch /resume.yml/ do
    `ruby resume.rb`
  end
end

