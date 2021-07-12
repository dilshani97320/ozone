create table user
(
    UserID       varchar(50)   not null
        primary key,
    Password     varchar(100)  not null,
    FirstName    varchar(100)  not null,
    LastName     varchar(100)  not null,
    Email        varchar(50)   not null,
    MobileNumber int(20)       not null,
    Role         int           not null,
    verified     int default 0 not null,
    constraint User
        foreign key (Role) references role (RoleID)
)
    charset = utf8mb4;

INSERT INTO ozon.user (UserID, Password, FirstName, LastName, Email, MobileNumber, Role, verified) VALUES ('kamal1997@yahoo.com', '$2b$10$fSnRP.YIHH44VxaC3vTwduyyw3tV/clZxbbsq5AdNdfvX7i5yuGE2', 'Kamal', 'Gunapala', 'kamal1997@yahoo.com', 776542125, 3, 0);
INSERT INTO ozon.user (UserID, Password, FirstName, LastName, Email, MobileNumber, Role, verified) VALUES ('nimal.perera@gmail.com', '$2b$10$fSnRP.YIHH44VxaC3vTwduyyw3tV/clZxbbsq5AdNdfvX7i5yuGE2', 'Nimal', 'Perea', 'nimal.perera@gmail.com', 714587652, 2, 0);
INSERT INTO ozon.user (UserID, Password, FirstName, LastName, Email, MobileNumber, Role, verified) VALUES ('vishva.jayasanka@hotmail.com', '$2b$10$fSOfPTWOdRbn6LkXHHuN9.T4CjNf4wHkizcHLfQql4aIwV0gMVqem', 'Vishwa', 'Jayasanka', 'vishva.jayasanka@hotmail.com', 719251862, 1, 0);
INSERT INTO ozon.user (UserID, Password, FirstName, LastName, Email, MobileNumber, Role, verified) VALUES ('vishvajayasanka@gmail.com', '$2b$10$HaSOIJJf./AtdS2oJMaS1.y3AeviSM2HX4GNoiGqkoIYAMh0Rn6O6', 'Vishwa', 'Jayasanka', 'vishvajayasanka@gmail.com', 719251862, 3, 0);