(deftemplate roller
	(multislot nombre(type SYMBOL))
	(slot marca (type SYMBOL))
	(slot precio(type FLOAT))
	(slot modalidad(type SYMBOL))
	(slot sexo(type SYMBOL)(allowed-symbols neutro mujer))
)

(deftemplate persona
	(slot nombre(type SYMBOL))
	(slot sexo(type SYMBOL)(allowed-symbols hombre mujer))
	(slot presupuesto(type INTEGER))
	(slot modalidad(type SYMBOL)(allowed-symbols freeskate, agresivo, fitness, speed))
)

(deffacts pp
	(persona (nombre P))
)

(deffacts patines
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	PATINES AGRESIVOS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	(roller (nombre STREET_5)(marca OXELO)(precio 94.95)(modalidad freeskate)(sexo neutro))
	(roller (nombre TV3)(marca VALO)(precio 220.0)(modalidad agresivo)(sexo neutro))
	(roller (nombre GENESYS_7.4)(marca RAZORS)(precio 175.0)(modalidad agresivo)(sexo neutro))
	(roller (nombre M12 UFS)(marca ROCES)(precio 150.0)(modalidad agresivo)(sexo neutro))
	(roller (nombre OS BASIS)(marca REMZ)(precio 119.95)(modalidad agresivo)(sexo neutro))
	(roller (nombre PANIK)(marca ANARCHY)(precio 73.95)(modalidad agresivo)(sexo neutro))
	(roller (nombre STREET CULT)(marca RAZORS)(precio 129.99)(modalidad agresivo)(sexo neutro))
	(roller (nombre THRONE UFS EVO)(marca USD)(precio 179.99)(modalidad agresivo)(sexo neutro))
	(roller (nombre VII CLAN)(marca USD)(precio 149.99)(modalidad agresivo)(sexo neutro))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	PATINES FITNESS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	(roller (nombre MAXXUM_84 W2014)(marca ROLLERBLADE)(precio 249.95)(modalidad fitness)(sexo neutro))
	(roller (nombre PHUZION ZETA)(marca POWERSLIDE)(precio 159.99)(modalidad fitness)(sexo neutro))
	(roller (nombre PLUME F)(marca FILA)(precio 149.95)(modalidad fitness)(sexo mujer))
	(roller (nombre PLUME M)(marca FILA)(precio 149.95)(modalidad fitness)(sexo neutro))
	(roller (nombre DIABOLO)(marca OXELO)(precio 69.95)(modalidad fitness)(sexo neutro))
	(roller (nombre FIT_3 F)(marca OXELO)(precio 39.95)(modalidad fitness)(sexo mujer))
	(roller (nombre FIT_3 M)(marca OXELO)(precio 39.95)(modalidad fitness)(sexo neutro))
	(roller (nombre FIT_5 F)(marca OXELO)(precio 59.95)(modalidad fitness)(sexo mujer))
	(roller (nombre FIT_5 M)(marca OXELO)(precio 59.95)(modalidad fitness)(sexo neutro))
	(roller (nombre SNEAK IN)(marca OXELO)(precio 99.95)(modalidad fitness)(sexo neutro))
	(roller (nombre KINETIC F)(marca K2)(precio 82.0)(modalidad fitness)(sexo mujer))
	(roller (nombre KINETIC M)(marca K2)(precio 82.0)(modalidad fitness)(sexo neutro))
	(roller (nombre FIT X PRO)(marca K2)(precio 165.90)(modalidad fitness)(sexo neutro))
	(roller (nombre FORMULA_82)(marca ROLLERBLADE)(precio 102.50)(modalidad fitness)(sexo neutro))
	(roller (nombre PHUZION GAMMA F)(marca POWERSLIDE)(precio 120.0)(modalidad fitness)(sexo mujer))
	(roller (nombre PHUZION GAMMA M)(marca POWERSLIDE)(precio 120.0)(modalidad fitness)(sexo neutro))
	(roller (nombre MASTER WAVE)(marca FILA)(precio 84.95)(modalidad fitness)(sexo neutro))
	(roller (nombre SIRIO COMPOSITE)(marca ROLLERBLADE)(precio 109.95)(modalidad fitness)(sexo neutro))
	(roller (nombre ZETRABLADE F)(marca ROLLERBLADE)(precio 99.95)(modalidad fitness)(sexo mujer))
	(roller (nombre ZETRABLADE M)(marca ROLLERBLADE)(precio 99.95)(modalidad fitness)(sexo neutro))
	(roller (nombre MACOBLADE_80)(marca ROLLERBLADE)(precio 139.95)(modalidad fitness)(sexo neutro))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	PATINES FREESKATE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	(roller (nombre HIGH LIGHT)(marca SEBA)(precio 349.99)(modalidad freeskate)(sexo neutro))
	(roller (nombre FR2_80)(marca SEBA)(precio 199.99)(modalidad freeskate)(sexo neutro))
	(roller (nombre FRX_80)(marca SEBA)(precio 159.99)(modalidad freeskate)(sexo neutro))
	(roller (nombre IMPERIAL PRO)(marca POWERSLIDE)(precio 229.98)(modalidad freeskate)(sexo neutro))
	(roller (nombre BRONX)(marca POWERSLIDE)(precio 69.95)(modalidad freeskate)(sexo neutro))
	(roller (nombre IMPERIAL)(marca POWERSLIDE)(precio 159.99)(modalidad freeskate)(sexo neutro))
	(roller (nombre TWISTER_80)(marca ROLLERBLADE)(precio 229.95)(modalidad freeskate)(sexo neutro))
	(roller (nombre FUSION X3)(marca ROLLERBLADE)(precio 170.01)(modalidad freeskate)(sexo neutro))
	(roller (nombre FREERIDE F)(marca OXELO)(precio 79.95)(modalidad freeskate)(sexo mujer))
	(roller (nombre FREERIDE_5)(marca OXELO)(precio 69.95)(modalidad freeskate)(sexo neutro))
	(roller (nombre FREERIDE M)(marca OXELO)(precio 79.95)(modalidad freeskate)(sexo neutro))
	(roller (nombre IL CAPO)(marca K2)(precio 179.95)(modalidad freeskate)(sexo neutro))
	(roller (nombre NRK BX)(marca FILA)(precio 149.89)(modalidad freeskate)(sexo neutro))
	(roller (nombre NRK)(marca FILA)(precio 199.0)(modalidad freeskate)(sexo neutro))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	PATINES LARGA DISTANCIA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	(roller (nombre VI_SUPERCRUISER)(marca POWERSLIDE)(precio 199.99)(modalidad speed)(sexo neutro))
	(roller (nombre MAXXUM_100)(marca ROLLERBLADE)(precio 299.95)(modalidad speed)(sexo neutro))
	(roller (nombre VI_FLYTE_2)(marca POWERSLIDE)(precio 199.99)(modalidad speed)(sexo neutro))
	(roller (nombre VO2_90_PRO)(marca K2)(precio 235.90)(modalidad speed)(sexo neutro))
	(roller (nombre VI_SUPERCRUISER)(marca POWERSLIDE)(precio 199.99)(modalidad speed)(sexo neutro))
	(roller (nombre VI_SL)(marca POWERSLIDE)(precio 379.99)(modalidad speed)(sexo neutro))
	(roller (nombre MARATHON)(marca POWERSLIDE)(precio 399.99)(modalidad speed)(sexo neutro))
	(roller (nombre GRAND_PRIX)(marca POWERSLIDE)(precio 599.99)(modalidad speed)(sexo neutro))
	(roller (nombre SWIFT)(marca DOOP)(precio 219.0)(modalidad speed)(sexo neutro))
	(roller (nombre PRO_LONGMOUNT)(marca K2)(precio 529.0)(modalidad speed)(sexo neutro))
	(roller (nombre RADICAL_100W)(marca K2)(precio 339.0)(modalidad speed)(sexo neutro))
	(roller (nombre THUNDER)(marca ROCES)(precio 249.0)(modalidad speed)(sexo neutro))
	(roller (nombre VANQUISH)(marca ROCES)(precio 1190.0)(modalidad speed)(sexo neutro))
	(roller (nombre LAB)(marca ROCES)(precio 299.0)(modalidad speed)(sexo neutro))
)

