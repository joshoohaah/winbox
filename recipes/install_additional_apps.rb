node['winbox']['additional_apps'].each do |pack|
  chocolatey_package pack do
    options '--allow-empty-checksums --ignore-checksums'
    action :install
  end
end
