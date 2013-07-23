namespace :populate do

  task :category do
    if File.exist?(path)
      raise "ERROR: File '#{path}' already exists"
    end
    system ""
  end


end



task :upandrunning => :environment do
  articles = get_old_articles
  articles.each do |article|
    new_article = Article.create(title: article["title"], 
      description: article["description"], url: article["url"],
      slug: to_slug(article["title"]) )
    populate_tags(article["tags"])
    parse_tags(new_article, article["tags"])
    populate_categories(article["category"])
    parse_categories(new_article, article["category"])
  end
end


def get_old_articles
  ActiveRecord::Base.establish_connection("old_database")
  articles = ActiveRecord::Base.connection.execute("select * from articles")
  ActiveRecord::Base.establish_connection("development")
  articles
end

def populate_tags(tags)
  tags.split(", ").each do |tag|
    Tag.find_or_create_by_description(tag)
  end
end

def parse_tags(new_article, tags)
  tags.split(", ").each do |tag|
    new_article.tags << Tag.find_by_description(tag)
  end
end

def parse_categories(new_article, category)
  Category.find_by_description(category.singularize.titleize).articles << new_article
end

def populate_categories(category)
  Category.find_or_create_by_description(category.singularize.titleize)
end

def to_slug(text)
  text.downcase.gsub(/[^a-z1-9]+/, '-').chomp('-')
end

