Select *
From [COVID-19]..CovidDeaths$
order by 3,4


-- Select Data that we are going to be using
Select Location, date, total_cases, new_cases, total_deaths, population
From [COVID-19]..CovidDeaths$
order by 1,2

-- Comparing Total Cases vs Total Deaths in Covid-19
Select  Location,date, total_cases, total_deaths, (total_deaths/total_cases)*100 as Death_Percentage
From [COVID-19]..CovidDeaths$
where location like '%Nepal%'
order by 1,2 

-- Looking at Total cases vs Population
Select  Location, Population, date, total_cases, (total_cases/population)*100 as Infection_Percentage
From [COVID-19]..CovidDeaths$
where location like '%Nepal%'
order by 1,2 

-- Looking at Countries with Highest Infection Rate compared to Population
Select  Location, Population, max(cast(total_cases as int)) as HighestInfectionCount, max(total_cases/population)*100 as PercentPopulationInfection
From [COVID-19]..CovidDeaths$
--- where location like '%Nepal%'
Group By Location, Population
order by PercentPopulationInfection DESC

-- Showing the countries with Highest Death Count per population
Select  Location, max(cast(total_deaths as int)) as HighestDeathsCount
From [COVID-19]..CovidDeaths$
--- where location like '%Nepal%'
where continent is not null
Group By Location, Population
order by HighestDeathsCount DESC

-- Showing based on the continents
Select  Continent, max(cast(total_deaths as int)) as TotalDeathCount
From [COVID-19]..CovidDeaths$
--- where location like '%Nepal%'
where continent is not null
Group By Continent
order by TotalDeathCount DESC


--Global Numbers with respect to time
Select date, sum(new_cases) as Cases_Worldwide, sum(cast(new_deaths as int)) as death_worldwide,
			sum(cast(new_deaths as int))/sum(new_cases)*100 as Death_Percentage
From [COVID-19]..CovidDeaths$
--where location like '%Nepal%'
where continent is not null
Group BY date
order by 1,2 

-- Global Number overall
Select sum(new_cases) as Cases_Worldwide, sum(cast(new_deaths as int)) as death_worldwide,
			sum(cast(new_deaths as int))/sum(new_cases)*100 as Death_Percentage
From [COVID-19]..CovidDeaths$
--where location like '%Nepal%'
where continent is not null
order by 1,2 


Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, sum(cast(vac.new_vaccinations as int)) over (partition by dea.location order by dea.location, dea.Date) as RollingPeopleVaccinated
-- , (RollingPeopleVaccinated_/population)*100
From [COVID-19]..CovidDeaths$ as dea
Join [COVID-19]..CovidVaccinations$  as vac
	ON dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
order by 2,3


-- Use CTE

with PopvVac (continent, location, date, population, new_vaccinations, RollingPeopleVaccinated)
as
(
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, sum(cast(vac.new_vaccinations as int)) over (partition by dea.location order by dea.location, dea.Date) as RollingPeopleVaccinated
-- , (RollingPeopleVaccinated_/population)*100
From [COVID-19]..CovidDeaths$ as dea
Join [COVID-19]..CovidVaccinations$  as vac
	ON dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
-- order by 2,3
)
select *, (RollingPeopleVaccinated/Population)*100 as VaccinationPercentage
from PopvVac


-- TEMP Table


Drop table if exists #PercentPopulationVaccination
Create table #PercentPopulationVaccination
(
Continent nvarchar(255),
Location nvarchar(255),
Date datetime,
Population numeric,
new_vaccination numeric,
RollingPeopleVaccinated numeric
)

insert into #PercentPopulationVaccination
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, sum(cast(vac.new_vaccinations as int)) over (partition by dea.location order by dea.location, dea.Date) as RollingPeopleVaccinated
-- , (RollingPeopleVaccinated_/population)*100
From [COVID-19]..CovidDeaths$ as dea
Join [COVID-19]..CovidVaccinations$  as vac
	ON dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
-- order by 2,3

select *, (RollingPeopleVaccinated/Population)*100 as VaccinationPercentage
from #PercentPopulationVaccination

-- Creating a view for later visualization

Create view PercentPopulationVaccination as 
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, sum(cast(vac.new_vaccinations as int)) over (partition by dea.location order by dea.location, dea.Date) as RollingPeopleVaccinated
-- , (RollingPeopleVaccinated_/population)*100
From [COVID-19]..CovidDeaths$ as dea
Join [COVID-19]..CovidVaccinations$  as vac
	ON dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--order by 2,3
