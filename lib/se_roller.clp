(deftemplate roller
	(slot nombre(type SYMBOL))
	(slot precio(type INTEGER))
;	(slot modalidad(type SYMBOL))
	(slot sexo(type SYMBOL)(allowed-symbols hombre mujer))
)

(deftemplate persona
	(slot nombre(type SYMBOL))
	(slot sexo(type SYMBOL)(allowed-symbols hombre mujer))
	(slot precio(type INTEGER))
)
(deffacts m
;	(roller (nombre SEBA FR)(precio 145)(modalidad Freeskate)(sexo hombre))
	
	(roller (nombre FR)(precio 150)(sexo hombre))
	(roller (nombre T)(precio 156)(sexo hombre))
	(roller (nombre J)(precio 151)(sexo mujer))
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
       else FALSE))

;;; Hace una pregunta a la que hay que responder con un valor numérico
(deffunction numeric-ask (?question)
   (bind ?response (ask-question ?question (type INTEGER)))
	?response
)




(defrule coin ""
	(persona (sexo ?v)(precio ?p)
	(roller (nombre ?S)(sexo ?v))
=>
	(printout t "Tu patin es el " ?S " con precio: " ?p crlf)
)


(defrule price_select ""
=>
	(numeric-ask "Cuanto tienes pensado gastar?")
	 (assert (persona (precio ?response)))
)

;(defrule _select ""
;=>
;	(if (si-o-no-p "Eres una mujer? (si/no)")
;	then
;	 (assert (persona (sexo mujer)))
;	else
;	 (assert (persona (sexo hombre))))
;)


