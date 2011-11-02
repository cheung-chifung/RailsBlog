class Page < ActiveRecord::Base
    validates :title, :presence    => true,
                      :length      => {:minimum => 5}

    validates :name,  :presence    => true, 
                      :length      => {:minimum => 5},
                      :uniqueness  => true,
                      :format      => {:with => /^[-_a-zA-Z0-9]+$/, :message => 'Only letters and digits allowed'}


end
