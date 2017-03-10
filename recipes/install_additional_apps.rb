node['winbox']['additional_apps'].each do |pack|
  chocolatey_package pack do
    options '--allow-empty-checksums --ignore-checksums'
    returns [0, 3010]
    action :install
  end
end
