shirgr2 = 0
shirmin2 = 0
shirsec2 = 0
met3 = 0

dolggr2 = 0
dolgmin2 = 0
dolgsec2 = 0 
met4 = 0

shirgr2 = 0
shirmin2 = 0
shirsec2 = 0

met3 = 0

dolggr2 = 0
dolgmin2 = 0
dolgsec2 = 0 
met4 = 0

IO.foreach("input.txt") do |f|
 
if f =~ /are\s(\d{2})\^(\d{2})'(\d{2})'' (\w{2}) \s+and (\d{2})\^(\d{2})'(\d{2})'' (\w{2})/ 

shirgr1 = $1
shirmin1 = $2
shirsec1 = $3

met1 = $4

dolggr1 = $5
dolgmin1 = $6
dolgsec1 = $7 
 
met2 = $8
 
end

if f =~ /at\s(\d{2})\^(\d{2})'(\d{2})'' (\w{2}) \s+and (\d{2})\^(\d{2})'(\d{2})'' (\w{2})/



shirgr2 = $1
shirmin2 = $2
shirsec2 = $3

met3 = $4

dolggr2 = $5
dolgmin2 = $6
dolgsec2 = $7 
met4 = $8
 
end
end

#pi - число pi, rad - радиус сферы (Земли)
 rad = 6875
 
 #координаты двух точек
 #shirgr1 = 41
 #shirmin1 = 46
 #shirsec1 = 0
 #dolggr1 = 50
 #dolgmin1 = 14
 #dolgsec1 = 0
 
 #shirgr2 = 41
 #shirmin2 = 14
 #shirsec2 = 11
 #dolggr2 = 51
 #dolgmin2 = 9
 #dolgsec2 = 0
pi = 3.141592
 
 #в радианах
 rshirgr1 = shirgr1*pi/180
 rshirmin1 = shirmin1*pi/(180*60)
 rshirsec1 = shirsec1*pi/(180*60*60)

 rshir1 = rshirgr1+rshirmin1+rshirsec1

 rdolggr1 = dolggr1*pi/180
 rdolgmin1 = dolgmin1*pi/(180*60)
 rdolgsec1 = dolgsec1*pi/(180*60*60)

 rdolg1 = rdolggr1+rdolgmin1+rdolgsec1

 rshirgr2 = shirgr2*pi/180
 rshirmin2 = shirmin2*pi/(180*60)
 rshirsec2 = shirsec2*pi/(180*60*60)

 rshir2 = rshirgr2+rshirmin2+rshirsec2

 rdolggr2 = dolggr2*pi/180
 rdolgmin2 = dolgmin2*pi/(180*60)
 rdolgsec2 = dolgsec2*pi/(180*60*60)

 rdolg2 = rdolggr2+rdolgmin2+rdolgsec2
 
 #косинусы и синусы широт и разницы долгот
 csh1 = Math.cos(rshir1)
 csh2 = Math.cos(rshir2)
 ssh1 = Math.sin(rshir1)
 ssh2 = Math.sin(rshir2)
 deltadolg = rdolg2 - rdolg1
 cdelta = Math.cos(deltadolg)
 sdelta = Math.sin(deltadolg)
 
 #вычисления длины большого круга
 y = Math.sqrt((csh2*sdelta)**2+(csh1*ssh2-ssh1*csh2*cdelta)**2)
 x = ssh1*ssh2+csh1*csh2*cdelta
 ad = Math.atan2(y,x)
 dist = ad*rad/2
 dist1 = rad/2*Math.acos(ssh1*ssh2+csh1*csh2*cdelta)
 
 print "The distance to the iceberg: ", dist, " miles"
if dist < 100
 puts "denger"
 end
puts
