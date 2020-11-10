class CommentSerializer

    def initialize(comment_object)
        @comment = comment_object
      end

      def to_serialized_json
        @comment.to_json(:include => {
          :user => {:only => [:username, :user_id, :score]},
        }, :except => [:updated_at])
      end

end 