class Hero
  attr_accessor :name, :power, :bio
  @@all = []
  def initiazie(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@all << self

  end

  def self.all
    @@all
  end

end