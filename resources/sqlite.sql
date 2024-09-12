-- #!sqlite
-- # { players
-- #  { initialize
CREATE TABLE IF NOT EXISTS players_rpgskills (
    uuid VARCHAR(36) PRIMARY KEY,
    username VARCHAR(16),
    mining_level INT DEFAULT 0,
    attack_level INT DEFAULT 0,
    farming_level INT DEFAULT 0,
    gathering_level INT DEFAULT 0,
    defense_level INT DEFAULT 0,
    magic_level INT DEFAULT 0,
    building_level INT DEFAULT 0,
    agility_level INT DEFAULT 0
    );
-- #  }

-- #  { select
SELECT *
FROM players_rpgskills;
-- #  }

-- #  { create
-- #      :uuid string
-- #      :username string
-- #      :title string
INSERT OR REPLACE INTO players_rpgskills(uuid, username, title)
VALUES (:uuid, :username, :title);
-- #  }

-- #  { update
-- #      :uuid string
-- #      :username string
-- #      :title string
UPDATE players_rpgskills
SET username=:username,
    title=:title
WHERE uuid=:uuid;
-- #  }

-- #  { delete
-- #      :uuid string
DELETE FROM players_rpgskills
WHERE uuid=:uuid;
-- #  }
-- # }