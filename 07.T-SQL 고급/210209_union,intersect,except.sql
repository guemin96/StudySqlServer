select clubName as bName, buildingName as blocation from ClubTBl
union
select stbName,region from StbTBL;


--union all
select clubName as bName, buildingName as blocation from ClubTBl
union all
select stbName,region from StbTBL;


select ID, region from StbTBL
except-- �ι�° �������� �ش��ϴ� �͸� ��ȸ
select ID, region from StbTBL
where ID ='3';

select * from StbTBL

select ID,clubName as bName, buildingName as blocation from ClubTBl
intersect-- �ι�° �������� �ش��ϴ� �͸� ��ȸ
select ID,clubName as bName, buildingName as blocation from ClubTBl
where clubName='���÷���'

select * from ClubTBl
for json auto