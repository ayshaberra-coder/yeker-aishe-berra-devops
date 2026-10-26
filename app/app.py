import os
import time

name = os.getenv("STUDENT_NAME", "Aishe-berra")
surname = os.getenv("STUDENT_SURNAME", "Yeker")
group = os.getenv("STUDENT_GROUP", "IT2-2309")
sid = os.getenv("STUDENT_ID", "37162")

print("================================")
print("DevOps Student Application")
print("================================")
print()
print(f"Name: {name}")
print(f"Surname: {surname}")
print(f"Group: {group}")
print(f"Student ID: {sid}")
print()
print("Application is running successfully!", flush=True)

while True:
    time.sleep(60)
