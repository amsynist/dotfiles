import openmeteo_requests
import requests_cache
from retry_requests import retry
from os import system

cache_session = requests_cache.CachedSession('.cache', expire_after=10)
retry_session = retry(cache_session, retries=5, backoff_factor=0.2)
openmeteo = openmeteo_requests.Client(session=retry_session)

url = "https://api.open-meteo.com/v1/forecast"
params = {
    "latitude": 123,
    "longitude": 123,
    "current": ["temperature_2m", "is_day", "weather_code"],
    "timezone": "auto",
    "forecast_days": 1
}
responses = openmeteo.weather_api(url, params=params)

response = responses[0]
current = response.Current()
current_temperature_2m = current.Variables(0).Value()
current_is_day = current.Variables(1).Value()
current_weather_code = current.Variables(2).Value()

formatted_temp = f'{round(current_temperature_2m)}°'

weather_icon = '?'

icon_color = '0xff83a598'

if current_weather_code == 0:
    if current_is_day:
        weather_icon = ''
        icon_color = '0xfffabd2f'
    else:
        weather_icon = ''

if current_weather_code in [1, 2]:
    if current_is_day:
        weather_icon = '󰖕'
        icon_color = '0xfffabd2f'
    else:
        weather_icon = '󰼱'

if current_weather_code == 3:
    weather_icon = ''

if current_weather_code in [45, 48]:
    weather_icon = '󰖑'

if current_weather_code in [51, 53, 55, 61, 63, 65, 80, 81, 82]:
    weather_icon = ''

if current_weather_code in [56, 57, 66, 67]:
    weather_icon = ''

if current_weather_code in [71, 73, 75, 77, 85, 86]:
    weather_icon = ''

if current_weather_code == 95:
    weather_icon = ''

system(f'sketchybar --set weather icon={weather_icon} icon.color={icon_color} label={formatted_temp}')
