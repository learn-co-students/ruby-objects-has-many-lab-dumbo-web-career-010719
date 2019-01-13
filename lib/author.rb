class Author

    attr_accessor :name
    attr_reader :posts

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_post(message)
        self.posts << message
        message.author = self
    end

    def add_post_by_title(message)
        invoice = Post.new(message)
        self.posts << invoice
        invoice.author = self
    end

    def self.post_count
        count = 0
        self.all.each do |message|
            count += message.posts.length
        end
        count
    end
end