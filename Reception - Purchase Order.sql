--Asociación RE-OC (Recepción con Orden de Compra)

select	poprctnm Recepción
		,ponumber Num_OC
		,itemnmbr
		,itemdesc
		,b.actnumbr_1 Cuenta
		,b.actnumbr_4 Ceco
		,uofm Und_Medida
		,unitcost Cto_Unit
		,extdcost Monto_PEN
		,locncode Almacén
		,trxsorce --ejm pa buscar en gl RECVG00000004 es RE00000020 - OD00000012
		,oruntcst Cto_Unit_Moneda
		,orextcst Total_Moneda
from dbo.pop30310 a
left join dbo.gl00100 b
on a.invindx=b.actindx
