(deftemplate roller
	(slot nombre(type SYMBOL))
	(slot precio(type INTEGER))
;	(slot modalidad(type SYMBOL))
	(slot sexo(type SYMBOL)(allowed-symbols neutro mujer))
)

(deftemplate persona
	(slot nombre(type SYMBOL))
	(slot sexo(type SYMBOL)(allowed-symbols hombre mujer))
	(slot presupuesto(type INTEGER))
)

(deffacts m
;	(roller (nombre SEBA FR)(precio 145)(modalidad Freeskate)(sexo neutro))
	(persona (nombre P))
	(roller (nombre Neutro1)(precio 145)(sexo neutro))
	(roller (nombre Neutro2)(precio 151)(sexo neutro))
	(roller (nombre Mujer)(precio 150)(sexo mujer))
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

;;; Hace una pregunta a la que hay que responder si o no
(deffunction si-o-no-p (?question)
   (bind ?response (ask-question ?question si no))
   (if (eq ?response si)
       then TRUE 
       else FALSE)
)

;;; Hace una pregunta a la que hay que responder un valor entero
(deffunction numeric-ask-question (?question )
   (printout t ?question)
   (bind ?answer (read))
;  (while () do
;     (printout t ?question)
;     (bind ?answer (read))
;   )
   ?answer
)

;;; Hace una pregunta a la que hay que responder con un valor numérico
(deffunction numeric-ask (?question)
   (bind ?response (numeric-ask-question ?question))
	?response
)

(defrule sex_select "Añade el sexo del cliente"
	?per <- (persona (nombre P))
=>
	(if (si-o-no-p "Eres una mujer? (si/no) ")
	then
	 (modify ?per (nombre P1)(sexo mujer))
	else
	 (modify ?per (nombre P1)(sexo hombre))
	 )
)


(defrule budget_select "Añade el presupuesto del cliente"
	?per <- (persona (nombre P1))
=>
	(bind ?p (numeric-ask "Cuanto dinero tienes pensado gastar? "))
	(modify ?per (nombre P2)(presupuesto ?p))
)

(defrule coin "Infiere el patín que mas se ajusta a sus requerimientos"

	(and (persona (nombre P2)(sexo ?s)(presupuesto ?p))
	(or (roller (nombre ?n)(precio ?p1)(sexo neutro)) 
		(roller (nombre ?n)(precio ?p1)(sexo ?s))
	)
	;;; Define el rango de precios p1-50 y p1+25
	(test(>= ?p (- ?p1 25)))
	(test(<= ?p (+ ?p1 50)))
	)
	
=>
	(printout t "Tu patin es el " ?n " de sexo " ?s " con precio: " ?p1 crlf)
)


(defrule prueba "Añade el sexo del cliente"
	(persona (nombre P)(sexo ?s))
=>
	(printout t "Sexo: " ?s "  " ?s crlf)
)