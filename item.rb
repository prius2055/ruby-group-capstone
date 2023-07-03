class Item
     attr_accessor :id, :genre, :author, :source, :label, :publish_date, :archived


    def initialize
        @id = Random.rand(1..1000)
        @genre = genre
        @author = author
        @source = source 
        @label = label
        @publish_date = publish_date
        @archived = archived
    end

    

    def move_to_archive
        if can_be_archived?
            @archived = true
        end
    end
end