node['winbox']['additional_apps'].each do |pack|
#   chocolatey_package pack do
#     options '--allow-empty-checksums --ignore-checksums'
#     returns [0, 3010]
#     action :install
#   end
# end
powershell_script 'install apps' do
  code <<-EOH
  chocolatey install #{pack} -y --allow-empty-checksums --ignore-checksums
  EOH
  returns [0, 3010]
end
end
