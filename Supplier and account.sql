--QUERY PARA VER PROVEEDOR Y CUENTA ASIGNADA

select b.actnumbr_1 c1,a.* 
from dbo.pm00200 a
left join dbo.gl00100 b 
on a.pmapindx=b.actindx
where vendname like '%lcm%'
