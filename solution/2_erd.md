https://mermaid.live/

erDiagram
    leagues {
        int id PK
        int country_id FK
        string name
    }

    match {
        int id PK
        int country_id FK
        int league_id FK
        string  season
        int stage
        timestamp   date
        int match_api_id PK
        int home_team_api_id FK
        int away_team_api_id FK
        int home_team_goal
        int away_team_goal
    }

    player {
        int id PK
        int player_api_id PK
        string player_name
        timestamp birthday
        float height
        int weight
    }

    team {
        int id PK
        int team_api_id PK
        string team_long_name
        string team_short_name
    }

    match ||--|{ team : involves
    match ||--o| leagues : part_of
