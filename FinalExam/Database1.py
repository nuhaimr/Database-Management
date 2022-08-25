# Nuha Imran
# 20696366
import mysql.connector
username = input("Enter your username?")
passwordp = input("Enter your password?")
databased = input("Enter databasename?")
#connecting to database
conn = mysql.connector.connect(user=username,
                               password=passwordp,
                               database=databased)
cursor = conn.cursor()

#priting options
print("1)Display driver table")
print("2)Display Team table")
print("3)Display Winner table")
print("4)Display Participates In table")
print("5)Display Tracks table")
print("6)Drivers with multiple wins")
print("7)Teams that have same engine constructors")
print("8)Drivers who have highest points in championship so far?")
print("9)To insert more teams to table team")
print("10)To insert more winners")
print("11)To view best drivers")
print("12)To view drivers who have won more than one race")
#getting user input
userinput = input("\nChoose which table you want to display?\n")


#if this then execute this else the other statement so on
if userinput == "1":
        # Using the cursor as iterator
        cursor.execute("SELECT * FROM Drivers")
        for row in cursor:
            print(row)

        print("\n")

elif userinput == "2":
        cursor.execute("SELECT * FROM Team")
        for row in cursor:
            print(row)
        print("\n")

elif userinput == "3":
        cursor.execute("SELECT * FROM Winner")
        for row in cursor:
            print(row)

        print("\n")

elif userinput == "4":
        cursor.execute("SELECT * FROM ParticipatesIn")
        for row in cursor:
            print("Date:", row[0], "Time:", row[1],
                  "DriverNo:", row[2], "GrandPrix:", row[3])
        print("\n")

elif userinput == "5":
        cursor.execute("SELECT * FROM Tracks")
        for row in cursor:
            print("CircuitName:", row[0], "GrandPrix:", row[1],
                  "circuitlength:", row[2], "city:", row[3])


elif userinput == "6":
       cursor.execute("SELECT w.DriverNo, COUNT(w.DriverNo),d.DName,d.TName From Winner w INNER JOIN Drivers d ON d.DNumber = w.DriverNo GROUP BY DriverNo HAVING COUNT(DriverNo) > 1")
       for row in cursor:
        print(row)
        
elif userinput == "7":
        cursor.execute("SELECT TName, constructor FROM Team WHERE constructor IN (SELECT constructor FROM Team GROUP BY constructor HAVING COUNT(*) > 1)")
        for row in cursor:
            print(row)
            
            
        print("\n")
        
elif userinput == "8":
        cursor.execute("SELECT points,DName FROM Drivers ORDER BY points DESC")
        for row in cursor:
            print(row)
            
            
        print("\n")

elif userinput == "9":
       TeamName = input("Write a team Name?")
       TeamCons = input("Write constructor Name?")
       chas = input("Write engine model?")
       poi = input("Write team point?")
       
       points = int(poi)
       TVal = (TeamName,TeamCons,chas,points)
       cursor.execute("CALL insNewTeam(%s,%s,%s,%s)",TVal)
       #this will show the change on table
       conn.commit()
       
elif userinput == "10":
      place = input("Enter the place where the race took place?")
      Team_Name = input("Team the winner belonged to?")
      DriverNo =  input("Driver Number of the winner?")
      
      DNo = int(DriverNo)
      Val2 = (place,Team_Name,DNo)
      cursor.execute("CALL insNewWinner(%s,%s,%s)",Val2)
      conn.commit()
      
elif userinput == "11":
     cursor.execute("SELECT DNumber,DName,points,racesEntered FROM Drivers WHERE racesEntered > 50 AND points > 2000")
     for row in cursor:
            print(row)
            
            
     print("\n")
        
elif userinput == "12":
 cursor.execute("SELECT w.DriverNo, COUNT(w.DriverNo),d.DName,d.TName From Winner w INNER JOIN Drivers d ON d.DNumber = w.DriverNo GROUP BY DriverNo HAVING COUNT(DriverNo) > 1")
 for row in cursor:
  print(row)

       
cursor.close()      
conn.close()
 

