----select *
----from PorfolioProject..CovidDeaths
----order by 3,4

--select *
--from PorfolioProject..CovidVaccinations
--order by 3,4

--Select data that we are going to be using

--Select location, date, total_cases, new_cases, total_deaths, population
--From PorfolioProject..CovidDeaths
--order by 1,2

-- Looking at total cases vs total deaths
-- Shows likelihood of dying if you contract covid in your country

Select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From PorfolioProject..CovidDeaths
Where location like	'%states%'
order by 1,2

-- Looking at Total Cases vs Population
-- Shows what percentage of population got Covid

Select location, date,population, total_cases, (total_cases/population)*100 as DeathPercentage
From PorfolioProject..CovidDeaths
Where location like	'%states%'
order by 1,2