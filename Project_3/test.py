import json
import sys 

person = '{"name": "Bob", "languages": ["English", "Fench"]}'
person_dict = json.loads(person)

# Output: {'name': 'Bob', 'languages': ['English', 'Fench']}
print( person_dict)

# Output: ['English', 'French']
print(person_dict['languages'])

with open(sys.argv[1],'r') as fp:
    form = json.load(fp)

print(form['elements'][1])