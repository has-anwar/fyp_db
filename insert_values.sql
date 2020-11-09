INSERT INTO Parent	(father_first_name, father_last_name, father_CNIC, father_mobile, father_address, mother_first_name, mother_last_name, mother_CNIC, mother_mobile, mother_address)
VALUES
		('Umar', 'Latif', '35323-2154798-9', '03236411211', 'Address', 'Fatima', 'Umar', '35323-2154798-8', '03214788787', 'Address'),
        ('Rizwn', 'Sidaqat', '54789-5412557-9', '03214787458', 'Address 2', 'Aisha', 'Rizwan', '21478-0124587-8', '03214144141', 'Address 2');


INSERT INTO ParentAccount(f_username, f_password, m_username, m_password, parent_ID)
VALUES
		('root', 'root', 'fatima@gmail.com', 'root', 1),
        ('rizwan', 'root', 'aisha', 'root', 2);


INSERT INTO Child(child_name, date_of_birth,parent_ID, token)
VALUES
		('Zain Rizwan', '1999-04-09', 2, null),
		('Ali Umar', '2014-07-02', 1, null),
        ('Ahsan Umar', '2015-08-04', 1, null),
        ('Fatima Rizwan', '2014-01-12', 2, null),
        ('Ahmad Umar', '2017-01-06', 1, null),
        ('Shagufta Umar', '2011-05-07', 1, null),
        ('Qasim Rizwan', '2012-09-011', 2, null),
        ('Saboor Rizwan', '2017-06-05', 2, null),
        ('Salika Rizwan', '2019-08-11', 2, null);


INSERT INTO OfficeLocation (address, latitude, longitude)
VALUES
		('C-II Block C 2 Phase 1 Johar Town', 31.451872, 74.293692),
        ('Ferozepur Road, Ismail Nagar', 31.454071, 74.351168);


INSERT INTO Employee (employee_CNIC, first_name, last_name, email, passcode, contact_number, office_ID)
VALUES
		('37030-4374120-2', 'Ameer', 'Hamza', 'root', 'root', '03276699832', 1),
        ('19632-2186583-8', 'Sarah', 'Fayyaz', 'sarah', 'root', '03461322158', 2);


INSERT INTO Locations (location, employee_ID)
VALUES
		('78-k-1 Model Town, Lahore', 1),
        ('78-k-1 Model Town, Lahore', 2),
        ('35Q Model Town, Lahore', 1),
        ('35Q Model Town, Lahore', 2),
        ('105 C-2, Babar Block, New Garden Town, Lahore', 1);


INSERT INTO Attendance (attendance_date, attendance_time, employee_ID)
VALUES
		();

INSERT INTO VaccineRecord (vaccine_name, date_of_administration, readministration_date, time_of_administration, employee_ID, child_id)
VALUES
		();


INSERT INTO VaccineNames (vaccine_name)
VALUES
		('Hepatitis A'),
		('Hepatitis B'),
		('Polio'),
		('DTP'),
		('Haemophilus influenza type B'),
		('Pneumococcal Vaccine'),
		('Rota virus Vaccine'),
		('Chicken Pox'),
		('MMR'),
		('Iinfleunza');
