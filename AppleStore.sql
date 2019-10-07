1. Which are the different genres?
SELECT prime_genre
FROM data
Group by prime_genre;

2. Which is the genre with more apps rated?
SELECT prime_genre, rating_count_tot
FROM data
GROUP BY prime_genre, rating_count_tot
ORDER BY rating_count_tot DESC
Limit 1;

3. Which is the genre with more apps?
SELECT prime_genre, COUNT(*) AS Records
From data
Group by prime_genre
Order by Records DESC
Limit 1;

4. Which is the one with less?
SELECT prime_genre, COUNT(*) AS Records
From data
Group by prime_genre
Order by Records ASC
Limit 1;

5. Take the 10 most rated apps.
SELECT track_name, rating_count_tot
FROM data
GROUP BY track_name, rating_count_tot
ORDER BY rating_count_tot DESC
Limit 10;


SELECT prime_genre, sum(rating_count_tot) AS SumRating
FROM data
GROUP BY prime_genre
ORDER BY SumRating DESC
Limit 10;

6. Take the 10 apps best rated by users.
SELECT track_name, user_rating
FROM data
GROUP BY track_name, user_rating
ORDER BY user_rating DESC
Limit 10;

SELECT prime_genre, AVG(user_rating) AS AvgRating
FROM data
GROUP BY prime_genre
ORDER BY AvgRating DESC
Limit 10;


