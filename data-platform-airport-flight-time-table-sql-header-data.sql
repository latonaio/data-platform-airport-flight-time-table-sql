CREATE TABLE `data_platform_airport_flight_time_table_header_data`
(
  `Airport`                      int(16) NOT NULL,
  `Airway`                       int(16) NOT NULL,
  `TimeTableVersion`             int(4) NOT NULL,
  `AirportFlightTimeTableID`     int(4) NOT NULL,
  `DepartingDate`                date(16) NOT NULL,
  `DepartingTime`                time(16) NOT NULL,
  `ArrivingDate`                 date(16) NOT NULL,
  `ArrivingTime`                 time(16) NOT NULL,
  `Description`                  varchar(60) NOT NULL,
  `OperationRemarks`             varchar(100) DEFAULT NULL,
  `ValidityStartDate`            date NOT NULL,
  `ValidityEndDate`              date NOT NULL,
  `CreationDate`                 date NOT NULL,
  `CreationTime`                 time NOT NULL,
  `LastChangeDate`               date NOT NULL,
  `LastChangeTime`               time NOT NULL,
  `CreateUser`                   int(12) NOT NULL,
  `LastChangeUser`               int(12) NOT NULL,
  `IsReleased`                   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Airport`, `Airway`, `TimeTableVersion`, `AirportFlightTimeTableID`),

    CONSTRAINT `DPFMAirportFlightTimeTableHeaderData_fk` FOREIGN KEY (`Airport`, `Airway`) REFERENCES `data_platform_airport_airway_header_data` (`Airport`, `Airway`),
    CONSTRAINT `DPFMAirportFlightTimeTableHeaderDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMAirportFlightTimeTableHeaderDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
