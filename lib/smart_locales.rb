require "smart_locales/version"
require "smart_locales/title/helper"

module SmartLocales
  ActionView::Base.send :include, SmartLocales::Title::Helper
end
