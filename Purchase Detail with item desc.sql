--Query detalle compras

with compras as (
select	year(reqdate)*100+month(reqdate) idtiempo
		,a.itemnmbr código
		,a.itemdesc descripción
		,a.reqdate fecha
		,a.ponumber documento
		,a.locncode almacén
		,a.uofm und_medida
		,a.qtyorder cantidad
		,a.curncyid moneda_OC
		,a.unitcost cto_unit_PEN
		,a.extdcost cto_total_PEN
		,a.oruntcst cto_unit_origen
		,a.orextcst cto_total_origen
		,a.vendorid ruc_proveedor
		,a.cmpnynam nombre_proveedor
		,b.currcost costo_actual
from dbo.pop10110 a
left join dbo.iv00101 b
on a.itemnmbr=b.itemnmbr
where polnesta in (4,5) --and a.itemnmbr='3080100-0041'
)

--select * from dbo.pop10100
--select * from dbo.pop10110
--select * from dbo.pop30110

select * from (
select	*
		,row_number() over(partition by código,descripción order by fecha desc) as N
from compras a
group by idtiempo,código,descripción,fecha,documento,almacén,und_medida,cantidad,moneda_OC,cto_unit_PEN,cto_total_PEN,cto_unit_origen,cto_total_origen,ruc_proveedor,nombre_proveedor,costo_actual) a
where N between 1 and 10
