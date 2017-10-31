module SmartLocales::Title::Helpers
  def title(page_title = default_title, area = :default)
    if area != :default
      title_text = "#{page_title} | #{t("area.#{area}")} | #{t('application.name')}"
    elsif page_title == :app_name
      title_text = t('application.name')
    else
      title_text = "#{page_title} | #{t('application.name')}"
    end
    content_for(:title) { title_text }
  end

  def default_title
    t('.title')
  end

  def page_title(action, genitive_model_name)
    t("helpers.actions.#{action}") + ' ' + genitive_model_name.downcase
  end
end
