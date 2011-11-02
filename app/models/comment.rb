class Comment < ActiveRecord::Base
    
    validates :commenter, :presence => true
    validates :email,     :format   => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i , :message => 'Only email address allowed' },
                          :presence => true
    validates :website,   :format   => { :with => /((http|https):\/\/|[a-zA-Z0-9]+(\.[a-zA-Z0-9]+)+.*)$/ , :message => 'Only url allowed'}

    validates :body,      :presence => true

    belongs_to :post


end
