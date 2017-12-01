module GoogleHelper
  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=800x150&zoom=13"
  end
end
