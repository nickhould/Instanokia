class StaticPagesController < ApplicationController
  def home
  end

  def maploader
  end

  def markersxmltest
  end

  def markers

    lat1 = 41.88166809
    long1 = -87.630836486
    lat2 = 41.885334014
    long2 = -87.631332397
    lat3 = 41.879045151
    long3 = -87.621118162

  	@array = [ {:latitude => lat1, :longitude => long1 },
               {:latitude => lat2, :longitude => long2 },
               {:latitude => lat3, :longitude => long3 }]

  end

  def test
  end
end

