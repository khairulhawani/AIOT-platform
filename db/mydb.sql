DROP TABLE IF EXISTS `tb_sensor`;
CREATE TABLE `tb_sensor` (
  `timestamp` timestamp NULL DEFAULT NULL,
  `min` float DEFAULT NULL,
  `max` float DEFAULT NULL,
  `avg` float DEFAULT NULL,
  `peak` float DEFAULT NULL,
  `peaktopeak` float DEFAULT NULL,
  `rms` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO tb_sensor VALUES
    ('2022-05-04 10:47:38.881','4.89577','4.89882','4.89722','4.89882','0.0030508','4.89725'),
    ('2022-05-04 10:47:38.948','4.89577','4.89882','4.89716','4.89882','0.0030508','4.8972'),
    ('2022-05-04 10:47:39.027','4.89577','4.89882','4.89723','4.89882','0.0030508','4.89726'),
    ('2022-05-04 10:47:39.087','4.89547','4.89882','4.89722','4.89882','0.00335598','4.89724'),
    ('2022-05-04 10:47:39.158','4.89577','4.89882','4.89724','4.89882','0.0030508','4.89727'),
    ('2022-05-04 10:47:39.229','4.89577','4.89852','4.8972','4.89852','0.00274563','4.89724'),
    ('2022-05-04 10:47:39.300','4.89577','4.89882','4.8972','4.89882','0.0030508','4.89723'),
    ('2022-05-04 10:47:39.370','4.89577','4.89852','4.89723','4.89852','0.00274563','4.89727'),
    ('2022-05-04 10:47:39.442','4.89577','4.89882','4.89718','4.89882','0.0030508','4.89723'),
    ('2022-05-04 10:47:39.511','4.89577','4.89882','4.89724','4.89882','0.0030508','4.89726'),
    ('2022-05-04 10:47:39.581','4.89577','4.89852','4.8972','4.89852','0.00274563','4.89725'),
    ('2022-05-04 10:47:39.652','4.89547','4.89852','4.89722','4.89852','0.0030508','4.89727'),
    ('2022-05-04 10:47:39.722','4.89547','4.89882','4.89719','4.89882','0.00335598','4.89725'),
    ('2022-05-04 10:47:39.792','4.89577','4.89882','4.89723','4.89882','0.0030508','4.89727'),
    ('2022-05-04 10:47:39.865','4.89577','4.89882','4.89729','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:39.932','4.89577','4.89882','4.89726','4.89882','0.0030508','4.8973'),
    ('2022-05-04 10:47:40.001','4.89577','4.89882','4.89728','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:40.072','4.89577','4.89882','4.89729','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:40.144','4.89608','4.89882','4.8973','4.89882','0.00274563','4.89734'),
    ('2022-05-04 10:47:40.213','4.89547','4.89882','4.89723','4.89882','0.00335598','4.89726'),
    ('2022-05-04 10:47:40.284','4.89577','4.89882','4.89726','4.89882','0.0030508','4.89729'),
    ('2022-05-04 10:47:40.354','4.89577','4.89852','4.89728','4.89852','0.00274563','4.89729'),
    ('2022-05-04 10:47:40.435','4.89577','4.89882','4.89726','4.89882','0.0030508','4.8973'),
    ('2022-05-04 10:47:40.495','4.89577','4.89882','4.89728','4.89882','0.0030508','4.89732'),
    ('2022-05-04 10:47:40.565','4.89547','4.89852','4.89729','4.89852','0.0030508','4.89733'),
    ('2022-05-04 10:47:40.634','4.89547','4.89852','4.89723','4.89852','0.0030508','4.89727'),
    ('2022-05-04 10:47:40.705','4.89577','4.89882','4.89727','4.89882','0.0030508','4.8973'),
    ('2022-05-04 10:47:40.775','4.89547','4.89882','4.89726','4.89882','0.00335598','4.89728'),
    ('2022-05-04 10:47:40.845','4.89547','4.89882','4.89727','4.89882','0.00335598','4.8973'),
    ('2022-05-04 10:47:40.915','4.89577','4.89882','4.89728','4.89882','0.0030508','4.89732'),
    ('2022-05-04 10:47:40.985','4.89577','4.89852','4.89731','4.89852','0.00274563','4.89733'),
    ('2022-05-04 10:47:41.056','4.89547','4.89882','4.89728','4.89882','0.00335598','4.89731'),
    ('2022-05-04 10:47:41.126','4.89577','4.89882','4.89729','4.89882','0.0030508','4.89732'),
    ('2022-05-04 10:47:41.196','4.89577','4.89852','4.89727','4.89852','0.00274563','4.89731'),
    ('2022-05-04 10:47:41.265','4.89577','4.89913','4.89723','4.89913','0.0033555','4.89727'),
    ('2022-05-04 10:47:41.336','4.89577','4.89913','4.89725','4.89913','0.0033555','4.8973'),
    ('2022-05-04 10:47:41.407','4.89577','4.89882','4.89726','4.89882','0.0030508','4.89731'),
    ('2022-05-04 10:47:41.551','4.89577','4.89882','4.89729','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:41.551','4.89577','4.89882','4.89729','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:41.618','4.89577','4.89913','4.89727','4.89913','0.0033555','4.89728'),
    ('2022-05-04 10:47:41.689','4.89577','4.89882','4.89727','4.89882','0.0030508','4.8973'),
    ('2022-05-04 10:47:41.760','4.89608','4.89882','4.89726','4.89882','0.00274563','4.8973'),
    ('2022-05-04 10:47:41.830','4.89577','4.89882','4.89731','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:41.899','4.89577','4.89882','4.89729','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:41.973','4.89608','4.89882','4.89726','4.89882','0.00274563','4.89729'),
    ('2022-05-04 10:47:42.040','4.89608','4.89913','4.89728','4.89913','0.00305033','4.89732'),
    ('2022-05-04 10:47:42.111','4.89577','4.89882','4.89728','4.89882','0.0030508','4.89731'),
    ('2022-05-04 10:47:42.181','4.89547','4.89882','4.89727','4.89882','0.00335598','4.89731'),
    ('2022-05-04 10:47:42.253','4.89577','4.89882','4.89728','4.89882','0.0030508','4.89731'),
    ('2022-05-04 10:47:42.323','4.89608','4.89882','4.89732','4.89882','0.00274563','4.89735'),
    ('2022-05-04 10:47:42.393','4.89547','4.89852','4.89728','4.89852','0.0030508','4.89732'),
    ('2022-05-04 10:47:42.464','4.89577','4.89882','4.89724','4.89882','0.0030508','4.89728'),
    ('2022-05-04 10:47:42.533','4.89547','4.89882','4.89723','4.89882','0.00335598','4.89727'),
    ('2022-05-04 10:47:42.603','4.89547','4.89852','4.89722','4.89852','0.0030508','4.89726'),
    ('2022-05-04 10:47:42.674','4.89577','4.89882','4.89723','4.89882','0.0030508','4.89726'),
    ('2022-05-04 10:47:42.744','4.89547','4.89882','4.89723','4.89882','0.00335598','4.89726'),
    ('2022-05-04 10:47:42.814','4.89547','4.89882','4.89721','4.89882','0.00335598','4.89724'),
    ('2022-05-04 10:47:43.307','4.89577','4.89852','4.89725','4.89852','0.00274563','4.89727'),
    ('2022-05-04 10:47:43.312','4.89577','4.89852','4.89725','4.89852','0.00274563','4.89727'),
    ('2022-05-04 10:47:43.315','4.89577','4.89852','4.89725','4.89852','0.00274563','4.89727'),
    ('2022-05-04 10:47:43.317','4.89577','4.89852','4.89725','4.89852','0.00274563','4.89727'),
    ('2022-05-04 10:47:43.320','4.89577','4.89852','4.89725','4.89852','0.00274563','4.89727'),
    ('2022-05-04 10:47:43.323','4.89577','4.89852','4.89725','4.89852','0.00274563','4.89727'),
    ('2022-05-04 10:47:43.325','4.89577','4.89852','4.89725','4.89852','0.00274563','4.89727'),
    ('2022-05-04 10:47:43.376','4.89577','4.89882','4.89728','4.89882','0.0030508','4.89731'),
    ('2022-05-04 10:47:43.447','4.89547','4.89882','4.89728','4.89882','0.00335598','4.8973'),
    ('2022-05-04 10:47:43.845','4.89577','4.89913','4.89733','4.89913','0.0033555','4.89737'),
    ('2022-05-04 10:47:43.849','4.89577','4.89913','4.89733','4.89913','0.0033555','4.89737'),
    ('2022-05-04 10:47:43.851','4.89577','4.89913','4.89733','4.89913','0.0033555','4.89737'),
    ('2022-05-04 10:47:43.854','4.89577','4.89913','4.89733','4.89913','0.0033555','4.89737'),
    ('2022-05-04 10:47:43.857','4.89577','4.89913','4.89733','4.89913','0.0033555','4.89737'),
    ('2022-05-04 10:47:44.087','4.89608','4.89882','4.89733','4.89882','0.00274563','4.89736'),
    ('2022-05-04 10:47:44.090','4.89608','4.89882','4.89733','4.89882','0.00274563','4.89736'),
    ('2022-05-04 10:47:44.093','4.89608','4.89882','4.89733','4.89882','0.00274563','4.89736'),
    ('2022-05-04 10:47:44.095','4.89608','4.89882','4.89733','4.89882','0.00274563','4.89736'),
    ('2022-05-04 10:47:44.151','4.89608','4.89882','4.89734','4.89882','0.00274563','4.89735'),
    ('2022-05-04 10:47:44.221','4.89577','4.89913','4.89736','4.89913','0.0033555','4.89738'),
    ('2022-05-04 10:47:44.292','4.89577','4.89882','4.89735','4.89882','0.0030508','4.89738'),
    ('2022-05-04 10:47:44.363','4.89577','4.89852','4.89735','4.89852','0.00274563','4.89738'),
    ('2022-05-04 10:47:44.431','4.89577','4.89882','4.89738','4.89882','0.0030508','4.89741'),
    ('2022-05-04 10:47:44.504','4.89577','4.89882','4.89737','4.89882','0.0030508','4.89739'),
    ('2022-05-04 10:47:44.572','4.89608','4.89913','4.89737','4.89913','0.00305033','4.89739'),
    ('2022-05-04 10:47:44.644','4.89608','4.89913','4.89743','4.89913','0.00305033','4.89745'),
    ('2022-05-04 10:47:44.715','4.89577','4.89913','4.89733','4.89913','0.0033555','4.89737'),
    ('2022-05-04 10:47:44.783','4.89547','4.89882','4.89728','4.89882','0.00335598','4.89731'),
    ('2022-05-04 10:47:44.854','4.89577','4.89882','4.89731','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:44.924','4.89577','4.89882','4.89733','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:44.994','4.89577','4.89882','4.8973','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:45.065','4.89608','4.89882','4.89729','4.89882','0.00274563','4.89732'),
    ('2022-05-04 10:47:45.136','4.89577','4.89882','4.89734','4.89882','0.0030508','4.89737'),
    ('2022-05-04 10:47:45.206','4.89608','4.89882','4.89733','4.89882','0.00274563','4.89737'),
    ('2022-05-04 10:47:45.276','4.89608','4.89882','4.8973','4.89882','0.00274563','4.89733'),
    ('2022-05-04 10:47:45.347','4.89577','4.89882','4.89732','4.89882','0.0030508','4.89736'),
    ('2022-05-04 10:47:45.417','4.89547','4.89882','4.89731','4.89882','0.00335598','4.89734'),
    ('2022-05-04 10:47:45.487','4.89577','4.89913','4.8973','4.89913','0.0033555','4.89733'),
    ('2022-05-04 10:47:45.559','4.89547','4.89882','4.89726','4.89882','0.00335598','4.8973'),
    ('2022-05-04 10:47:45.628','4.89577','4.89882','4.89733','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:45.701','4.89577','4.89913','4.8973','4.89913','0.0033555','4.89734'),
    ('2022-05-04 10:47:45.772','4.89577','4.89882','4.89729','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:45.840','4.89577','4.89882','4.89731','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:45.910','4.89577','4.89882','4.89727','4.89882','0.0030508','4.89729'),
    ('2022-05-04 10:47:45.983','4.89577','4.89882','4.89728','4.89882','0.0030508','4.89732'),
    ('2022-05-04 10:47:46.058','4.89577','4.89913','4.89727','4.89913','0.0033555','4.89731'),
    ('2022-05-04 10:47:46.124','4.89577','4.89882','4.89726','4.89882','0.0030508','4.8973'),
    ('2022-05-04 10:47:46.194','4.89577','4.89882','4.89727','4.89882','0.0030508','4.89731'),
    ('2022-05-04 10:47:46.263','4.89547','4.89882','4.89729','4.89882','0.00335598','4.89732'),
    ('2022-05-04 10:47:46.346','4.89547','4.89913','4.89735','4.89913','0.00366068','4.89738'),
    ('2022-05-04 10:47:46.405','4.89547','4.89852','4.89728','4.89852','0.0030508','4.89732'),
    ('2022-05-04 10:47:46.474','4.89577','4.89882','4.8973','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:46.544','4.89577','4.89882','4.89731','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:46.615','4.89577','4.89882','4.89733','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:46.685','4.89577','4.89882','4.89734','4.89882','0.0030508','4.89738'),
    ('2022-05-04 10:47:46.755','4.89577','4.89882','4.89734','4.89882','0.0030508','4.89738'),
    ('2022-05-04 10:47:46.826','4.89577','4.89882','4.89732','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:46.897','4.89608','4.89913','4.89725','4.89913','0.00305033','4.8973'),
    ('2022-05-04 10:47:46.967','4.89547','4.89882','4.89728','4.89882','0.00335598','4.89732'),
    ('2022-05-04 10:47:47.038','4.89577','4.89882','4.89732','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:47.107','4.89577','4.89882','4.89728','4.89882','0.0030508','4.89731'),
    ('2022-05-04 10:47:47.178','4.89577','4.89882','4.89728','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:47.249','4.89547','4.89882','4.89734','4.89882','0.00335598','4.89737'),
    ('2022-05-04 10:47:47.319','4.89577','4.89882','4.8973','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:47.389','4.89577','4.89882','4.89731','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:47.460','4.89577','4.89852','4.8973','4.89852','0.00274563','4.89734'),
    ('2022-05-04 10:47:47.533','4.89577','4.89882','4.89733','4.89882','0.0030508','4.89736'),
    ('2022-05-04 10:47:47.602','4.89608','4.89882','4.89732','4.89882','0.00274563','4.89735'),
    ('2022-05-04 10:47:47.671','4.89577','4.89882','4.89735','4.89882','0.0030508','4.89738'),
    ('2022-05-04 10:47:47.741','4.89577','4.89852','4.89731','4.89852','0.00274563','4.89735'),
    ('2022-05-04 10:47:47.813','4.89577','4.89882','4.89734','4.89882','0.0030508','4.89737'),
    ('2022-05-04 10:47:47.881','4.89577','4.89882','4.89729','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:47.953','4.89577','4.89882','4.89732','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:48.024','4.89577','4.89913','4.89732','4.89913','0.0033555','4.89736'),
    ('2022-05-04 10:47:48.093','4.89577','4.89882','4.89736','4.89882','0.0030508','4.89738'),
    ('2022-05-04 10:47:48.163','4.89577','4.89882','4.8973','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:48.237','4.89577','4.89882','4.89732','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:48.304','4.89577','4.89882','4.89734','4.89882','0.0030508','4.89737'),
    ('2022-05-04 10:47:48.373','4.89577','4.89913','4.89731','4.89913','0.0033555','4.89735'),
    ('2022-05-04 10:47:48.443','4.89577','4.89882','4.89732','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:48.514','4.89577','4.89882','4.89732','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:48.586','4.89577','4.89882','4.89728','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:48.654','4.89577','4.89882','4.89731','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:48.726','4.89608','4.89882','4.8973','4.89882','0.00274563','4.89733'),
    ('2022-05-04 10:47:48.795','4.89577','4.89882','4.89734','4.89882','0.0030508','4.89738'),
    ('2022-05-04 10:47:48.865','4.89547','4.89882','4.8973','4.89882','0.00335598','4.89734'),
    ('2022-05-04 10:47:48.936','4.89577','4.89913','4.89732','4.89913','0.0033555','4.89735'),
    ('2022-05-04 10:47:49.006','4.89608','4.89882','4.89733','4.89882','0.00274563','4.89735'),
    ('2022-05-04 10:47:49.089','4.89577','4.89882','4.89731','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:49.164','4.89577','4.89882','4.89739','4.89882','0.0030508','4.89741'),
    ('2022-05-04 10:47:49.218','4.89577','4.89882','4.89732','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:49.287','4.89577','4.89852','4.89729','4.89852','0.00274563','4.89732'),
    ('2022-05-04 10:47:49.358','4.89577','4.89852','4.89726','4.89852','0.00274563','4.89731'),
    ('2022-05-04 10:47:49.429','4.89577','4.89882','4.89734','4.89882','0.0030508','4.89737'),
    ('2022-05-04 10:47:49.498','4.89577','4.89882','4.8973','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:49.569','4.89577','4.89882','4.89735','4.89882','0.0030508','4.89738'),
    ('2022-05-04 10:47:49.640','4.89577','4.89882','4.8973','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:49.710','4.89577','4.89882','4.89729','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:49.780','4.89547','4.89882','4.8973','4.89882','0.00335598','4.89735'),
    ('2022-05-04 10:47:49.851','4.89608','4.89882','4.8973','4.89882','0.00274563','4.89733'),
    ('2022-05-04 10:47:49.921','4.89577','4.89882','4.89735','4.89882','0.0030508','4.89736'),
    ('2022-05-04 10:47:49.993','4.89577','4.89882','4.89732','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:50.062','4.89516','4.89882','4.89732','4.89882','0.00366068','4.89735'),
    ('2022-05-04 10:47:50.134','4.89577','4.89882','4.89731','4.89882','0.0030508','4.89735'),
    ('2022-05-04 10:47:50.203','4.89608','4.89913','4.89734','4.89913','0.00305033','4.89737'),
    ('2022-05-04 10:47:50.275','4.89608','4.89882','4.89733','4.89882','0.00274563','4.89736'),
    ('2022-05-04 10:47:50.413','4.89577','4.89882','4.89729','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:50.414','4.89547','4.89852','4.89722','4.89852','0.0030508','4.89727'),
    ('2022-05-04 10:47:50.484','4.89547','4.89882','4.89728','4.89882','0.00335598','4.89732'),
    ('2022-05-04 10:47:50.554','4.89577','4.89882','4.89726','4.89882','0.0030508','4.89729'),
    ('2022-05-04 10:47:50.625','4.89577','4.89852','4.8973','4.89852','0.00274563','4.89733'),
    ('2022-05-04 10:47:50.695','4.89577','4.89852','4.89728','4.89852','0.00274563','4.89732'),
    ('2022-05-04 10:47:50.765','4.89577','4.89882','4.8973','4.89882','0.0030508','4.89734'),
    ('2022-05-04 10:47:50.836','4.89577','4.89882','4.89725','4.89882','0.0030508','4.89727'),
    ('2022-05-04 10:47:50.906','4.89577','4.89852','4.8973','4.89852','0.00274563','4.89733'),
    ('2022-05-04 10:47:50.976','4.89577','4.89913','4.89729','4.89913','0.0033555','4.89733'),
    ('2022-05-04 10:47:51.047','4.89547','4.89882','4.8973','4.89882','0.00335598','4.89733'),
    ('2022-05-04 10:47:51.117','4.89608','4.89913','4.89735','4.89913','0.00305033','4.89737'),
    ('2022-05-04 10:47:51.188','4.89577','4.89882','4.89736','4.89882','0.0030508','4.89738'),
    ('2022-05-04 10:47:51.258','4.89608','4.89852','4.89729','4.89852','0.00244045','4.89732'),
    ('2022-05-04 10:47:51.328','4.89608','4.89882','4.89729','4.89882','0.00274563','4.89733'),
    ('2022-05-04 10:47:51.398','4.89577','4.89882','4.89731','4.89882','0.0030508','4.89733'),
    ('2022-05-04 10:47:51.497','4.89547','4.89882','4.89733','4.89882','0.00335598','4.89734'),
    ('2022-05-04 10:47:51.540','4.89547','4.89882','4.89734','4.89882','0.00335598','4.89737');