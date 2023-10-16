# Creepyfollows - Backend

This is the backend logic as api consumed by `creepyfollows_frontend`

It is a standard Rails 7 application.
To run it locally after cloning, just use the standard Rails commands.

## Endpoints

- `GET /api/v1/` - list of reported creepy follows ('harasses')
- `POST /api/v1/harasses` - report a creepy follow using the following params:
    - `start_address`, eg. "Kurfürstendamm 101, Berlin"
    - `description`, eg. "The person followed me from the train"
    - `happened_at`, a date "2023-10-17T18:10"

```json
{
    "harass": {
        "start_address": "Wilhelminenhofstraße 92, Berlin",
        "happened_at": "2023-10-17T18:10",
        "description": "A person followed me"
    }
}
```
Will result in this response.

```json
{
    "status": "OK",
    "message": "created harass case",
    "harass": {
        "id": 23,
        "start_address": "Wilhelminenhofstraße 92, Berlin",
        "happened_at": "2023-10-17T18:10:00.000Z",
        "longitude": 13.5092577,
        "latitude": 52.462052,
        "description": "A person followed me",
        "created_at": "2023-10-16T16:26:39.141Z",
        "updated_at": "2023-10-16T16:26:39.141Z"
    }
}

```