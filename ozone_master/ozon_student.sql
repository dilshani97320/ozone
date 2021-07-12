create table student
(
    StudentId      varchar(50) not null
        primary key,
    ClassId        varchar(20) null,
    NotificationId varchar(20) null,
    MessageId      varchar(20) null,
    TimeTableId    varchar(20) null,
    School         varchar(50) null,
    stream         varchar(50) null,
    year           int         null,
    district       varchar(30) null,
    constraint ClassId
        unique (ClassId),
    constraint MessageId
        unique (MessageId),
    constraint NotificationId
        unique (NotificationId),
    constraint TimeTableId
        unique (TimeTableId),
    constraint student_ibfk_1
        foreign key (ClassId) references class (classId),
    constraint student_ibfk_2
        foreign key (NotificationId) references notification (NotificationId),
    constraint student_ibfk_3
        foreign key (MessageId) references message (MessageId),
    constraint student_ibfk_4
        foreign key (TimeTableId) references timetable (TimeTableId),
    constraint student_ibfk_5
        foreign key (StudentId) references user (UserID)
)
    charset = utf8mb4;

INSERT INTO ozon.student (StudentId, ClassId, NotificationId, MessageId, TimeTableId, School, stream, year, district) VALUES ('vishvajayasanka@gmail.com', null, null, null, null, 'St. Thomas Collage', 'Combined Maths', 2021, 'Matara');