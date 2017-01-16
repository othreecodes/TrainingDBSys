<<<<<<< .mine
-- 31/03/2014
create table GRLanguage (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        languageName varchar(255),
        languageOptions integer,
        graduateResearchTraining_id bigint,
        primary key (id)
    ) ENGINE=InnoDB;

    create table GraduateResearchTraining (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        degreeSought varchar(255),
        emailOfUniversitySupervisor varchar(255),
        endDate datetime,
        expectedDuration varchar(255),
        nameOfIITASupervisor varchar(255),
        nameOfUniversitySupervisor varchar(255),
        proposedResearchTheme varchar(255),
        refNumber varchar(100),
        researchLocation varchar(255),
        startDate datetime,
        status varchar(255),
        submissionStatus varchar(10),
        announcement_id bigint,
        biodata_id bigint,
        primary key (id)
    ) ENGINE=InnoDB;

     create table MajorConstraints (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        youFaced varchar(255),
        nonDegreeTraining_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

    create table NonDegreeTraining (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        previousTrainings varchar(5),
        proposedTrainingDuration varchar(255),
        trainingLocation varchar(255),
        trainingReceived varchar(255),
        primary key (id)
    ) ENGINE=InnoDB;
alter table GRLanguage 
        add index FKE1F6E5631BF5F091 (graduateResearchTraining_id), 
        add constraint FKE1F6E5631BF5F091 
        foreign key (graduateResearchTraining_id) 
        references GraduateResearchTraining (id);

    alter table GraduateResearchTraining 
        add index FK3783320FF318D7A (announcement_id), 
        add constraint FK3783320FF318D7A 
        foreign key (announcement_id) 
        references Announcement (id);

    alter table GraduateResearchTraining 
        add index FK3783320FF5C6AF2 (biodata_id), 
        add constraint FK3783320FF5C6AF2 
        foreign key (biodata_id) 
        references ApplicantsBioData (id);

alter table MajorConstraints 
        add index FK46693EDDD652FE63 (nonDegreeTraining_id), 
        add constraint FK46693EDDD652FE63 
        foreign key (nonDegreeTraining_id) 
        references NonDegreeTraining (id);
        
 alter table SpecificSkills 
        add index FK1B41F434D652FE63 (nonDegreeTraining_id), 
        add constraint FK1B41F434D652FE63 
        foreign key (nonDegreeTraining_id) 
        references NonDegreeTraining (id);

        
-- +++++++++++++++++++++++++++++++=
create table AnnouncementDocument (
        id bigint not null auto_increment,
        document_id bigint not null,
        entity_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;
 alter table AnnouncementDocument 
        add index FK28B27FA2AD3C2E26 (document_id), 
        add constraint FK28B27FA2AD3C2E26 
        foreign key (document_id) 
        references Document (id);

    alter table AnnouncementDocument 
        add index FK28B27FA25843215E (entity_id), 
        add constraint FK28B27FA25843215E 
        foreign key (entity_id) 
        references Announcement (id);


-- 19/03/2014
drop table if exists TrainTheTrainer;
create table TrainTheTrainer (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        activity longtext,
        background varchar(250),
        budgetOfficer varchar(100),
        costCenter varchar(100),
        country varchar(100),
        crp varchar(255),
        duration varchar(100),
        expectedTrainingOutcome varchar(250),
        locations varchar(100),
        programDirector varchar(100),
        projectInformation varchar(250),
        requestor varchar(255),
        resourcePersons varchar(250),
        startTrainingDate datetime,
        stopTrainingDate datetime,
        targetParticipants varchar(250),
        trainingBudget varchar(100),
        trainingMaterials varchar(250),
        trainingObjectives varchar(250),
        trainingTitle varchar(250),
        unit varchar(100),
        venue varchar(100),
        primary key (id)
    ) ENGINE=InnoDB;

=======
-- 19/03/2014
drop table if exists TrainTheTrainer;
create table TrainTheTrainer (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        activity longtext,
        background varchar(250),
        budgetOfficer varchar(100),
        costCenter varchar(100),
        country varchar(100),
        crp varchar(255),
        duration varchar(100),
        expectedTrainingOutcome varchar(250),
        locations varchar(100),
        programDirector varchar(100),
        projectInformation varchar(250),
        requestor varchar(255),
        resourcePersons varchar(250),
        startTrainingDate datetime,
        stopTrainingDate datetime,
        targetParticipants varchar(250),
        trainingBudget varchar(100),
        trainingMaterials varchar(250),
        trainingObjectives varchar(250),
        trainingTitle varchar(250),
        unit varchar(100),
        venue varchar(100),
        primary key (id)
    ) ENGINE=InnoDB;

>>>>>>> .r4103
-- 17/03/2014
create table Announcement (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        accommodation varchar(255),
        courseContents longtext,
        deadline datetime,
        duration varchar(100),
        expectedOutcome varchar(255),
        introduction longtext,
        learningMethod varchar(255),
        location varchar(100),
        numberOfFemale integer not null,
        numberOfMale integer not null,
        numberOfParticipants varchar(255),
        objective varchar(255),
        payment longtext,
        targetGroup varchar(255),
        title varchar(255),
        trainingFee varchar(255),
        type varchar(100),
        primary key (id)
    ) ENGINE=InnoDB;

    create table Application (
        `type` varchar(15) not null,
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        apt_steNumber varchar(100),
        city varchar(100),
        country varchar(100),
        countryOfBirth varchar(100),
        dob date,
        email varchar(100),
        english varchar(15),
        firstName varchar(100),
        gender varchar(10),
        homeAddress longtext,
        homePhone varchar(100),
        lastName varchar(100),
        maritalStatus varchar(10),
        mobilePhone varchar(100),
        nationality varchar(100),
        postalCode varchar(100),
        refNumber varchar(100),
        startDate date,
        state varchar(100),
        title varchar(10),
        status integer,
        announcement_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;
    
    alter table Application 
        add index FKC00DAD30FF318D7A (announcement_id), 
        add constraint FKC00DAD30FF318D7A 
        foreign key (announcement_id) 
        references Announcement (id);
    
   create table ApplicantsBioData (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        currentNationality varchar(150),
        dateOfBirth date,
        emailAddress varchar(80),
        english varchar(15),
        firstName varchar(50),
        gender varchar(10),
        lastName varchar(150),
        maidenName varchar(150),
        maritalStatus varchar(15),
        middleName varchar(150),
        nationality varchar(150),
        nextOfKinAddrs longtext,
        nextOfKinName varchar(255),
        nextOfKinRelationship varchar(25),
        nextOfKinTelNo varchar(255),
        passportNumber varchar(255),
        permAddressTelephone varchar(15),
        permanentAddress longtext,
        placeOfBirth varchar(255),
        spouseName varchar(255),
        telephoneNumbers varchar(255),
        title varchar(10),
        application_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;
create table ApplicantsChildren (
        id bigint not null auto_increment,
        childName longtext,
        dateOfBirth date,
        applicantsBioData_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;
create table EducationAndTraining (
        id bigint not null auto_increment,
        certificateObtained longtext,
        majorFieldOfStudy longtext,
        nameOfInstitution longtext,
        startMonthOfCertification longtext,
        stopMonthOfCertification longtext,
        applicantsBioData_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

create table EmploymentHistory (
        id bigint not null auto_increment,
        addressOfEmployer longtext,
        appointedOn date,
        exitedOn date,
        jobTitle varchar(255),
        nameOfEmployer varchar(255),
        applicantsBioData_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

create table LanguageSpoken (
        id bigint not null auto_increment,
        language varchar(25),
        applicantsBioData_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

 create table OtherApplicationDetails (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        addressofSponsor longtext,
        nameOfSponsor varchar(255),
        startDate date,
        application_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

    create table OtherLanguages (
        id bigint not null auto_increment,
        otherLanguage varchar(255),
        applicantsBioData_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

    create table ApplicationReportDocument (
        id bigint not null auto_increment,
        document_id bigint not null,
        entity_id bigint not null,
        primary key (id)
    ) engine=InnoDB;

alter table ApplicationReportDocument 
        add index FKD3CABBBFAD3C2E26 (document_id), 
        add constraint FKD3CABBBFAD3C2E26 
        foreign key (document_id) 
        references Document (id);
        
alter table AnnouncementDocument 
        add index FK28B27FA2AD3C2E26 (document_id), 
        add constraint FK28B27FA2AD3C2E26 
        foreign key (document_id) 
        references Document (id);

    alter table AnnouncementDocument 
        add index FK28B27FA25843215E (entity_id), 
        add constraint FK28B27FA25843215E 
        foreign key (entity_id) 
        references Announcement (id);

    alter table ApplicantsBioData 
        add index FK2A1719C13CBC77C3 (application_id), 
        add constraint FK2A1719C13CBC77C3 
        foreign key (application_id) 
        references Application (id);

    alter table ApplicantsChildren 
        add index FK43BEFEF07AF58363 (applicantsBioData_id), 
        add constraint FK43BEFEF07AF58363 
        foreign key (applicantsBioData_id) 
        references ApplicantsBioData (id);

alter table EducationAndTraining 
        add index FK5A9DBB297AF58363 (applicantsBioData_id), 
        add constraint FK5A9DBB297AF58363 
        foreign key (applicantsBioData_id) 
        references ApplicantsBioData (id);

alter table EmploymentHistory 
        add index FK987D16E87AF58363 (applicantsBioData_id), 
        add constraint FK987D16E87AF58363 
        foreign key (applicantsBioData_id) 
        references ApplicantsBioData (id);

alter table LanguageSpoken 
        add index FKB5C414FA7AF58363 (applicantsBioData_id), 
        add constraint FKB5C414FA7AF58363 
        foreign key (applicantsBioData_id) 
        references ApplicantsBioData (id);

alter table OtherApplicationDetails 
        add index FKDDB359E23CBC77C3 (application_id), 
        add constraint FKDDB359E23CBC77C3 
        foreign key (application_id) 
        references Application (id);

alter table OtherLanguages 
        add index FK3FDC370B7AF58363 (applicantsBioData_id), 
        add constraint FK3FDC370B7AF58363 
        foreign key (applicantsBioData_id) 
        references ApplicantsBioData (id);
-- 25/02/2014
delimiter |
CREATE EVENT `training`.`daily_alumniSearchQueries`
ON SCHEDULE
EVERY 1 DAY
COMMENT 'Delete records from Query where title is Title:AlumniSearch and time is less than current time'
DO
BEGIN
    DELETE FROM `training`.`Query` WHERE createdDate<CURRENT_TIMESTAMP AND title LIKE '%:AlumniSearch';
END |

delimiter ;

delimiter |
CREATE EVENT `training`.`daily_partnerSearchQueries`
ON SCHEDULE
EVERY 1 DAY
COMMENT 'Delete records from Query where title is Title:PartnerSearch and time is less than current time'
DO
BEGIN
    DELETE FROM `training`.`Query` WHERE createdDate<CURRENT_TIMESTAMP AND title LIKE '%:PartnerSearch';
END |

delimiter ;

-- 3/02/2014
create table PartnerIITAHub (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        hub varchar(255),
        partner_id bigint not null,
        primary key (id)
    ) type=InnoDB;
alter table PartnerIITAHub 
        add index FK297C88805170CCEE (partner_id), 
        add constraint FK297C88805170CCEE 
        foreign key (partner_id) 
        references Partner (id);
ALTER TABLE `training`.`Person` MODIFY COLUMN `title` VARCHAR(25)  CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL;
        
alter table Contact add column partner_id BIGINT(20) after `organization_id`;
alter table AddressContact add column continent VARCHAR(255) after `state`;
create table Partner (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        shortName varchar(100),
        title varchar(200) not null,
        parent_id bigint,
        primary key (id)
    ) ENGINE=InnoDB;

    create table PartnerCategory (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        type varchar(200),
        partner_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

    create table PartnerClassification (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        type varchar(200),
        partner_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

    create table PartnerCoreBusiness (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        type varchar(200),
        partner_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

    create table PartnerDocument (
        id bigint not null auto_increment,
        document_id bigint not null,
        entity_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

    create table PartnerMandateCrop (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        type varchar(200),
        partner_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

    create table PartnerPersonContact (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        discipline varchar(200),
        status varchar(255),
        title varchar(200),
        type varchar(255),
        partner_id bigint not null,
        person_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;

    create table PartnerTag (
        percentage double precision,
        id bigint not null,
        entity_id bigint not null,
        primary key (id)
    ) ENGINE=InnoDB;
    
    alter table Contact 
        add index FK9BEFBC005170CCEE (partner_id), 
        add constraint FK9BEFBC005170CCEE 
        foreign key (partner_id) 
        references Partner (id);
        
     alter table Partner 
        add index FK33F574A8C2B57DCC (parent_id), 
        add constraint FK33F574A8C2B57DCC 
        foreign key (parent_id) 
        references Partner (id);

    alter table PartnerCategory 
        add index FKC5076DC65170CCEE (partner_id), 
        add constraint FKC5076DC65170CCEE 
        foreign key (partner_id) 
        references Partner (id);

    alter table PartnerClassification 
        add index FKE2692EAE5170CCEE (partner_id), 
        add constraint FKE2692EAE5170CCEE 
        foreign key (partner_id) 
        references Partner (id);

    alter table PartnerCoreBusiness 
        add index FK6B3ED1475170CCEE (partner_id), 
        add constraint FK6B3ED1475170CCEE 
        foreign key (partner_id) 
        references Partner (id);

    alter table PartnerDocument 
        add index FKF56181E3AD3C2E26 (document_id), 
        add constraint FKF56181E3AD3C2E26 
        foreign key (document_id) 
        references Document (id);

    alter table PartnerDocument 
        add index FKF56181E31B2AABF3 (entity_id), 
        add constraint FKF56181E31B2AABF3 
        foreign key (entity_id) 
        references Partner (id);

    alter table PartnerMandateCrop 
        add index FK35477CF05170CCEE (partner_id), 
        add constraint FK35477CF05170CCEE 
        foreign key (partner_id) 
        references Partner (id);

    alter table PartnerPersonContact 
        add index FK804E33433D36EE6 (person_id), 
        add constraint FK804E33433D36EE6 
        foreign key (person_id) 
        references Person (id);

    alter table PartnerPersonContact 
        add index FK804E33435170CCEE (partner_id), 
        add constraint FK804E33435170CCEE 
        foreign key (partner_id) 
        references Partner (id);

    alter table PartnerTag 
        add index FK80F3B1D21B2AABF3 (entity_id), 
        add constraint FK80F3B1D21B2AABF3 
        foreign key (entity_id) 
        references Partner (id);

    alter table PartnerTag 
        add index FK80F3B1D220DBF6E9 (id), 
        add constraint FK80F3B1D220DBF6E9 
        foreign key (id) 
        references Tag (id);


-- 1/9/2010 update Query
alter table Query add column templateName varchar(100) after `shortName`;

partner_id bigint,

-- 1/9/2010 new table Template, no link to other entities
create table Template (
    id bigint not null auto_increment,
    footer longtext,
    header longtext,
    shortName varchar(100) not null,
    template longtext,
    title varchar(250) not null,
    primary key (id)
) type=InnoDB;

-- 2/9/2010 unique on Template.shortName
alter table Template add unique (shortName);
alter table Template add column createdBy varchar(255),
    add column createdDate datetime,
    add column lastUpdated datetime,
    add column lastUpdatedBy varchar(255),
    add column version integer not null default 0;

alter table Trainee add column sponsor varchar(255) null;

-- 24/10/2013 --
ALTER TABLE `training`.`AddressContact` MODIFY COLUMN `city` VARCHAR(50)  CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL;
ALTER TABLE `training`.`PhoneContact` MODIFY COLUMN `phoneNumber` VARCHAR(255)  CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL;
alter table Person add column alumniStatus varchar(255) after `title`;
 create table Alumni (
        id bigint not null auto_increment,
        createdBy varchar(255),
        createdDate datetime,
        lastUpdated datetime,
        lastUpdatedBy varchar(255),
        version integer not null,
        costCenter varchar(255),
        department varchar(255),
        sponsor varchar(255),
        supervisor varchar(255),
        person_id bigint,
        primary key (id)
    ) type=InnoDB;
    alter table Alumni 
        add index FK7513C11E3D36EE6 (person_id), 
        add constraint FK7513C11E3D36EE6 
        foreign key (person_id) 
        references Person (id);
        alter table Alumni add column trainee_id bigint after `person_id`;
        
 alter table Alumni 
        add index FK7513C11E89DC963C (trainee_id), 
        add constraint FK7513C11E89DC963C 
        foreign key (trainee_id) 
        references Trainee (id);
        
-- 12/08/2014
ALTER table Announcement ADD status VARCHAR(9) AFTER version;    