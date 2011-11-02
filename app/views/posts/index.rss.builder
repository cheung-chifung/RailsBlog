xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Posts"
    xml.description "Latest Posts"
    xml.link posts_url
    
    for post in @posts
      xml.item do
        xml.title post.title
        if post.preview == nil or post.preview == ''
            xml.description post.content 
        else
            xml.description post.preview + '<br/>' + link_to('Read more..', post_url(post.name)) 
        end
            
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link post_url(post.name)
        xml.guid post_url(post.name)
      end
    end
  end
end