;;; Obtiene una respuesta de entre un conjunto de respuestas posibles
(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
   )
   ?answer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Hace una pregunta a la que hay que responder si o no
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(deffunction si-o-no-p (?question)
   (bind ?response (ask-question ?question si no))
   (if (eq ?response si)
       then TRUE 
       else FALSE)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Hace una pregunta a la que hay que responder un valor entero
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(deffunction numeric-ask-question (?question )
   (printout t ?question)
   
   (while (not(bind ?answer (read))) do
     (printout t ?question)
     (bind ?answer (read))
   )
   ?answer
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Hace una pregunta a la que hay que responder con un valor numérico
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(deffunction numeric-ask (?question)
   (bind ?response (numeric-ask-question ?question))
	?response
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Hace pregunta acerca del estilo de patinaje
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(deffunction mod-ask ()
	(if(si-o-no-p "¿Quieres usar tus patines solo para recorrer largas distancias? (si/no) ")
	then
		(bind ?mod speed)
	else
		(if(si-o-no-p "¿Quieres usar tus patines solo para pasear? (si/no) ")
		then
			(bind ?mod fitness)
		else
			(if (si-o-no-p "¿Quieres usar tus patines en un skatepark? (si/no) ")
			then
				(bind ?mod agresivo)
			else
				(bind ?mod freeskate)
			)
		)
	)
	?mod
)


(defrule sex_select "Añade el sexo del cliente"
	?per <- (persona (nombre P))
=>
	(if (si-o-no-p "¿Eres una mujer? (si/no) ")
	then
	 (modify ?per (nombre P1)(sexo mujer))
	else
	 (modify ?per (nombre P1)(sexo hombre))
	 )
)


(defrule budget_select "Añade el presupuesto del cliente"
	?per <- (persona (nombre P1))
=>
	(bind ?p (numeric-ask "¿Cuanto dinero tienes pensado gastar? "))
	(modify ?per (nombre P2)(presupuesto ?p))
)

(defrule modality_select "Añade la modalidad del cliente"
	?per <- (persona (nombre P2))
=>
	(modify ?per (nombre P3)(modalidad (mod-ask)))
)

(defrule coin "Infiere el patín que mas se ajusta a sus requerimientos"

	(and (persona (nombre P3)(sexo ?s)(presupuesto ?p)(modalidad ?m))
	(or (roller (nombre $?n)(marca ?mc)(precio ?p1)(sexo neutro)(modalidad ?m))
		(roller (nombre $?n)(marca ?mc)(precio ?p1)(sexo ?s)(modalidad ?m))
	)
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;; Define el rango de precios p1-50 y p1+25
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	(test(>= ?p (- ?p1 15)))
	(test(<= ?p (+ ?p1 30)))
	)
=>
	(printout t "Te recomendamos el patin " $?mc " " $?n " con precio: " ?p1 crlf)
)