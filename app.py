import os

name = os.getenv("STUDENT_NAME", "Jahongir")
surname = os.getenv("STUDENT_SURNAME", "Kamilzhanov")
group = os.getenv("STUDENT_GROUP", "IT2-2314")
student_id = os.getenv("STUDENT_ID", "37941")

print("================================")
print("DevOps Student Application")
print("================================")
print(f"Name: {name}")
print(f"Surname: {surname}")
print(f"Group: {group}")
print(f"Student ID: {student_id}")
print("")
print("Application is running successfully!")