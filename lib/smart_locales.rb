require "smart_locales/version"
require "smart_locales/title"
require "smart_locales/title/helpers"

module SmartLocales
  ActionView::Base.send :include, SmartLocales::Title::Helpers
  I18n.load_path << gem_root + '/lib/smart_locales/title/helpers.yml'
end
