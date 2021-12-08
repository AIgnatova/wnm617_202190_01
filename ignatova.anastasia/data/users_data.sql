CREATE TABLE `track_users` (
  `id` int(13) NOT NULL,
  `name` varchar(3464) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(124) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`) VALUES
(1, 'Ballard Huber', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/731/fff/?text=user1', '2020-08-22 06:39:43'),
(2, 'Gordon Hinton', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/966/fff/?text=user2', '2021-02-24 04:14:01'),
(3, 'Bryan Conley', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/973/fff/?text=user3', '2020-05-19 01:38:17'),
(4, 'Dominique Wolf', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/721/fff/?text=user4', '2020-07-05 12:00:17'),
(5, 'Gallegos Thornton', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/856/fff/?text=user5', '2020-06-10 02:51:43'),
(6, 'Christine Willis', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/776/fff/?text=user6', '2020-03-20 09:19:23'),
(7, 'Chris Wood', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/845/fff/?text=user7', '2021-08-12 05:12:02'),
(8, 'King Smith', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/840/fff/?text=user8', '2020-11-26 09:36:23'),
(9, 'Williamson Riggs', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/851/fff/?text=user9', '2020-12-25 03:57:43'),
(10, 'Monique Moses', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/762/fff/?text=user10', '2021-10-13 03:53:42'),
(11, 'Evangeline Moss', 'user11', 'user11@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/762/fff/?text=user11', '2021-10-13 03:53:42');
