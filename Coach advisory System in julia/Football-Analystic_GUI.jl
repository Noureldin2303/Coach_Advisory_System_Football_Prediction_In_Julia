using Gtk
using Images
using Gtk.ShortNames

win = GtkWindow("Football-Analystic",800,650)
g = GtkGrid()
set_gtk_property!(g, :valign, 402) # center all elements in vertical
set_gtk_property!(g, :halign, 402) # center all elements in horizontal

fimg = Frame()
set_gtk_property!(fimg, :height_request, 50) # 341 px according to image size
set_gtk_property!(fimg, :width_request, 50)

fimg1 = Frame()
set_gtk_property!(fimg1, :height_request, 401) # 341 px according to image size
set_gtk_property!(fimg1, :width_request, 401)

fimg2 = Frame()
set_gtk_property!(fimg2, :height_request, 401) # 341 px according to image size
set_gtk_property!(fimg2, :width_request, 401)


choices = [
  "Liverpool", "Chelsea", "Man United","Man City", "Arsenal","Aston Villa", "Bournemouth","Crystal Palace",
 "Norwich","Fulham", "Leeds", "Leicester","Middlesbrough", "Newcastle", "Sheffield","Everton",
  "Southampton","Stoke","Sunderland","Swansea","Tottenham","Ipswich","Watford","West Ham",
  "West Brom","Birmingham","Hull","Wigan","Blackburn","Cardiff","Bradford","Charlton","Portsmouth","Queens",
"Coventry","Derby","Blackpool","Swindon","Wolves","Burnley","Reading","Bolton"]



# Set the active elements
logo = Image("images/Premier-league.png")
img1 = Image("images/Liverpool.png")
img2 = Image("images/Chelsea.png")

cb1 = GtkComboBoxText()
cb2 = GtkComboBoxText()

for choice in choices
  push!(cb1, choice)
  push!(cb2, choice)
end

set_gtk_property!(cb1, :active, 0)
set_gtk_property!(cb2, :active, 1)

# # change the images according to the combo box active value
signal_connect(cb1, "changed") do widget, others...

  id1 = get_gtk_property(cb1, "active", Int)

  home = Gtk.bytestring(GAccessor.active_text(cb1))

  println("Active element is in List1 is \"$home\" at index $id1")
  
end

signal_connect(cb2, "changed") do widget, others...

  id2 = get_gtk_property(cb2, "active", Int)

  away = Gtk.bytestring(GAccessor.active_text(cb2))
  
  println("Active element is in List1 is \"$away\" at index $id2")
  
end

signal_connect(cb1,:changed) do widget, others...
  id1 = get_gtk_property(cb1, "active", Int)
  home = Gtk.bytestring(GAccessor.active_text(cb1))
  set_gtk_property!(img1, :file, "images/$home.png")
end

signal_connect(cb2,:changed) do widget, others...
  id2 = get_gtk_property(cb2, "active", Int)
  away = Gtk.bytestring(GAccessor.active_text(cb2))
  set_gtk_property!(img2, :file, "images/$away.png")
end

ok = GtkButton("CHECK")

# set logo

push!(fimg, logo)
push!(fimg1, img1)
push!(fimg2, img2)

# place graphical elements into the Grid:
g[1:2,1] = fimg
g[1,2] = fimg1
g[2,2] = fimg2
g[1,4] = cb1
g[2,4] = cb2
g[1:2,5] = ok

set_gtk_property!(g, :column_homogeneous, false)
set_gtk_property!(g, :column_spacing, 30)  # introduce a 15-pixel gap between columns
push!(win, g)
showall(win)
