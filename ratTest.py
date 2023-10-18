import requests
r = requests.get('https://github.com/kennethreitz/requests/blob/master/README.md')
print(r.text)