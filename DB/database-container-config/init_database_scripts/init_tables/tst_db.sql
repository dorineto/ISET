create table if not exists tst_table(
    id int primary key generated by default as identity
    ,val varchar(50)
);

insert into tst_table (val) values ('Teste valor')