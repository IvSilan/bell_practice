create table organization ( 
    id       number(10) not null,
    name     varchar2(50) not null,
	fullName varchar2(50) not null,
	inn      varchar2(10) not null unique, 
	kpp      varchar2(9) not null unique,   -- код причины постановки на учёт
	address  varchar2(50) not null unique,  -- ??? уникальное ли поле?
	phone    varchar2(20) unique,
	isActive varchar2(5) check (isActive in ('true', 'false')),
    
    constraint organization_pk 
        primary key (id)
);
   
create table office ( 
    id              number(10) not null,
    organization_id number(10) not null,
    name            varchar2(50) not null,
	address         varchar2(50) not null unique, -- ??
	phone           varchar2(20) unique,
	isActive        varchar2(5) check (isActive in ('true', 'false')),
     
    constraint office_pk 
        primary key (id),
        
    constraint office_fk 
        foreign key (organization_id)
        references organization(id)
        on delete cascade --??
);  
 
create table doc (
    id   number(10) not null,
    name varchar2(500) not null unique,
    code number(2) not null unique,
    
    constraint doc_pk 
        primary key (id)
);
   
create table country (
    id   number(10) not null,
    name varchar2(50) not null unique,
    phone_code varchar2(10) not null, -- допустим, телефонный код
    
    constraint country_pk 
        primary key (id)
); 

create table employee ( 
    id              number(10) not null,
    office_id       number(10) not null,
    country_id      number(10) not null,
    doc_id          number(10) not null,
    docNumber       varchar2(20),
    docDate         date,
    firstname       varchar2(50) not null,
    secondName      varchar2(50),
    middleName      varchar2(50),
    position        varchar(30) not null,
	phone           varchar2(20) unique,
	isIdentified    varchar2(5) check (isIdentified in ('true', 'false')),
     
    constraint employee_pk 
        primary key (id),
    
    constraint employee_office_fk 
        foreign key (office_id)
        references office(id)
        on delete cascade, --??
        
    constraint employee_doc_fk 
        foreign key (doc_id)
        references doc(id),
        
    constraint employee_country_fk 
        foreign key (country_id)
        references country(id)
); 