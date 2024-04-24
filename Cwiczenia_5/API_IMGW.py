# -*- coding: utf-8 -*-
"""Untitled6.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1kO76y5StnsH9ZFhmU4lq331gdE4EMXsn
"""

import requests
import json
from google.colab import files

# Pobranie danych z IMGW
def get_weather_data(city_name):
    url = "https://danepubliczne.imgw.pl/api/data/synop"
    response = requests.get(url)
    data = response.json()

    weather_data = []
    for entry in data:
        if entry['stacja'] == city_name:
            weather_info = {
                'id_stacji': entry['id_stacji'],
                'temperatura': float(entry['temperatura']),
                'data_pomiaru': entry['data_pomiaru'],
                'godzina_pomiaru': entry['godzina_pomiaru'],
                'suma_opadu': float(entry['suma_opadu']),
                'cisnienie': float(entry['cisnienie'])
            }
            weather_data.append(weather_info)

    return weather_data


# Funkcja znajdująca minimalną temperaturę
def find_min_temperature():
    min_temp = None
    min_temp_city = None

    for city_name in cities_names:
        weather_data = get_weather_data(city_name)
        for weather_info in weather_data:
            temp = weather_info['temperatura']
            if min_temp is None or temp < min_temp:
                min_temp = temp
                min_temp_city = city_name

    return min_temp, min_temp_city

# Funkcja znajdująca maksymalną temperaturę
def find_max_temperature():
    max_temp = None
    max_temp_city = None

    for city_name in cities_names:
        weather_data = get_weather_data(city_name)
        for weather_info in weather_data:
            temp = weather_info['temperatura']
            if max_temp is None or temp > max_temp:
                max_temp = temp
                max_temp_city = city_name

    return max_temp, max_temp_city

# Funkcja znajdująca minimalną wartość opadów
def find_min_rain():
    min_rain = None
    min_rain_cities = []

    for city_name in cities_names:
        weather_data = get_weather_data(city_name)
        for weather_info in weather_data:
            rain = weather_info['suma_opadu']
            if min_rain is None or rain < min_rain:
                min_rain = rain
                min_rain_cities = [city_name]
            elif rain == min_rain:
                min_rain_cities.append(city_name)

    return min_rain, min_rain_cities



# Funkcja znajdująca maksymalną wartość opadów
def find_max_rain():
    max_rain = None
    max_rain_city = None

    for city_name in cities_names:
        weather_data = get_weather_data(city_name)
        for weather_info in weather_data:
            rain = weather_info['suma_opadu']
            if max_rain is None or rain > max_rain:
                max_rain = rain
                max_rain_city = city_name

    return max_rain, max_rain_city


# Funkcja znajdująca minimalne ciśnienie
def find_min_pressure():
    min_pressure = None
    min_pressure_city = None

    for city_name in cities_names:
        weather_data = get_weather_data(city_name)
        for weather_info in weather_data:
            pressure = weather_info['cisnienie']
            if min_pressure is None or pressure < min_pressure:
                min_pressure = pressure
                min_pressure_city = city_name

    return min_pressure, min_pressure_city


# Funkcja znajdująca maksymalne ciśnienie
def find_max_pressure():
    max_pressure = None
    max_pressure_city = None

    for city_name in cities_names:
        weather_data = get_weather_data(city_name)
        for weather_info in weather_data:
            pressure = weather_info['cisnienie']
            if max_pressure is None or pressure > max_pressure:
                max_pressure = pressure
                max_pressure_city = city_name

    return max_pressure, max_pressure_city

# Lista miast wojewódzkich
cities_names = [
    "Warszawa",
    "Kraków",
    "Łódź",
    "Wrocław",
    "Poznań",
    "Gdańsk",
    "Szczecin",
    "Bydgoszcz",
    "Lublin",
    "Białystok",
    "Katowice",
    "Kielce",
    "Rzeszów",
    "Olsztyn"
]

# Tworzenie słownika do przechowywania danych dla miast
all_weather_data = {}

# Pobranie danych dla miast
for city_name in cities_names:
    all_weather_data[city_name] = get_weather_data(city_name)



# Znalezienie minimalnej temperatury
min_temperature, min_temp_city = find_min_temperature()

# Znalezienie maksymalnej temperatury
max_temperature, max_temp_city = find_max_temperature()

# Znalezienie minimalnej sumy opadów
min_rain, min_rain_cities = find_min_rain()

# Znalezienie maksymalnej sumy opadów
max_rain, max_rain_city = find_max_rain()

# Znalezienie minimalnego ciśnienia
min_pressure, min_pressure_city = find_min_pressure()

# Znalezienie maksymalnego ciśnienia
max_pressure, max_pressure_city = find_max_pressure()

# Dodanie informacji do słownika
all_weather_data["min_temperature"] = {"value": min_temperature, "city": min_temp_city}
all_weather_data["max_temperature"] = {"value": max_temperature, "city": max_temp_city}
all_weather_data["min_rain"] = {"value": min_rain, "cities": min_rain_cities}
all_weather_data["max_rain"] = {"value": max_rain, "city": max_rain_city}
all_weather_data["min_pressure"] = {"value": min_pressure, "city": min_pressure_city}
all_weather_data["max_pressure"] = {"value": max_pressure, "city": max_pressure_city}

# Obliczanie średnich wartości
all_temperatures = [weather_info['temperatura'] for city_name in cities_names for weather_info in get_weather_data(city_name)]
if all_temperatures:
    average_temperature = sum(all_temperatures) / len(all_temperatures)
    all_weather_data["average_temperature"] = average_temperature

all_rain = [weather_info['suma_opadu'] for city_name in cities_names for weather_info in get_weather_data(city_name)]
if all_rain:
    average_rain = sum(all_rain) / len(all_rain)
    all_weather_data["average_rain"] = average_rain

all_pressure = [weather_info['cisnienie'] for city_name in cities_names for weather_info in get_weather_data(city_name)]
if all_pressure:
    average_pressure = sum(all_pressure) / len(all_pressure)
    all_weather_data["average_pressure"] = average_pressure


# Zapisanie do pliku JSON
with open('dane_pogodowe.json', 'w', encoding='utf-8') as json_file:
    json.dump(all_weather_data, json_file, ensure_ascii=False, indent=4)


print("Dane pogodowe zostały zapisane.")

files.download('dane_pogodowe.json')