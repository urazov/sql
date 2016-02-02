select i.type, i.value as v
from info as i, (
				select max(i2.date) as dt, i2.type
				from info i2
				group by type
				) as s2
where i.date = s2.dt
and i.type = s2.type;