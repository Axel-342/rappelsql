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

Select nom_campagne,revenus_generes from Campagnes inner join performances where Campagnes.campagne_id = Performances.campagne_id