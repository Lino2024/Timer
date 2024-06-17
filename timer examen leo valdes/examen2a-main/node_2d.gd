extends CanvasLayer

signal start_timer_btn
var minutos= 0
var segundos= 0
var decimales= 0 
var is_playing= false
 
func update_decimales_label():
	decimales= decimales+1
	$Decimales_label. text= "decimales: %d"%(decimales)
	if decimales > 9:
		decimales = 0

func update_segundos_label():
	if decimales > 9:
		segundos = segundos+1
		$Segundos_label.text="segundos: %d"%(segundos)
	is_playing= false
	$Timer_principal.start()
	$Start_timer.visible= true

