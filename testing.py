import requests

url = 'http://localhost:8000/libros'

def call_api(url):
    api_connection = False
    connection_attempts = 3
    api_req = None
    api_content = None
    
    while not api_connection and connection_attempts > 0:
        try:
            api_req = requests.get(url)
            
            if api_req.status_code == 200:
                print(f"Connection to {url} successful")
                api_content = api_req.content
                api_connection = True
            else:
                print(f"Something went wrong with {url} - Status code: {api_req.status_code}")
        except requests.RequestException as e:
            print(f"Connection to {url} cannot be established. Exception: {e}")
        
        connection_attempts -= 1

    return api_content

call_api(url)
