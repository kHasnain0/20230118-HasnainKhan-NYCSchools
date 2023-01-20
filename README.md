# 20230118-HasnainKhan-NYCSchools
Swift app for NYC Public School Info

Objectives:

    1. Display a list of NYC High Schools.
        a. Get your data here: https://data.cityofnewyork.us/Education/DOE-High-School-Directory-2017/s3k6-pzi2
                 JSON Data :: https://data.cityofnewyork.us/resource/s3k6-pzi2.json

    2. Selecting a school should show additional information about the school
        a. Display all the SAT scores - include Math, Reading and Writing.
             -SAT data here: https://data.cityofnewyork.us/Education/SAT-Results/f9bf-2cp4
		JSON Data :: https://data.cityofnewyork.us/resource/f9bf-2cp4.json
            -It is up to you to decide what additional information to display



            Changes:

            1. Model View Controller implementation

            2. JSON Request work with API filters:
            one object at a time.

            3. Unit test implemented for Client.
            API call working.

            4. First View working and is populated with
            sample data.

            5. Alamofire and SwiftJSON included in project.



            ToDO:

            1. Add Segue to DetailView
            2. Clean up code
            3. JSONArray request in testing phase
            4. JSON Objects within an Array is the format
              of the API, which creates problems during
              parsing with Alamofire. Custom serialization
              is a possible solution.
            5. Implement DetailView
            6. Swtich to complete use of Structs
