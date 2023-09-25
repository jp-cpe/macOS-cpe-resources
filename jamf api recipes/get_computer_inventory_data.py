import requests
url="https://yourserver.jamfcloud.com"
sections="GENERAL,HARDWARE" ###Supported Values are: GENERAL, DISK_ENCRYPTION, PURCHASING, APPLICATIONS, STORAGE, USER_AND_LOCATION, CONFIGURATION_PROFILES, PRINTERS, SERVICES, HARDWARE, LOCAL_USER_ACCOUNTS, CERTIFICATES, ATTACHMENTS, PLUGINS, PACKAGE_RECEIPTS, FONTS, SECURITY, OPERATING_SYSTEM, LICENSED_SOFTWARE, IBEACONS, SOFTWARE_UPDATES, EXTENSION_ATTRIBUTES, CONTENT_CACHING, GROUP_MEMBERSHIPS
bearerToken="TokenValue"

response = requests.get(url + "/api/v1/computers-inventory?section=" + sections,
                    headers={"Authorization": "Bearer " + bearerToken,
                             "Accept": "application/json"})
print(response.text)
