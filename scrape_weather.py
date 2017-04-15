# See also scrape_weather.ipynb

from bs4 import BeautifulSoup
import requests
import pandas as pd
import numpy as np
import re

def scrape_weather(zipcode, inspection_date):
    # Define the base URL for the Weather Underground historical archives
    baseurl = 'https://www.wunderground.com/history/zipcode/{}/{}/{}/{}/DailyHistory.html' # zipcode, year, month, day

    # Define regular expression we'll use later
    tag_regex = re.compile(r'<.+>([0-9.,]+)<\/.+>')
    
    # Initialize lists to store 3-day temperature and humidity
    temperature = [np.nan]*3
    humidity = [np.nan]*3

    # Scrape temperature and humidity for inspection date and up to 2 days prior
    for i in range(0,3):
        # Subtract appropriate number of days
        date = inspection_date - np.timedelta64(i,'D')

        # Extract year, month, and day from datetime object
        year = pd.to_datetime(str(date)).year
        month = pd.to_datetime(str(date)).month
        day = pd.to_datetime(str(date)).day

        # Open URL and turn into BeautifulSoup
        r = requests.get(baseurl.format(zipcode, year, month, day)).text
        soup = BeautifulSoup(r, 'lxml')

        # Find tags corresponding to average temperature and humidity
        temperature_tag = soup.find('span', string='Mean Temperature').find_next(class_='wx-value')
        humidity_tag = soup.find('span', string='Average Humidity').find_next('td')

        # Use regex to extract numerical value from tags
        # Also convert to float
        match = re.search(tag_regex, str(temperature_tag))
        if match:
            temperature[i] = float(match.group(1))
        match = re.search(tag_regex, str(humidity_tag))
        if match:
            humidity[i] = float(match.group(1))

    avg_temperature = np.mean(temperature)
    avg_humidity = np.mean(humidity)
    
    return avg_temperature, avg_humidity