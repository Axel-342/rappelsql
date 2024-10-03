select * from Clients 

select nom, email from Clients

select * from Clients where age > 40

select * from Clients where location = 'Paris' and age < 35 and age > 25

select * from Campagnes order by budget

select * from Campagnes order by debut_campagne desc limit 5

select count (*) from Clients

select avg(age) from Clients

select sum(budget) from Campagnes

select * from Campagnes order by budget desc limit 1

select count(*) from Clients group by segment_id

Select Campagnes.nom_campagne, sum(Performances.revenus_generes) 
from Campagnes 
inner join performances on Campagnes.campagne_id = Performances.campagne_id 
group by Campagnes.campagne_id

Select Campagnes.canal, avg(Performances.clics) 
from Campagnes 
inner join performances on Campagnes.campagne_id = Performances.campagne_id 
group by Campagnes.canal

Select Clients.nom, Segments.segment_id, Segments.nom_segment, Segments.description
from Clients
inner join Segments on Segments.segment_id = Clients.segment_id

Select Clients.nom, Performances.revenus_generes
from Clients
inner join Performances on Performances.client_id = Clients.client_id
Where Performances.revenus_generes > 1000