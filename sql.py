import mysql.connector

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='Prikshit@1620',  
    database='mydatabase'  
)

if conn.is_connected():
    print("Connected to MySQL successfully!")

cursor = conn.cursor()

cursor.execute("""
    CREATE TABLE IF NOT EXISTS hotel_info (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(55),
        location VARCHAR(55),
        price DECIMAL(10,2)
    )
""")

print("Database and table ready!")


hotels = [
    ("Taj Hotel", "Delhi", 12000),
    ("Oberoi", "Mumbai", 9000),
    ("Leela Palace", "Bangalore", 11000)
]

cursor.executemany("INSERT INTO hotel_info (name, location, price) VALUES (%s, %s, %s)", hotels)
conn.commit()

print("Hotels added!")


cursor.execute("SELECT * FROM hotel_info")
for hotel in cursor.fetchall():
    print(hotel)

cursor.execute("UPDATE hotel_info SET price = 13000 WHERE name = 'Taj Hotel'")
conn.commit()
print('Data Updated')

cursor.execute("DELETE FROM hotel_info WHERE name = 'Oberoi'")
conn.commit()

print("Hotel deleted!")
cursor.close()
conn.close()





