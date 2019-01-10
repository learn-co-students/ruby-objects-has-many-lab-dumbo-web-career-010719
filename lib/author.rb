class Author
    attr_accessor :name, :post

    def initialize(name)
        @name=name
        @Posts=[]
    end

    def posts
        @Posts
    end

    def add_post(post)
        @post=post
        @post.author=self
        posts<<@post
    end

    def add_post_by_title(name)
        add_post(Post.new(name))
    end

    def self.post_count
        count=0
        Post.all.collect do |item|
            item.author_name == self.name
            count+=1
        end
        count
    end
end