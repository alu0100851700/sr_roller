(deftemplate roller
	(slot nombre(type SYMBOL))
	(slot precio(type INTEGER))
;	(slot modalidad(type SYMBOL))
	(slot sexo(type SYMBOL)(allowed-symbols hombre mujer))
)

(deftemplate persona
;	(slot nombre(type SYMBOL))
	(slot sexo(type SYMBOL)(allowed-symbols hombre mujer))
	(slot precio(type INTEGER))
)
(deffacts m
;	(roller (nombre SEBA FR)(precio 145)(modalidad Freeskate)(sexo hombre))
	
	(roller (nombre FR)(precio 145)(sexo hombre))
	(roller (nombre T)(precio 151)(sexo hombre))
	(roller (nombre J)(precio 155)(sexo mujer))
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
   (if (or (eq ?response si) (eq ?response s))
       then TRUE 
       else FALSE)
  )

(deffunction numeric-ask-question (?question )
   (printout t ?question)
   (bind ?answer (read))
;  (while () do
;     (printout t ?question)
;     (bind ?answer (read))
;   )
   ?answer)

;;; Hace una pregunta a la que hay que responder con un valor numérico
(deffunction numeric-ask (?question)
   (bind ?response (numeric-ask-question ?question))
	?response
)

(defrule coin ""
	(persona (sexo ?v)(precio ?p1))
	(roller (nombre ?S)(precio ?p2)(sexo ?v))
	(test(> ?p1 (- ?p2 25)))
	(test(< ?p1 (+ ?p2 50)))
=>
	(printout t "Tu patin es el " ?S " con precio: " ?p2 crlf)
)

(defrule sex_select ""
=>
	(if (si-o-no-p "Eres una mujer? (si/no)")
	then
	 (assert (persona (sexo mujer)))
	else
	 (assert (persona (sexo hombre))))
)

(defrule price_select ""
=>
	(bind ?p (numeric-ask "Cuanto tienes pensado gastar? "))
	 (assert (persona (precio ?p)))
)



;(defrule po_data ""
;	(persona (sexo ?v)(precio ?p))
;=>
;	(printout t "Eres " ?v " con precio: " ?p crlf)
;)