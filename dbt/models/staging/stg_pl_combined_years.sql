{{ config(
    materialized='table'
) }}

with combined_dates as (
SELECT
    '93-94' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    '' as halfTimeHomeGoals,
    '' as halfTimeAwayGoals,
    '' as halfTimeResult,
    '' as attendance,
    '' as referee,
    '' as homeShots,
    '' as awayShots,
    '' as homeShotsOnTarget,
    '' as awayShotsOnTarget,
    '' as homeHitWoodwork,
    '' as awayHitWoodwork,
    '' as homeCorners,
    '' as awayCorners,
    '' as homeFouls,
    '' as awayFouls,
    '' as homeOffsides,
    '' as awayOffsides,
    '' as homeYellowCards,
    '' as awayYellowCards,
    '' as homeRedCards,
    '' as awayRedCards,
    '' as homeBookingPoints,
    '' as awayBookingPoints,
    '' as gameBetHome,
    '' as gameBetDraw,
    '' as gameBetAway,
    '' as interwettenHome,
    '' as interwettenDraw,
    '' as interwettenAway,
    '' as ladbrokesHome,
    '' as ladbrokesDraw,
    '' as ladbrokesAway,
    '' as stanJamesHome,
    '' as stanJamesDraw,
    '' as stanJamesAway,
    '' as williamHillHome,
    '' as williamHillDraw,
    '' as williamHillAway
FROM PL_93_94

UNION ALL

SELECT
    '94-95' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    '' as halfTimeHomeGoals,
    '' as halfTimeAwayGoals,
    '' as halfTimeResult,
    '' as attendance,
    '' as referee,
    '' as homeShots,
    '' as awayShots,
    '' as homeShotsOnTarget,
    '' as awayShotsOnTarget,
    '' as homeHitWoodwork,
    '' as awayHitWoodwork,
    '' as homeCorners,
    '' as awayCorners,
    '' as homeFouls,
    '' as awayFouls,
    '' as homeOffsides,
    '' as awayOffsides,
    '' as homeYellowCards,
    '' as awayYellowCards,
    '' as homeRedCards,
    '' as awayRedCards,
    '' as homeBookingPoints,
    '' as awayBookingPoints,
    '' as gameBetHome,
    '' as gameBetDraw,
    '' as gameBetAway,
    '' as interwettenHome,
    '' as interwettenDraw,
    '' as interwettenAway,
    '' as ladbrokesHome,
    '' as ladbrokesDraw,
    '' as ladbrokesAway,
    '' as stanJamesHome,
    '' as stanJamesDraw,
    '' as stanJamesAway,
    '' as williamHillHome,
    '' as williamHillDraw,
    '' as williamHillAway
FROM PL_94_95

UNION ALL

SELECT
    '95-96' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    '' as attendance,
    '' as referee,
    '' as homeShots,
    '' as awayShots,
    '' as homeShotsOnTarget,
    '' as awayShotsOnTarget,
    '' as homeHitWoodwork,
    '' as awayHitWoodwork,
    '' as homeCorners,
    '' as awayCorners,
    '' as homeFouls,
    '' as awayFouls,
    '' as homeOffsides,
    '' as awayOffsides,
    '' as homeYellowCards,
    '' as awayYellowCards,
    '' as homeRedCards,
    '' as awayRedCards,
    '' as homeBookingPoints,
    '' as awayBookingPoints,
    '' as gameBetHome,
    '' as gameBetDraw,
    '' as gameBetAway,
    '' as interwettenHome,
    '' as interwettenDraw,
    '' as interwettenAway,
    '' as ladbrokesHome,
    '' as ladbrokesDraw,
    '' as ladbrokesAway,
    '' as stanJamesHome,
    '' as stanJamesDraw,
    '' as stanJamesAway,
    '' as williamHillHome,
    '' as williamHillDraw,
    '' as williamHillAway
FROM PL_95_96

UNION ALL

SELECT
    '96-97' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    '' as attendance,
    '' as referee,
    '' as homeShots,
    '' as awayShots,
    '' as homeShotsOnTarget,
    '' as awayShotsOnTarget,
    '' as homeHitWoodwork,
    '' as awayHitWoodwork,
    '' as homeCorners,
    '' as awayCorners,
    '' as homeFouls,
    '' as awayFouls,
    '' as homeOffsides,
    '' as awayOffsides,
    '' as homeYellowCards,
    '' as awayYellowCards,
    '' as homeRedCards,
    '' as awayRedCards,
    '' as homeBookingPoints,
    '' as awayBookingPoints,
    '' as gameBetHome,
    '' as gameBetDraw,
    '' as gameBetAway,
    '' as interwettenHome,
    '' as interwettenDraw,
    '' as interwettenAway,
    '' as ladbrokesHome,
    '' as ladbrokesDraw,
    '' as ladbrokesAway,
    '' as stanJamesHome,
    '' as stanJamesDraw,
    '' as stanJamesAway,
    '' as williamHillHome,
    '' as williamHillDraw,
    '' as williamHillAway
FROM PL_96_97

UNION ALL

SELECT
    '97-98' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    '' as attendance,
    '' as referee,
    '' as homeShots,
    '' as awayShots,
    '' as homeShotsOnTarget,
    '' as awayShotsOnTarget,
    '' as homeHitWoodwork,
    '' as awayHitWoodwork,
    '' as homeCorners,
    '' as awayCorners,
    '' as homeFouls,
    '' as awayFouls,
    '' as homeOffsides,
    '' as awayOffsides,
    '' as homeYellowCards,
    '' as awayYellowCards,
    '' as homeRedCards,
    '' as awayRedCards,
    '' as homeBookingPoints,
    '' as awayBookingPoints,
    '' as gameBetHome,
    '' as gameBetDraw,
    '' as gameBetAway,
    '' as interwettenHome,
    '' as interwettenDraw,
    '' as interwettenAway,
    '' as ladbrokesHome,
    '' as ladbrokesDraw,
    '' as ladbrokesAway,
    '' as stanJamesHome,
    '' as stanJamesDraw,
    '' as stanJamesAway,
    '' as williamHillHome,
    '' as williamHillDraw,
    '' as williamHillAway
FROM PL_97_98

UNION ALL

SELECT
    '98-99' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    '' as attendance,
    '' as referee,
    '' as homeShots,
    '' as awayShots,
    '' as homeShotsOnTarget,
    '' as awayShotsOnTarget,
    '' as homeHitWoodwork,
    '' as awayHitWoodwork,
    '' as homeCorners,
    '' as awayCorners,
    '' as homeFouls,
    '' as awayFouls,
    '' as homeOffsides,
    '' as awayOffsides,
    '' as homeYellowCards,
    '' as awayYellowCards,
    '' as homeRedCards,
    '' as awayRedCards,
    '' as homeBookingPoints,
    '' as awayBookingPoints,
    '' as gameBetHome,
    '' as gameBetDraw,
    '' as gameBetAway,
    '' as interwettenHome,
    '' as interwettenDraw,
    '' as interwettenAway,
    '' as ladbrokesHome,
    '' as ladbrokesDraw,
    '' as ladbrokesAway,
    '' as stanJamesHome,
    '' as stanJamesDraw,
    '' as stanJamesAway,
    '' as williamHillHome,
    '' as williamHillDraw,
    '' as williamHillAway
FROM PL_98_99

UNION ALL

SELECT
    '99-00' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    '' as attendance,
    '' as referee,
    '' as homeShots,
    '' as awayShots,
    '' as homeShotsOnTarget,
    '' as awayShotsOnTarget,
    '' as homeHitWoodwork,
    '' as awayHitWoodwork,
    '' as homeCorners,
    '' as awayCorners,
    '' as homeFouls,
    '' as awayFouls,
    '' as homeOffsides,
    '' as awayOffsides,
    '' as homeYellowCards,
    '' as awayYellowCards,
    '' as homeRedCards,
    '' as awayRedCards,
    '' as homeBookingPoints,
    '' as awayBookingPoints,
    '' as gameBetHome,
    '' as gameBetDraw,
    '' as gameBetAway,
    '' as interwettenHome,
    '' as interwettenDraw,
    '' as interwettenAway,
    '' as ladbrokesHome,
    '' as ladbrokesDraw,
    '' as ladbrokesAway,
    '' as stanJamesHome,
    '' as stanJamesDraw,
    '' as stanJamesAway,
    '' as williamHillHome,
    '' as williamHillDraw,
    '' as williamHillAway
FROM PL_99_00

UNION ALL

SELECT
    '00-01' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_00_01

Union ALL

SELECT
    '01-02' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_01_02

union ALL

SELECT
    '02-03' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_02_03

union ALL

SELECT
    '03-04' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_03_04

union ALL

SELECT
    '04-05' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_04_05

union ALL

SELECT
    '05-06' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_05_06

union ALL

SELECT
    '06-07' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_06_07

union ALL

SELECT
    '07-08' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_07_08

union ALL

SELECT
    '08-09' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_08_09

union ALL

SELECT
    '09-10' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_09_10

union ALL

SELECT
    '10-11' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_10_11

union ALL

SELECT
    '11-12' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_11_12

union ALL

SELECT
    '12-13' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_12_13

union ALL

SELECT
    '13-14' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_13_14

union ALL

SELECT
    '14-15' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_14_15

union ALL

SELECT
    '15-16' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_15_16

union ALL

SELECT
    '16-17' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_16_17

union ALL

SELECT
    '17-18' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_17_18

union ALL

SELECT
    '18-19' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_18_19

union ALL

SELECT
    '19-20' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_19_20

union ALL

SELECT
    '20-21' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_20_21

union ALL

SELECT
    '21-22' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_21_22

union ALL

SELECT
    '22-23' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_22_23

union ALL

SELECT
    '23-24' as season,
    date as originalDate,
  date(
    CASE
      WHEN CAST(substr("DATE", 7, 2) AS INTEGER) < 50
      THEN printf('20%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
      ELSE printf('19%02d-%02d-%02d',
          CAST(substr("DATE", 7, 2) AS INTEGER),  -- year
          CAST(substr("DATE", 4, 2) AS INTEGER),  -- month
          CAST(substr("DATE", 1, 2) AS INTEGER)   -- day
      )
    END
  ) AS matchDate,
    HomeTeam,
    AwayTeam,
    FTHG as fullTimeHomeGoals,
    FTAG as fullTimeAwayGoals,
    FTR as fullTimeResult,
    HTHG as halfTimeHomeGoals,
    HTAG as halfTimeAwayGoals,
    HTR as halfTimeResult,
    Attendance as attendance,
    Referee as referee,
    HS as homeShots,
    "AS" as awayShots,
    HST as homeShotsOnTarget,
    AST as awayShotsOnTarget,
    HHW as homeHitWoodwork,
    AHW as awayHitWoodwork,
    HC as homeCorners,
    AC as awayCorners,
    HF as homeFouls,
    AF as awayFouls,
    HO as homeOffsides,
    AO as awayOffsides,
    HY as homeYellowCards,
    AY as awayYellowCards,
    HR as homeRedCards,
    AR as awayRedCards,
    HBP as homeBookingPoints,
    ABP as awayBookingPoints,
    GBH as gameBetHome,
    GBD as gameBetDraw,
    GBA as gameBetAway,
    IWH as interwettenHome,
    IWD as interwettenDraw,
    IWA as interwettenAway,
    LBH as ladbrokesHome,
    LBD as ladbrokesDraw,
    LBA as ladbrokesAway,
    SBH as stanJamesHome,
    SBD as stanJamesDraw,
    SBA as stanJamesAway,
    WHH as williamHillHome,
    WHD as williamHillDraw,
    WHA as williamHillAway
FROM PL_23_24

)
select *
from combined_dates
where matchDate is not null
