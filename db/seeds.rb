streets2 = ["Karl-Liebknecht-Straße, Berlin",
"Karl-Marx-Allee, Berlin",
"Kopenhagener Straße, Berlin",
"Kurfürstendamm, Berlin",
"Legiendamm, Berlin",
"Lehrter Strasse, Berlin",
"Leipziger Straße, Berlin",
"Leuschnerdamm, Berlin",
"Majakowskiring, Berlin",
"Mehringdamm, Berlin",
"Motzstraße, Berlin",
"Niederkirchnerstraße, Berlin",
"Oranienburger Straße, Berlin",
"Ossietzkystraße, Berlin",
"Paul-Lincke-Ufer, Berlin",
"Prenzlauer Allee, Berlin",
"Rigaer Straße, Berlin",
"Rosa-Luxemburg-Straße, Berlin",
"Schönhauser Allee, Berlin",
"Schwedter Straße, Berlin",
"Siegesallee, Berlin"]

streets2.each do |street|
  Harass.create(start_address: street, description: Faker::Lorem.sentence , happened_at: Faker::Time.between_dates(from: 2.days.ago, to: Date.today, period: :evening) )
end