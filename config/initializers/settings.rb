class Settings < Settingslogic
  namespace Rails.env
  source "#{Rails.root}/config/settings.yml"
end