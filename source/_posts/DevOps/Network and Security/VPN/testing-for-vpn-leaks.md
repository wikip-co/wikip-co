---
title: Testing for VPN Leaks
image: internet-security
tags:
-
---
## Description

To verify there are no leaks in your VPN connection we can use the command-line tool, cURL to fetch a response from a public web API allowing us to check if there are any leaks in our connection.  This helps to ensure traffic is being securely routed.

#### IPV6

```
curl https://ipleak.net/json/
```

If successful, you should get the following response:

```
curl: (6) Could not resolve host: ipleak.net
```

If there is a leak you should see the following output:

```
{
    "country_code": "US",
    "country_name": "United States",
    "region_code": "CA",
    "region_name": "California",
    "continent_code": "NA",
    "continent_name": "North America",
    "city_name": "Santee",
    "postal_code": null,
    "postal_confidence": null,
    "latitude": 32.8466,
    "longitude": -116.977,
    "accuracy_radius": 5,
    "time_zone": "America\/Los_Angeles",
    "metro_code": 825,
    "level": "min",
    "cache": 1638138719,
    "ip": "2500:3701:8105:f200::817a",
    "reverse": "",
    "query_text": "2500:8902:2108:f600::831a",
    "query_type": "myip",
    "query_date": 1638138719
}
```

#### IPV4

```
curl https://ipv4.ipleak.net/json/
```

If successful, you should get the following response:

```
curl: (6) Could not resolve host: ipleak.net
```

If there is a leak you should see the following output:

```
{
    "country_code": "US",
    "country_name": "United States",
    "region_code": "CA",
    "region_name": "California",
    "continent_code": "NA",
    "continent_name": "North America",
    "city_name": "Santee",
    "postal_code": null,
    "postal_confidence": null,
    "latitude": 32.8466,
    "longitude": -116.977,
    "accuracy_radius": 10,
    "time_zone": "America\/Los_Angeles",
    "metro_code": 825,
    "level": "min",
    "cache": 1638138620,
    "ip": "68.7.102.75",
    "reverse": "",
    "query_text": "68.2.101.55",
    "query_type": "myip",
    "query_date": 1638138620
}
```

