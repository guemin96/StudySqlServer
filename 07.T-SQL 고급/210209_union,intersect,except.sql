select clubName as bName, buildingName as blocation from ClubTBl
union
select stbName,region from StbTBL;


--union all
select clubName as bName, buildingName as blocation from ClubTBl
union all
select stbName,region from StbTBL;


select ID, region from StbTBL
except-- 두번째 쿼리에만 해당하는 것만 조회
select ID, region from StbTBL
where ID ='3';

select * from StbTBL

select ID,clubName as bName, buildingName as blocation from ClubTBl
intersect-- 두번째 쿼리에만 해당하는 것만 조회
select ID,clubName as bName, buildingName as blocation from ClubTBl
where clubName='위플래쉬'

select * from ClubTBl
for json auto