(deftemplate roller
	(slot nombre(type SYMBOL))
	(slot marca (type SYMBOL))
	(slot precio(type INTEGER))
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

(defacts patines
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	PATINES AGRESIVOS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	(roller (nombre STREET 5)(marca OXELO)(precio 94.95)(modalidad Freeskate)(sexo neutro))
	(roller (nombre TV3)(marca VALO)(precio 220)(modalidad Agresivo)(sexo neutro))
	(roller (nombre GENESYS 7.4)(marca RAZORS)(precio 175)(modalidad Agresivo)(sexo neutro))
	(roller (nombre M12 UFS)(marca ROCES)(precio 150)(modalidad Agresivo)(sexo neutro))
	(roller (nombre OS BASIS)(marca REMZ)(precio 119.95)(modalidad Agresivo)(sexo neutro))
	(roller (nombre PANIK)(marca ANARCHY)(precio 73.95)(modalidad Agresivo)(sexo neutro))
	(roller (nombre STREET CULT)(marca RAZORS)(precio 129.99)(modalidad Agresivo)(sexo neutro))
	(roller (nombre THRONE UFS EVO)(marca USD)(precio 179.99)(modalidad Agresivo)(sexo neutro))
	(roller (nombre VII CLAN)(marca USD)(precio 149.99)(modalidad Agresivo)(sexo neutro))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	PATINES FITNESS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	(roller (nombre MAXXUM 84 W2014)(marca ROLLERBLADE)(precio 249.95)(modalidad Fitness)(sexo neutro))
	(roller (nombre PHUZION ZETA)(marca POWERSLIDE)(precio 159.99)(modalidad Fitness)(sexo neutro))
	(roller (nombre PLUME F)(marca FILA)(precio 149.95)(modalidad Fitness)(sexo mujer))
	(roller (nombre PLUME M)(marca FILA)(precio 149.95)(modalidad Fitness)(sexo neutro))
	(roller (nombre DIABOLO)(marca OXELO)(precio 69.95)(modalidad Fitness)(sexo neutro))
	(roller (nombre FIT 3 F)(marca OXELO)(precio 39.95)(modalidad Fitness)(sexo mujer))
	(roller (nombre FIT 3 M)(marca OXELO)(precio 39.95)(modalidad Fitness)(sexo neutro))
	(roller (nombre FIT 5 F)(marca OXELO)(precio 59.95)(modalidad Fitness)(sexo mujer))
	(roller (nombre FIT 5 M)(marca OXELO)(precio 59.95)(modalidad Fitness)(sexo neutro))
	(roller (nombre SNEAK IN)(marca OXELO)(precio 99.95)(modalidad Fitness)(sexo neutro))
	(roller (nombre KINETIC F)(marca K2)(precio 82)(modalidad Fitness)(sexo mujer))
	(roller (nombre KINETIC M)(marca K2)(precio 82)(modalidad Fitness)(sexo neutro))
	(roller (nombre FIT X PRO)(marca K2)(precio 165.90)(modalidad Fitness)(sexo neutro))
	(roller (nombre FORMULA 82)(marca ROLLERBLADE)(precio 102.50)(modalidad Fitness)(sexo neutro))
	(roller (nombre PHUZION GAMMA F)(marca POWERSLIDE)(precio 120)(modalidad Fitness)(sexo mujer))
	(roller (nombre PHUZION GAMMA M)(marca POWERSLIDE)(precio 120)(modalidad Fitness)(sexo neutro))
	(roller (nombre MASTER WAVE)(marca FILA)(precio 84.95)(modalidad Fitness)(sexo neutro))
	(roller (nombre SIRIO COMPOSITE)(marca ROLLERBLADE)(precio 109.95)(modalidad Fitness)(sexo neutro))
	(roller (nombre ZETRABLADE F)(marca ROLLERBLADE)(precio 99.95)(modalidad Fitness)(sexo mujer))
	(roller (nombre ZETRABLADE M)(marca ROLLERBLADE)(precio 99.95)(modalidad Fitness)(sexo neutro))
	(roller (nombre MACOBLADE 80)(marca ROLLERBLADE)(precio 139.95)(modalidad Fitness)(sexo neutro))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	PATINES FREESKATE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	(roller (nombre HIGH LIGHT)(marca SEBA)(precio 349.99)(modalidad Freeskate)(sexo neutro))
	(roller (nombre FR2 80)(marca SEBA)(precio 199.99)(modalidad Freeskate)(sexo neutro))
	(roller (nombre FRX 80)(marca SEBA)(precio 159.99)(modalidad Freeskate)(sexo neutro))
	(roller (nombre IMPERIAL PRO)(marca POWERSLIDE)(precio 229.98)(modalidad Freeskate)(sexo neutro))
	(roller (nombre BRONX)(marca POWERSLIDE)(precio 69.95)(modalidad Freeskate)(sexo neutro))
	(roller (nombre IMPERIAL)(marca POWERSLIDE)(precio 159.99)(modalidad Freeskate)(sexo neutro))
	(roller (nombre TWISTER 80)(marca ROLLERBLADE)(precio 229.95)(modalidad Freeskate)(sexo neutro))
	(roller (nombre FUSION X3)(marca ROLLERBLADE)(precio 170.01)(modalidad Freeskate)(sexo neutro))
	(roller (nombre FREERIDE F)(marca OXELO)(precio 79.95)(modalidad Freeskate)(sexo mujer))
	(roller (nombre FREERIDE 5)(marca OXELO)(precio 69.95)(modalidad Freeskate)(sexo neutro))
	(roller (nombre FREERIDE M)(marca OXELO)(precio 79.95)(modalidad Freeskate)(sexo neutro))
	(roller (nombre IL CAPO)(marca K2)(precio 179.95)(modalidad Freeskate)(sexo neutro))
	(roller (nombre NRK BX)(marca FILA)(precio 149.89)(modalidad Freeskate)(sexo neutro))
	(roller (nombre NRK)(marca FILA)(precio 199)(modalidad Freeskate)(sexo neutro))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	PATINES LARGA DISTANCIA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
   (bind ?answer (read))
;  (while () do
;     (printout t ?question)
;     (bind ?answer (read))
;   )
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
(deffunction mod-ask (?mod)
	(if(si-o-no-p "¿Quieres usar tus patines solo para recorrer largas distancias? (si/no) ")
	then
		(?mod <- speed)
	else
		(if(si-o-no-p "¿Quieres usar tus patines solo para pasear? (si/no) ")
		then
			(?mod <- fitness)
		else
			(if (and (si-o-no-p "¿Quieres usar tus patines en un skatepark? (si/no) ") (eq ?tipo nofit))
			then
				(?mod <- freeskate)
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
	(mod-ask ?m)
	(modify ?per (nombre P3)(modalidad ?m))
)

(defrule coin "Infiere el patín que mas se ajusta a sus requerimientos"

	(and (persona (nombre P3)(sexo ?s)(presupuesto ?p)(modalidad ?m))
	(or (roller (nombre ?n)(marca ?mc)(precio ?p1)(sexo neutro)(modalidad ?m)) 
		(roller (nombre ?n)(marca ?mc)(precio ?p1)(sexo ?s)(modalidad ?m))
	)
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;; Define el rango de precios p1-50 y p1+25
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	(test(>= ?p (- ?p1 25)))
	(test(<= ?p (+ ?p1 50)))
	)
=>
	(printout t "Te recomendamos el patin " ?m ?n ?mc " con precio: " ?p1 crlf)
)