{\rtf1\ansi\ansicpg1252\cocoartf1348\cocoasubrtf170
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\fs24 \cf0 select * from survey limit 10;\
\
select question, count(distinct user_id) as 'Total of users that answered' from survey\
group by 1;\
\
select * from quiz \
limit 5;\
\
select * from home_try_on \
limit 5;\
\
select * from purchase \
limit 5;\
\
\
WITH funnel as\
(\
SELECT \
SUBSTR(DISTINCT q.user_id, 1, 8) as 'user_id',\
CASE\
  WHEN h.user_id IS NOT NULL \
  THEN 'True'\
  ELSE 'False'\
  END as 'is_home_try_on',\
CASE\
  WHEN SUBSTR(h.number_of_pairs, 1, 1) is null \
  THEN 'NULL'\
  ELSE SUBSTR(h.number_of_pairs, 1, 1)\
  END as 'number_of_pairs',\
CASE\
 WHEN p.user_id IS NOT NULL\
 THEN 'True'\
 ELSE 'False'\
 END as 'is_purchase'\
FROM quiz as 'q'\
LEFT JOIN home_try_on as 'h'\
   ON q.user_id = h.user_id\
LEFT JOIN purchase as 'p'\
   ON p.user_id = q.user_id\
)\
select * from funnel limit 10;\
\
\
WITH funnel as\
(\
SELECT \
SUBSTR(DISTINCT q.user_id, 1, 8) as 'user_id',\
CASE\
  WHEN h.user_id IS NOT NULL \
  THEN 'True'\
  ELSE 'False'\
  END as 'is_home_try_on',\
CASE\
  WHEN SUBSTR(h.number_of_pairs, 1, 1) is null \
  THEN 'NULL'\
  ELSE SUBSTR(h.number_of_pairs, 1, 1)\
  END as 'number_of_pairs',\
CASE\
 WHEN p.user_id IS NOT NULL\
 THEN 'True'\
 ELSE 'False'\
 END as 'is_purchase'\
FROM quiz as 'q'\
LEFT JOIN home_try_on as 'h'\
   ON q.user_id = h.user_id\
LEFT JOIN purchase as 'p'\
   ON p.user_id = q.user_id\
)\
select count(*) from funnel;\
\
WITH funnel as\
(\
SELECT \
SUBSTR(DISTINCT q.user_id, 1, 8) as 'user_id',\
CASE\
  WHEN h.user_id IS NOT NULL \
  THEN 'True'\
  ELSE 'False'\
  END as 'is_home_try_on',\
CASE\
  WHEN SUBSTR(h.number_of_pairs, 1, 1) is null \
  THEN 'NULL'\
  ELSE SUBSTR(h.number_of_pairs, 1, 1)\
  END as 'number_of_pairs',\
CASE\
 WHEN p.user_id IS NOT NULL\
 THEN 'True'\
 ELSE 'False'\
 END as 'is_purchase'\
FROM quiz as 'q'\
LEFT JOIN home_try_on as 'h'\
   ON q.user_id = h.user_id\
LEFT JOIN purchase as 'p'\
   ON p.user_id = q.user_id\
)\
select count(*) from funnel where is_home_try_on = 'True';\
\
WITH funnel as\
(\
SELECT \
SUBSTR(DISTINCT q.user_id, 1, 8) as 'user_id',\
CASE\
  WHEN h.user_id IS NOT NULL \
  THEN 'True'\
  ELSE 'False'\
  END as 'is_home_try_on',\
CASE\
  WHEN SUBSTR(h.number_of_pairs, 1, 1) is null \
  THEN 'NULL'\
  ELSE SUBSTR(h.number_of_pairs, 1, 1)\
  END as 'number_of_pairs',\
CASE\
 WHEN p.user_id IS NOT NULL\
 THEN 'True'\
 ELSE 'False'\
 END as 'is_purchase'\
FROM quiz as 'q'\
LEFT JOIN home_try_on as 'h'\
   ON q.user_id = h.user_id\
LEFT JOIN purchase as 'p'\
   ON p.user_id = q.user_id\
)\
select count(*) from funnel where is_purchase = 'True';\
\
WITH funnel as\
(\
SELECT \
SUBSTR(DISTINCT q.user_id, 1, 8) as 'user_id',\
CASE\
  WHEN h.user_id IS NOT NULL \
  THEN 'True'\
  ELSE 'False'\
  END as 'is_home_try_on',\
CASE\
  WHEN SUBSTR(h.number_of_pairs, 1, 1) is null \
  THEN 'NULL'\
  ELSE SUBSTR(h.number_of_pairs, 1, 1)\
  END as 'number_of_pairs',\
CASE\
 WHEN p.user_id IS NOT NULL\
 THEN 'True'\
 ELSE 'False'\
 END as 'is_purchase'\
FROM quiz as 'q'\
LEFT JOIN home_try_on as 'h'\
   ON q.user_id = h.user_id\
LEFT JOIN purchase as 'p'\
   ON p.user_id = q.user_id\
)\
select count(*) from funnel where number_of_pairs = '3';\
\
WITH funnel as\
(\
SELECT \
SUBSTR(DISTINCT q.user_id, 1, 8) as 'user_id',\
CASE\
  WHEN h.user_id IS NOT NULL \
  THEN 'True'\
  ELSE 'False'\
  END as 'is_home_try_on',\
CASE\
  WHEN SUBSTR(h.number_of_pairs, 1, 1) is null \
  THEN 'NULL'\
  ELSE SUBSTR(h.number_of_pairs, 1, 1)\
  END as 'number_of_pairs',\
CASE\
 WHEN p.user_id IS NOT NULL\
 THEN 'True'\
 ELSE 'False'\
 END as 'is_purchase'\
FROM quiz as 'q'\
LEFT JOIN home_try_on as 'h'\
   ON q.user_id = h.user_id\
LEFT JOIN purchase as 'p'\
   ON p.user_id = q.user_id\
)\
select count(*) from funnel where number_of_pairs = '3' and is_purchase = 'True';\
\
WITH funnel as\
(\
SELECT \
SUBSTR(DISTINCT q.user_id, 1, 8) as 'user_id',\
CASE\
  WHEN h.user_id IS NOT NULL \
  THEN 'True'\
  ELSE 'False'\
  END as 'is_home_try_on',\
CASE\
  WHEN SUBSTR(h.number_of_pairs, 1, 1) is null \
  THEN 'NULL'\
  ELSE SUBSTR(h.number_of_pairs, 1, 1)\
  END as 'number_of_pairs',\
CASE\
 WHEN p.user_id IS NOT NULL\
 THEN 'True'\
 ELSE 'False'\
 END as 'is_purchase'\
FROM quiz as 'q'\
LEFT JOIN home_try_on as 'h'\
   ON q.user_id = h.user_id\
LEFT JOIN purchase as 'p'\
   ON p.user_id = q.user_id\
)\
select count(*) from funnel where number_of_pairs = '5';\
\
WITH funnel as\
(\
SELECT \
SUBSTR(DISTINCT q.user_id, 1, 8) as 'user_id',\
CASE\
  WHEN h.user_id IS NOT NULL \
  THEN 'True'\
  ELSE 'False'\
  END as 'is_home_try_on',\
CASE\
  WHEN SUBSTR(h.number_of_pairs, 1, 1) is null \
  THEN 'NULL'\
  ELSE SUBSTR(h.number_of_pairs, 1, 1)\
  END as 'number_of_pairs',\
CASE\
 WHEN p.user_id IS NOT NULL\
 THEN 'True'\
 ELSE 'False'\
 END as 'is_purchase'\
FROM quiz as 'q'\
LEFT JOIN home_try_on as 'h'\
   ON q.user_id = h.user_id\
LEFT JOIN purchase as 'p'\
   ON p.user_id = q.user_id\
)\
select count(*) from funnel where number_of_pairs = '5' and is_purchase = 'True';\
\
select quiz.fit as 'Fit', count(quiz.user_id) as 'Quiz Responses', count(purchase.user_id) as 'Purchases' from quiz left join purchase on quiz.user_id = purchase.user_id\
  group by fit;\
\
\
select quiz.shape as 'Shape', count(quiz.user_id) as 'Quiz Responses', count(purchase.user_id) as 'Purchases' from quiz left join purchase on quiz.user_id = purchase.user_id\
  group by shape;\
\
\
select quiz.color as 'Color', count(quiz.user_id) as 'Quiz Responses', count(purchase.user_id) as 'Purchases' from quiz left join purchase on quiz.user_id = purchase.user_id\
group by quiz.color;\
\
select product_id as 'Product ID', style as 'Style', color as 'Color', price as 'Price', count(*) as 'Total Purchases' from purchase\
group by product_id\
order by 5 desc;\
}