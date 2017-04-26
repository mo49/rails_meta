module ApplicationHelper

  def default_meta_tags
    {
      site: Settings.site.name,
      reverse: false,    # タイトルタグ内の表記順をページタイトル|サイトタイトルの順にする
      title: @page_title,
      description: @page_description||Settings.site.meta.description,
      keywords: @page_keywords||Settings.site.meta.keywords,
      canonical: url_for(only_path: false, protocol: 'https'),
      icon: Settings.site.meta.favicon_url,
      og: default_og,
      twitter: default_twitter
    }
  end

  def default_og
    return if noindex?
    {
      title: :title,
      description: :description,
      type: Settings.site.meta.og.type,
      url: url_for(only_path: false, protocol: 'https'),
      image: page_og_image,
      site_name: Settings.site.name,
      locale: 'ja_JP'
    }
  end

  def page_og_image
    @page_image||image_url(Settings.site.meta.og.image)
  end

  def default_twitter
    return if noindex?
    {
      card: "summary_large_image",
      title: :title,
      description: :description,
      image: page_twitter_image
    }
  end

  def page_twitter_image
    @page_image||image_url(Settings.site.meta.twitter.image)
  end

  def noindex?
  end

end
