require "smart_locales/version"
require "smart_locales/title"
require "smart_locales/title/helpers"

module SmartLocales
  gem_root = Gem::Specification.find_by_name('smart_locales').gem_dir
  I18n.load_path << gem_root + '/lib/smart_locales/title/helpers.yml'
  ActionView::Base.send :include, SmartLocales::Title::Helpers
end
