-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2024 at 03:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'WebDevelopment', '2024-10-07 15:20:48'),
(2, 'AI', '2024-10-07 15:20:48'),
(3, 'DataScience', '2024-10-09 12:27:39'),
(4, 'MachineLearning', '2024-10-09 12:27:39'),
(5, 'CloudComputing', '2024-10-09 12:27:39'),
(6, 'CyberSecurity', '2024-10-09 12:27:39'),
(7, 'DevOps', '2024-10-09 12:27:39'),
(8, 'Blockchain', '2024-10-09 12:27:39'),
(9, 'IoT', '2024-10-09 12:27:39'),
(10, 'QuantumComputing', '2024-10-09 12:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `description`, `category_id`, `user_id`, `created_at`) VALUES
(1, 'Learn Web Development', 'https://miro.medium.com/v2/resize:fit:1400/1*fHrAZJ1_L0Ff9dvVexL5_A.png', 'A Complete Guide to Web Development provides a comprehensive overview of all the essential components required to build and maintain websites and web applications. This guide covers the entire web development lifecycle, starting with front-end technologies such as HTML, CSS, and JavaScript, which are crucial for creating visually appealing and user-friendly interfaces. Readers will then explore back-end development, including server-side languages like Python, PHP, and Node.js, as well as database management with SQL and NoSQL systems. The guide also emphasizes modern development practices such as responsive design, version control with Git, and the use of APIs to connect different systems. With an eye on best practices in security and performance optimization, this complete guide equips both beginners and experienced developers with the knowledge required to create robust digital solutions for diverse audiences.', 1, 1, '2024-10-10 11:28:26'),
(2, 'Introduction to AI', 'https://miro.medium.com/v2/resize:fit:900/1*57YDg0EsnSBYsTnwYPkSDg.jpeg', 'ntroduction to AI serves as a primer for anyone looking to understand the key concepts, techniques, and applications of artificial intelligence. This guide explores various branches of AI, including machine learning, natural language processing, and computer vision, clarifying how algorithms learn from data to perform tasks that typically require human intelligence. Readers will learn about supervised and unsupervised learning, reinforcement learning, and the role of neural networks in developing advanced AI systems. The guide also touches on ethical considerations and the societal impacts of AI technologies, emphasizing the importance of responsible development and deployment. By connecting theory with real-world applications, this introduction aims to provide a solid foundation for further exploration in a rapidly evolving field that is shaping the future of technology.\r\n\r\n', 2, 2, '2024-10-10 11:28:43'),
(3, 'DataScience MasterClass', 'https://cdn.prod.website-files.com/63ccf2f0ea97be12ead278ed/644a18b637053fa3709c5ba2_what-is-data-science.jpg', 'Data Science MasterClass is an in-depth program designed for individuals seeking to master the skills and techniques required for effective data analysis and interpretation. This course covers the full data science workflow, including data collection, cleaning, exploration, and visualization. Participants will gain hands-on experience with popular programming languages like Python and R, as well as tools such as Pandas, NumPy, and Matplotlib for data manipulation and presentation. Advanced topics such as statistical modeling, machine learning algorithms, and big data technologies like Hadoop and Spark are also included, allowing learners to tackle complex data challenges. Throughout the MasterClass, real-world case studies demonstrate how data-driven decisions can influence business strategies and outcomes, equipping students with the practical knowledge required to excel in today’s data-centric landscape.', 3, 3, '2024-10-10 11:28:54'),
(4, 'Advanced Machine Learning', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBRWKDKjx3Lr1uf2wVtfGJxlNkQe68mXSRwA&s', 'Advanced machine learning encompasses a variety of sophisticated techniques that extend beyond traditional algorithms to tackle complex data challenges. This field includes deep learning, which utilizes neural networks with many layers to model intricate patterns in large datasets. Techniques such as convolutional neural networks (CNNs) are particularly effective for image processing, while recurrent neural networks (RNNs) excel in sequence-based data, like time series and natural language. Additionally, advanced topics include reinforcement learning, where agents learn optimal actions through trial and error in dynamic environments, and unsupervised learning methods like generative adversarial networks (GANs), which can generate new data samples that resemble existing ones. Other advanced areas involve transfer learning for leveraging pre-trained models on new tasks and ensemble methods that combine multiple models to improve predictive performance. As machine learning continues to evolve, the integration of advanced techniques is driving innovations across numerous domains, including healthcare, finance, and autonomous systems.', 4, 4, '2024-10-10 11:31:45'),
(5, 'Colud Computing 101', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJUWrYcyY6byzsX3AfL9LbvtpvjPW2KZ5fUQ&s', 'Cloud Computing 101 provides a foundational understanding of cloud computing technologies, their architecture, and deployment models. This guide outlines the essential concepts of cloud services, including Infrastructure as a Service (IaaS), Platform as a Service (PaaS), and Software as a Service (SaaS), helping readers differentiate between various service models. It also explores the benefits of cloud computing, such as scalability, flexibility, cost-effectiveness, and enhanced collaboration, making it an attractive solution for organizations of all sizes. Readers will familiarize themselves with major cloud providers like AWS, Microsoft Azure, and Google Cloud Platform, learning about their services and features. By the end of this guide, readers will have a clear understanding of how cloud computing can revolutionize the way businesses operate and innovate in a digital world.', 5, 5, '2024-10-10 11:29:08'),
(6, 'Cyber Security', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHixfD5bh7EeJunEAywpv8gGcH2QzCXflXiA&s', 'Cyber Security is a critical field that addresses the protection of computer systems and networks from theft, damage, or unauthorized access. This guide offers an overview of key concepts in cybersecurity, including threat analysis, risk management, and security controls. It delves into common types of cyber threats, such as malware, phishing, and ransomware, while emphasizing the importance of proactive measures to safeguard sensitive data. Readers will learn about essential security practices, including encryption, firewalls, intrusion detection systems, and incident response strategies. The guide also covers compliance standards and regulations, such as GDPR and HIPAA, which are vital for organizations to understand in order to adhere to legal requirements. Overall, this resource is designed to equip individuals and businesses with the knowledge and tools needed to navigate the complexities of cybersecurity in an increasingly digital world.', 6, 6, '2024-10-10 11:29:45'),
(7, 'DevOps', 'https://www.jittagornp.me/blog/what-is-devops/devops.png', 'DevOps is a methodology that integrates software development (Dev) and IT operations (Ops) to enhance collaboration, efficiency, and productivity in delivering high-quality software. This guide explores the key principles of DevOps, including automation, continuous integration, continuous delivery (CI/CD), andInfrastructure as Code (IaC). Readers will learn how to implement DevOps practices that facilitate faster development cycles, improved deployment frequency, and greater release confidence. Tools such as Docker for containerization, Jenkins for automation, and Kubernetes for orchestration will be highlighted to exemplify how they streamline DevOps processes. By adopting a culture of shared responsibility and continuous feedback, organizations can achieve better alignment between their development and operations teams, enabling them to respond quickly to market changes and deliver better value to their customers.', 7, 7, '2024-10-10 11:29:32'),
(8, 'BlockChain', 'https://blogs.iadb.org/caribbean-dev-trends/wp-content/uploads/sites/34/2017/12/Blockchain1.jpg', 'Blockchain is a revolutionary technology that enables decentralized and secure transaction recording across multiple parties. This guide introduces the fundamental concepts behind blockchain, including its distributed ledger technology, cryptographic security, and consensus algorithms that ensure data integrity and prevent tampering. Readers will explore how blockchain underpins cryptocurrencies like Bitcoin and Ethereum, but also extends far beyond, powering applications in finance, supply chain management, healthcare, and more. The guide also discusses smart contracts, which are self-executing agreements coded on the blockchain, as well as the challenges and limitations facing widespread blockchain adoption. By understanding the principles of blockchain technology, readers will gain insights into its potential to disrupt industries and shape the future of digital transactions.\r\n\r\n', 8, 8, '2024-10-10 11:30:00'),
(9, 'IOT Fundamentals', 'https://www.simplilearn.com/ice9/free_resources_article_thumb/iot_devices.jpg', 'IoT Fundamentals introduces the Internet of Things (IoT), a rapidly growing network of interconnected devices that communicate and share data. This guide outlines the key components of IoT ecosystems, including sensors, actuators, connectivity protocols, and data processing. Readers will learn how IoT devices collect data from their environments and how this information can be used for analysis and decision-making. The guide explores various applications of IoT across sectors such as smart homes, healthcare, agriculture, and manufacturing, illustrating the transformative impact of connected technology on everyday life. Additionally, it addresses challenges related to security, interoperability, and scalability that organizations must consider when implementing IoT solutions. Overall, this resource serves as an essential introduction for anyone looking to understand the principles and applications of IoT technology.', 9, 9, '2024-10-10 11:30:13'),
(10, 'Quantum Computing Basics', 'https://i.ytimg.com/vi/X8MZWCGgIb8/maxresdefault.jpg', 'Quantum computing is an advanced field of computation that utilizes the principles of quantum mechanics to process information. Unlike classical computers, which use bits as the smallest unit of data (represented as 0s and 1s), quantum computers use qubits. Qubits can exist in multiple states simultaneously due to superposition, allowing them to perform many calculations at once. Additionally, qubits can be entangled, meaning the state of one qubit can depend on the state of another, no matter the distance between them. This unique capability enables quantum computers to solve complex problems much faster than classical computers, particularly in areas such as cryptography, optimization, and simulations of quantum systems. However, quantum computing is still in its early stages, with challenges in building stable qubits and improving error rates.', 10, 10, '2024-10-10 11:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile`, `role`, `created_at`) VALUES
(1, 'John Doe', 'john@example.com', 'password123', 'profile1.jpg', 'admin', '2024-10-09 12:25:23'),
(2, 'Jane Smith', 'jane@example.com', 'securepass', 'profile2.jpg', 'user', '2024-10-09 12:25:23'),
(3, 'Alice Johnson', 'alice@example.com', 'alice2023', 'profile3.jpg', 'editor', '2024-10-09 12:25:23'),
(4, 'Bob Brown', 'bob@example.com', 'bobsecret', 'profile4.jpg', 'moderator', '2024-10-09 12:25:23'),
(5, 'Charlie Davis', 'charlie@example.com', 'charliepwd', 'profile5.jpg', 'admin', '2024-10-09 12:25:23'),
(6, 'Eve White', 'eve@example.com', 'evepass', 'profile6.jpg', 'user', '2024-10-09 12:25:23'),
(7, 'Frank Green', 'frank@example.com', 'frankkey', 'profile7.jpg', 'editor', '2024-10-09 12:25:23'),
(8, 'Grace Hall', 'grace@example.com', 'gracepass', 'profile8.jpg', 'moderator', '2024-10-09 12:25:23'),
(9, 'Henry King', 'henry@example.com', 'henrylock', 'profile9.jpg', 'admin', '2024-10-09 12:25:23'),
(10, 'Isabel Lee', 'isabel@example.com', 'isabelpass', 'profile10.jpg', 'user', '2024-10-09 12:25:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
