----Encabezados OCs en trabajo

select	ponumber Num_OC
		,postatus ---averiguar diccionario de status (1 nuevo/2 Enviado/3 Change order/4 Recibido/5 Cerrado/6 Cancelado)
		,potype --averiguar dicc de tipos (1 Standard/2 Drop ship/3 Blanket/4 Blanket Drop Ship)
		--,user2ent Usuario
		,docdate fecha_OC
		,subtotal Monto_PEN
		,vendorid RUC
		,vendname Proveedor
		,pymtrmid Condicion_Pago
		,curncyid Moneda
		,xchgrate Tipo_Cambio
		,orsubtot Monto_Moneda
		,buyerid Solicitante_OC --key to POP00101 campo dscriptn (Nombre del comprador)
		,taxschid TaxID
		,purchstate Distrito
from dbo.pop10100
