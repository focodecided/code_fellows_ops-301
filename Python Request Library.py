import requests

def get_http_method():
    while True:
        method = input("Select HTTP Method (GET, POST, PUT, DELETE, HEAD, PATCH, OPTIONS): ").upper()
        if method in ["GET", "POST", "PUT", "DELETE", "HEAD", "PATCH", "OPTIONS"]:
            return method
        else:
            print("Invalid method. Please select from the provided options.")

def translate_status_code(status_code):
    status_codes = {
        200: "OK",
        201: "Created",
        400: "Bad Request",
        401: "Unauthorized",
        403: "Forbidden",
        404: "Not Found",
        500: "Internal Server Error",
        # Add more status codes and their translations as needed
    }
    return status_codes.get(status_code, "Unknown Status Code")

if __name__ == "__main__":
    destination_url = input("Enter the destination URL: ")
    http_method = get_http_method()

    print(f"Request to be sent: {http_method} request to {destination_url}")
    confirmation = input("Do you want to proceed? (yes/no): ").lower()

    if confirmation == "yes":
        response = requests.request(http_method, destination_url)
        
        print(f"Response Code: {response.status_code} - {translate_status_code(response.status_code)}")
    else:
        print("Request aborted.")

# I got help from ChatGpt for this. I had a general structure but didn't know where to start. 