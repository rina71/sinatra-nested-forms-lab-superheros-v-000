class Team
  attr_accessor :name, :motto
  @@all = []
  def initiazie(params={})
    @name = params[:name]
    @motto = params[:motto]

    @@all << self

  end

  def self.all
    @@all
  end

end
