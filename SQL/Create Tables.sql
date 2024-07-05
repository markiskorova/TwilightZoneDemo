CREATE TABLE Episodes (
  EpisodeID INT PRIMARY KEY,
  Title VARCHAR(255) NOT NULL,
  Season INT NOT NULL,
  EpisodeNumber INT NOT NULL,
  AirDate DATE,
  Synopsis VARCHAR(MAX)
);

CREATE TABLE Cast (
  CastID INT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL
);

CREATE TABLE EpisodeCast (
  EpisodeID INT NOT NULL,
  CastID INT NOT NULL,
  PRIMARY KEY (EpisodeID, CastID),
  FOREIGN KEY (EpisodeID) REFERENCES Episodes(EpisodeID),
  FOREIGN KEY (CastID) REFERENCES Cast(CastID)
);

CREATE TABLE Directors (
  DirectorID INT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL
);

CREATE TABLE EpisodeDirectors (
  EpisodeID INT NOT NULL,
  DirectorID INT NOT NULL,
  PRIMARY KEY (EpisodeID, DirectorID),
  FOREIGN KEY (EpisodeID) REFERENCES Episodes(EpisodeID),
  FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID)
);