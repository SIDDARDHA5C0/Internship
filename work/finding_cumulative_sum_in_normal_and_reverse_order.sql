show databases;
create database database_for_intership;
use database_for_intership;
desc dataset_replicate_hand_made;
select ID,SALES, (select sum(t2.SALES) from dataset_replicate_hand_made t2  where t2.id<=t1.id order by ID desc) as cumulative_sum from dataset_replicate_hand_made t1;
 select ID,SALES, (select sum(t2.SALES) from dataset_replicate_hand_made t2  where t2.id>=t1.id order by ID desc) as cumulative_sum from dataset_replicate_hand_made t1;
