--Detalle OCs histórico

select	ponumber Num_OC
		,itemnmbr
		,itemdesc
		,vendorid RUC
		,locncode Almacén
		,UOFM Und_Medida
		,qtyorder Cantidad
		,unitcost Cto_unit
		,extdcost Total_PEN
		,reqdate Fecha_OC
		,curncyid Moneda
		,xchgrate Tipo_Cambio
		,oruntcst Cto_Unit_Moneda
		,orextcst Total_Moneda
		,state Distrito
from dbo.pop30110
