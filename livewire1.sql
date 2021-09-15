-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para livewire1
CREATE DATABASE IF NOT EXISTS `livewire1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `livewire1`;

-- Volcando estructura para tabla livewire1.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla livewire1.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla livewire1.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla livewire1.migrations: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2021_09_13_202614_create_sessions_table', 1),
	(7, '2021_09_13_215856_create_posts_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla livewire1.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla livewire1.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla livewire1.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla livewire1.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla livewire1.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla livewire1.posts: ~100 rows (aproximadamente)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
REPLACE INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
	(1, 'Velit voluptate aut eligendi ab quia eum cumque.', 'Rerum odio quo sed esse necessitatibus officiis incidunt. Est voluptatem aliquid odit temporibus omnis. Qui eos facilis fugiat accusamus aut sed quam.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(2, 'Id ut libero aut.', 'Ab alias quos aut voluptatem. Odio magni possimus quidem natus architecto ratione. Est ut sed repudiandae laudantium voluptate et tempore. Alias ut illum iusto quos. Quod distinctio enim minus non.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(3, 'Aliquid aut totam in ad voluptatem et quos odit.', 'Odio quia consectetur voluptatem rerum voluptates cum. Recusandae laboriosam praesentium rerum. Id expedita ipsum qui provident a hic facilis aut. Consequatur mollitia est et eveniet.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(4, 'Rerum eum consequatur cupiditate eos reiciendis a quia.', 'Reprehenderit ut perspiciatis officiis tenetur voluptates corporis corporis illum. Quo sequi labore vel quos.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(5, 'Odit vel ut adipisci quidem provident.', 'Accusamus sit et excepturi consequatur. At numquam est ad consequatur praesentium recusandae unde. Perferendis minima dolor voluptatem mollitia voluptatem voluptatibus voluptatibus repudiandae.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(6, 'Officia recusandae iste quo sequi et laboriosam non molestiae.', 'Voluptatem magni voluptas dolores ea laudantium. Soluta numquam dicta adipisci sit. Rerum temporibus voluptatem sequi ut.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(7, 'Possimus autem magni fugiat corrupti optio.', 'Optio consequatur odit quia adipisci eos facere non. Praesentium itaque necessitatibus at adipisci eos. At voluptas nisi labore magni consequatur.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(8, 'Similique rem iure nesciunt deserunt.', 'Similique impedit dolor magni quos nemo. Cumque aut praesentium reprehenderit quibusdam. Labore sit officia aspernatur ut eveniet omnis iste.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(9, 'Sit nam ad et sequi amet est provident.', 'Animi qui voluptatem nostrum tenetur. Tempore natus ipsa nihil quas est quo excepturi. Dolorum sit et sunt minima omnis laborum fugiat.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(10, 'Nemo harum est aut id.', 'Omnis voluptatem cupiditate quibusdam voluptas magnam. Hic qui voluptas iusto porro qui perspiciatis adipisci. Tenetur doloremque reprehenderit libero.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(11, 'Ex ipsa ullam nihil maxime.', 'Dolorem ratione quia cum eos maiores autem. Nisi itaque voluptatem esse corporis iure enim qui. Dolorum rerum corrupti rem ut sed explicabo.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(12, 'Enim ad minus quas vel earum.', 'Error quidem deserunt quos voluptas in reiciendis mollitia. Corporis tempora a saepe nisi assumenda. Doloribus occaecati nihil molestias.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(13, 'Velit commodi dolorem nesciunt commodi perspiciatis quia quia.', 'Voluptatibus rerum aspernatur voluptatem dolor magni. Cumque et in id dolor animi ex. Et veritatis atque qui nihil numquam quisquam. Autem eum magnam amet quisquam sed quas placeat.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(14, 'Et repudiandae dolorem molestiae velit.', 'Et corrupti est quos consectetur asperiores ut sint nam. Quaerat earum impedit voluptatum dicta vel. Aut quia exercitationem dolore minus qui aliquam.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(15, 'Et voluptas cum quia esse molestiae enim.', 'Architecto sequi et voluptatibus consequatur architecto et debitis quo. Totam ut voluptas cum excepturi. Dignissimos vitae distinctio aut architecto aliquam sit accusamus.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(16, 'Magni veniam est ipsum omnis iure aut.', 'Molestiae ipsum quia ut neque culpa omnis. Ut voluptates voluptatem pariatur. Praesentium dolor rerum voluptatem.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(17, 'Alias qui voluptas quia enim.', 'Culpa ratione sed minima porro corporis est. Quidem eaque assumenda commodi. Deleniti consectetur asperiores omnis laboriosam sint non.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(18, 'Dolores hic excepturi enim dolorum accusantium velit.', 'Sed nostrum eos dolores quisquam. Ex magni veniam asperiores facilis maiores et velit. Voluptatem eum molestiae ipsa quam et.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(19, 'Distinctio assumenda dolor earum vero necessitatibus adipisci ut.', 'Illo ipsa reprehenderit unde. Enim deserunt aperiam earum dicta beatae. Officia dolores voluptatibus consectetur.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(20, 'Nam temporibus aperiam velit et dolorum.', 'Voluptatibus ea aut non impedit. Corrupti ipsam molestiae delectus eos at est voluptatem quibusdam. Qui qui nisi voluptatem voluptatem velit. Est ipsa eum non illum.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(21, 'Asperiores ullam perferendis suscipit tempora ut et et.', 'Perspiciatis nobis laboriosam id quaerat. Odit aut deleniti dolores dolorum. Non natus quia illum quo quod perferendis.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(22, 'Maiores consequatur fugiat repellendus placeat ullam eaque.', 'Odit suscipit iure vitae labore possimus et a. Molestias nihil quod eum et. Possimus libero sit quisquam. Aspernatur nobis tempore quo dolorum commodi nemo minus.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(23, 'Maxime ea dicta dolor doloribus labore.', 'Consequuntur laborum eveniet et numquam unde nobis aut quidem. Laudantium sint necessitatibus adipisci veritatis quidem molestias. Corrupti ex sunt sequi deleniti et vel unde.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(24, 'Magni laudantium minima molestiae.', 'Explicabo quibusdam qui temporibus officia. Repellat perspiciatis vitae qui odit sit cupiditate. Est rerum nostrum non quis ex deserunt. Sed et nihil molestiae.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(25, 'Placeat ipsa eos adipisci.', 'Voluptatibus cumque dolore dolores aut ut est et. Quod aut veritatis quasi quos. Debitis id possimus cupiditate possimus adipisci deserunt doloremque vel.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(26, 'Culpa consequatur sequi ipsum dolore eum sit.', 'Rerum laudantium sunt quasi aut tempore. Amet eum soluta eligendi voluptatem debitis tempora veniam. Et accusamus in molestias est qui commodi aspernatur perspiciatis.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(27, 'Sint dolor et porro.', 'Eum fugit sed nobis. Aut cum explicabo eos dolorem dolore cupiditate ut. Eius iste laborum tenetur nihil atque rem necessitatibus. Cupiditate eaque quo provident eos ad omnis.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(28, 'Maiores a sunt aut.', 'Et at nesciunt facilis dolor dolores accusantium facilis. Error sit saepe nihil cupiditate et dolorem eum. Dolore id qui neque asperiores similique dolorem. Quod nisi rerum optio nesciunt.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(29, 'Nihil necessitatibus ratione nostrum facilis.', 'Molestias eos non iste. Quibusdam iure error quia pariatur enim quo id. Ut porro earum molestiae qui omnis repudiandae et.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(30, 'Illum provident error dolor incidunt.', 'Sapiente similique qui assumenda voluptatem. Nulla reprehenderit ut nemo nobis quas illo quos. Voluptatem autem fugit esse.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(31, 'Ut enim a explicabo totam at.', 'Dolorem asperiores ea necessitatibus autem. Consequuntur labore est et sint dolor voluptas omnis. Tempora voluptates quas non aperiam placeat explicabo. Cum commodi laborum eaque non.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(32, 'Omnis velit omnis quibusdam alias nostrum praesentium nemo id.', 'Eaque facilis aliquid vel. Voluptatem sit qui dolorum sequi quidem neque. Omnis suscipit et dolore aliquam soluta cum. Architecto dolorem et ut recusandae enim excepturi. Magni vero veniam autem aut.', '2021-09-14 15:42:32', '2021-09-14 15:42:32'),
	(33, 'Qui corporis et ducimus doloremque et veritatis aperiam.', 'Consequuntur unde dignissimos magnam inventore hic mollitia. Rem aliquam voluptatum amet. Reprehenderit laudantium a qui unde velit maiores minus velit. Quod est et quo quae nobis a.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(34, 'Sunt dolores recusandae est autem aut.', 'Quaerat aliquam laboriosam modi nihil. Voluptatem aliquid recusandae id aspernatur nobis voluptatem nisi. Et vero in iste ut nobis.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(35, 'Eaque id est qui eos iusto qui animi.', 'Ullam a eum et et. Non est voluptatibus ea nihil iste et et. Et vel ipsum accusantium veniam quia recusandae. Et quisquam labore et non. Quas ut aut quibusdam quod minima qui ducimus.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(36, 'Rerum placeat voluptatibus eos occaecati dolorem sed et animi.', 'Ipsam dicta totam voluptas modi et aut possimus nulla. Tempora cum aliquam autem distinctio. Accusamus officiis voluptas sed non.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(37, 'Provident laudantium nemo est vero quibusdam quia.', 'Quasi sint culpa dolorem porro. Laborum quia officia consequatur minus dolores animi. Aut perferendis amet dolor in.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(38, 'Voluptatum voluptates repellat perferendis veniam qui quam et.', 'Architecto quas dicta necessitatibus eum enim. Neque aliquam vel quod quia animi fugit reiciendis et. Sit ex qui dignissimos doloremque.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(39, 'Error odio dolores magni eaque magnam tempore.', 'Sunt consequuntur et occaecati earum aut tempore impedit. Id reprehenderit blanditiis ut architecto quam esse. Laborum reiciendis quas aperiam vel molestiae inventore.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(40, 'Qui ipsam quis error animi doloremque.', 'Voluptatem deserunt est minus possimus. Qui saepe et voluptas est laudantium ab impedit. Voluptatibus omnis ad nostrum est ducimus non.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(41, 'Vero excepturi natus temporibus quia voluptates repellendus.', 'Omnis ducimus labore dolore. Consectetur pariatur impedit asperiores sint.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(42, 'Illo optio consequatur quia facilis at ad tenetur inventore.', 'Molestias consectetur qui aperiam adipisci non occaecati. Libero consequatur aspernatur non voluptatem numquam et. At et est ea architecto rerum. Occaecati ut sit asperiores perferendis tempore.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(43, 'Sed sed sit error quidem.', 'Esse iure ut rem tenetur nobis. Neque culpa in molestiae accusantium earum ad non in. Nulla temporibus asperiores et quos.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(44, 'Praesentium omnis sed ipsum deleniti ex velit.', 'In at eius sequi ut assumenda quasi. Nam quo earum eligendi incidunt vel laboriosam. Nisi dolorum eum aut voluptatem. Est ut voluptatibus omnis quo nulla.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(45, 'Nemo optio assumenda tempore voluptatem fuga quasi.', 'Voluptate quo id voluptatum rem qui iusto. Necessitatibus iste iusto facilis rerum aliquam quidem.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(46, 'Perspiciatis unde quibusdam officiis est eum reprehenderit.', 'Non iure debitis est. Et distinctio et ut ad ut eos minima. Eos tempora ut provident deserunt iste nesciunt. Similique laborum amet perspiciatis voluptatum molestiae vel.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(47, 'Earum cumque in molestias eum aspernatur.', 'Ratione voluptas ea quod voluptatem ea ratione expedita sit. At dolor qui at ut deserunt rerum. Provident molestiae illum aut sit in.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(48, 'Et id voluptatibus voluptas quis debitis et.', 'Ab consequatur minima qui nesciunt. Corporis odio nobis dolor quo sit enim voluptatem voluptates. Voluptas aliquam repellat autem eligendi.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(49, 'Pariatur mollitia doloremque minus illo.', 'Ratione illum ut quam in. Ab id neque recusandae a odio sit molestias officiis. Voluptatem consectetur at adipisci ut consequatur. Atque aut cum occaecati nihil soluta incidunt vel.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(50, 'Eum quos omnis omnis.', 'Aliquam a suscipit nisi voluptas. Veniam similique in aliquam consectetur. Consequuntur minima temporibus molestiae recusandae.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(51, 'Accusantium dolor ut quam excepturi omnis impedit sed.', 'Et earum qui est asperiores tempora cum. Qui quis sapiente illo quaerat vero voluptate quia qui. Sequi qui hic quo rem aspernatur mollitia.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(52, 'Doloremque in inventore qui est nihil.', 'Non consequatur dolorem odit laboriosam voluptatibus. Perferendis sequi voluptatem excepturi facilis et velit. Architecto nihil odit ea facilis magni dignissimos.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(53, 'Corrupti neque voluptatem beatae sit aliquid quos.', 'Quaerat deserunt impedit nostrum ducimus nostrum inventore sint rerum. Veniam labore quidem dolores sapiente.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(54, 'Molestias rerum similique praesentium natus aperiam optio accusamus.', 'Sapiente harum reiciendis aliquam sed aliquam atque. Porro iure vel maiores nostrum accusantium voluptas. Tempora non commodi saepe totam architecto sit aut.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(55, 'Quae aut voluptates ut illo sunt.', 'Sit aut ut asperiores dolorum perferendis consequatur neque. Ea nisi voluptate et. Nam earum est est ad sed atque.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(56, 'Blanditiis omnis ab et et modi accusantium.', 'Ea nemo incidunt et amet. Excepturi veritatis aperiam repudiandae repudiandae laborum. Iure dolor nobis repellat sed ad. Adipisci asperiores labore culpa itaque.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(57, 'Qui ullam ut sit aliquam nihil vitae.', 'Est eius sint praesentium quis ut ut nobis. Vel aut ut et rerum. Nam ipsa esse aperiam ut dolorum qui. Repudiandae sequi ullam assumenda natus pariatur alias nihil iste.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(58, 'Aut et est illo corporis dicta vel nihil.', 'Dolorum et dolores distinctio distinctio voluptas. Natus inventore sed itaque provident. Mollitia at quisquam in aut autem. Et quas in inventore.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(59, 'Aut culpa molestiae cum quia unde nobis.', 'Dolorum ipsam quae sequi et sed. Omnis magnam qui ratione eos sunt. Voluptates perferendis consequuntur vitae rem.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(60, 'Rerum ut ea totam aut quos voluptatem fuga.', 'Tenetur quia modi nisi sit est. Et sunt ipsum assumenda dolor. Quaerat dolorem recusandae perspiciatis labore ea dolore quia.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(61, 'Sint nostrum pariatur et fugiat ducimus quia nulla.', 'Eos aliquid deserunt et dolorem. Animi amet sit iste distinctio est eum nobis. Excepturi aut necessitatibus pariatur perferendis. Fuga et eum aperiam.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(62, 'Odio totam ipsam qui.', 'Voluptas molestias unde et tempore neque ullam. Quos voluptas incidunt quasi quas odit.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(63, 'Quaerat nesciunt dolorum quas fugit veritatis.', 'Quam minima distinctio voluptatem. Et officia eum ad tenetur consequuntur earum ut amet. Qui pariatur vero quo repudiandae.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(64, 'Dolores quas ullam nisi harum sit.', 'Ut velit maxime a esse laudantium. Laudantium eum cumque quia. Quasi et sit facilis inventore ut illo facere.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(65, 'Voluptates debitis accusamus animi.', 'Dignissimos quod eos non id velit ipsum illum. At ducimus aut doloribus consequatur ex velit. Nisi ipsum accusamus et velit dolor quia libero. Recusandae nam aut nobis sequi explicabo illum.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(66, 'Et molestias quasi corrupti sint.', 'Doloribus laboriosam necessitatibus quasi est. Autem adipisci quia vero odit nobis.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(67, 'Iure illum quas nihil corporis deserunt quidem.', 'Doloremque in adipisci autem non sint nobis. Ipsum tenetur enim ex cum. Sed non laborum aut accusantium eligendi est. Adipisci ducimus eum nobis temporibus. Et ad et velit qui.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(68, 'Consequatur at mollitia doloribus dolor aut quaerat ea.', 'Voluptas qui placeat molestias est reprehenderit perferendis. Sunt quibusdam facere cumque laborum.', '2021-09-14 15:42:33', '2021-09-14 15:42:33'),
	(69, 'Explicabo modi accusantium atque assumenda.', 'Aut mollitia nemo ut facere. Quas similique voluptatibus praesentium natus perspiciatis a. Architecto sit enim quia vitae consectetur sunt sunt.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(70, 'Nihil sunt cupiditate numquam magni praesentium et in.', 'Quos sed aut similique fugit libero. Quaerat ratione id dolor eum necessitatibus beatae. Ut error dolor sit corrupti molestias dolores ab et.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(71, 'Dolor iure iure neque deleniti.', 'Debitis et ut vel doloribus quia omnis. Autem eius necessitatibus iusto sunt. Tempore eligendi ex voluptatem exercitationem et maxime.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(72, 'Sit minima enim placeat fugit reiciendis qui quos.', 'Aspernatur libero consectetur quidem non. In ea nemo sequi corporis. Velit accusantium ipsa nihil perspiciatis atque non quae.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(73, 'Mollitia et itaque officiis sed voluptas.', 'Ut nihil ut reiciendis id minus est consequatur. Optio nostrum magnam beatae consequatur amet optio laboriosam. Libero quia in est qui. Alias laboriosam possimus deserunt dolor minus non aut vel.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(74, 'Qui consequatur omnis ratione cupiditate.', 'Debitis perspiciatis natus doloribus a voluptatum dicta tenetur. Quos necessitatibus magnam nihil sint nihil omnis. Consectetur ducimus occaecati quis omnis sed. Animi in sed et.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(75, 'Qui possimus ipsam adipisci ut sit nihil.', 'Officia molestias similique itaque autem nam mollitia. Rem rerum sed qui corrupti temporibus quo et. Inventore et expedita impedit. Nemo ut totam libero consequatur non dolor placeat.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(76, 'Quia sint unde illum voluptate culpa aliquam quasi dolores.', 'Nemo veritatis voluptatum iusto quo provident distinctio ducimus. Reiciendis laborum recusandae ullam tempore blanditiis placeat. Et quod autem accusamus sequi nam doloremque accusantium.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(77, 'Sit debitis unde maiores veniam molestias reiciendis nihil tempora.', 'Et reiciendis est asperiores est accusantium. Perferendis cum consequatur quia enim eos quos expedita. Inventore rerum expedita eveniet autem. Aut unde dolores voluptate id aut est.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(78, 'Sint occaecati veniam magni in similique doloribus nostrum.', 'Modi rerum maxime qui. Aut odit illo quis. Atque eos non quos aut.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(79, 'Tempora est praesentium voluptatibus omnis.', 'Nulla nesciunt hic veniam. Libero suscipit adipisci voluptatibus consectetur suscipit. Officia labore enim exercitationem quidem.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(80, 'Est beatae assumenda eos occaecati distinctio dignissimos nemo tenetur.', 'Facere atque explicabo vero quia. Eos et hic qui sit enim. Consequatur minus aut similique sunt asperiores quis veniam. At incidunt labore saepe id iste corporis.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(81, 'Et beatae est excepturi quidem voluptatem excepturi ut qui.', 'Qui ratione fugiat quas. Sit eius distinctio asperiores ea laboriosam minus distinctio. Consequuntur consectetur vel aut quo. Iure omnis maiores numquam rem praesentium.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(82, 'Quia debitis et veritatis dolores dolorum autem nesciunt illum.', 'Adipisci voluptas reiciendis aut quo molestiae. Culpa quaerat voluptates optio distinctio eaque. Molestias qui explicabo ut quam sit debitis consequatur.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(83, 'Quia in est ea et omnis et provident.', 'Dolor beatae quasi quia ea aliquam alias et. Dolore porro occaecati possimus architecto numquam. Dolorem qui repudiandae eveniet cupiditate iste nostrum veniam.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(84, 'Sint iste iure totam recusandae itaque rem qui nam.', 'Nesciunt ratione quod labore ratione maxime. Repudiandae a molestiae consequatur et eveniet tempore autem. Vel id distinctio modi modi.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(85, 'Et doloribus magni excepturi necessitatibus a est.', 'Aut perspiciatis nesciunt ut sed. Autem quod corrupti eius tempore quisquam. Alias quia officia aut molestias. Adipisci architecto hic qui itaque. Voluptates aperiam et ad.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(86, 'Et id suscipit nulla eos.', 'Tenetur autem aut quos voluptatibus voluptatem placeat. Aliquam aut quis est. Cumque placeat aut porro sit nihil harum.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(87, 'Illo et qui aut dolorum.', 'Repellendus sit nobis totam nemo accusantium reprehenderit. Quis facilis et magni possimus voluptate maiores. Odio et aspernatur nemo accusantium laborum ea quibusdam.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(88, 'Est incidunt a et.', 'Voluptas sit veniam perspiciatis voluptatem sequi rerum quae. Modi fuga nulla non neque ipsam culpa possimus. Et sed ea deleniti qui maxime tempore. Consequatur earum et et nemo.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(89, 'Fugiat ut accusamus animi ut.', 'Libero dolorem recusandae repellat vel ex excepturi. Cumque laboriosam omnis temporibus vel esse hic. Facere sit et et animi laborum soluta qui quis.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(90, 'Eligendi et aut aut aut eos.', 'Aliquam quibusdam veritatis voluptatem amet pariatur ex. Libero corrupti qui inventore autem libero corporis amet.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(91, 'Sit ex quia saepe autem quo inventore sed.', 'Asperiores voluptates provident esse illo laborum. Delectus dolores esse unde quaerat velit ut consectetur natus. Similique temporibus non quia esse alias sit similique repellendus.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(92, 'Dolorem et explicabo aliquam eos nisi reprehenderit.', 'Dolorem recusandae placeat sit tempora. Ut eos facere et aliquid est. Odio quae ut reiciendis quia totam ut. Dolor alias dolorem aliquam sed est. Voluptate vel minima magnam ex.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(93, 'Dolorem et dolores sit sit.', 'Ut sunt commodi illo corrupti rerum porro qui. Consequatur et ipsam ducimus occaecati repellendus quos vero. Similique id sit fugiat ab.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(94, 'Qui qui eos eveniet fugit eveniet.', 'Fuga aspernatur enim quia aperiam exercitationem aperiam. Qui veniam rem ipsum magni ipsam eveniet.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(95, 'Quis voluptatem cupiditate molestiae sunt sint.', 'Magnam ad placeat sint. Possimus esse optio odio. Odit iure minus eligendi laudantium aliquid. Aliquid voluptas similique error nulla maiores sequi aut nostrum. Debitis ad tempore sit aut provident.', '2021-09-14 15:42:34', '2021-09-14 15:42:34'),
	(96, 'Consequatur molestias dolorem nisi nobis magni.', 'Inventore doloribus est vero libero sunt. Magnam porro minima pariatur et sed. Inventore voluptatem consequatur saepe sunt sapiente aut dolores. Et sapiente quibusdam et dicta quasi.', '2021-09-14 15:42:35', '2021-09-14 15:42:35'),
	(97, 'Voluptatum aut nihil est excepturi sed aspernatur.', 'Sunt ut id enim qui quia. Odio neque illum voluptate hic molestiae omnis. Architecto necessitatibus debitis quos suscipit sit. Qui voluptatem quibusdam eos eaque est.', '2021-09-14 15:42:35', '2021-09-14 15:42:35'),
	(98, 'Et animi sunt placeat quis ad.', 'Culpa praesentium voluptates qui perferendis distinctio adipisci autem velit. Iure molestiae officiis vel reprehenderit sit. Qui omnis ipsa facilis quis ea possimus.', '2021-09-14 15:42:35', '2021-09-14 15:42:35'),
	(99, 'Repellendus qui quis qui ut rerum.', 'Illo at perferendis maiores voluptatem dolor. Non temporibus omnis placeat esse. Dolores autem necessitatibus praesentium.', '2021-09-14 15:42:35', '2021-09-14 15:42:35'),
	(100, 'Id iste ullam laudantium at est impedit ratione.', 'Odit in explicabo consequatur cum cupiditate. A autem magnam consequatur molestias voluptate consectetur. Nam omnis nesciunt sequi esse et laboriosam praesentium.', '2021-09-14 15:42:35', '2021-09-14 15:42:35');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Volcando estructura para tabla livewire1.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla livewire1.sessions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
REPLACE INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('XM32j29pd9sDmMGaOnCjjA1x2JiHdxocmx0dQWTN', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSUlmQ3JCSFh3TXdSN3VoNEhUVVg4WWtWcmI1RmJQaEtOdnZnS2xVOCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGZuOVFCb3NKYXhQSHRGMWs5ckNmWnVMZTZTSTdFREZ2aHVlMlRSRmYxQ3ZsbmJwU291NUxpIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRmbjlRQm9zSmF4UEh0RjFrOXJDZlp1TGU2U0k3RURGdmh1ZTJUUkZmMUN2bG5icFNvdTVMaSI7fQ==', 1631740382);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Volcando estructura para tabla livewire1.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla livewire1.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'Leonardo Gaona', 'leogaona@gmail.com', NULL, '$2y$10$fn9QBosJaxPHtF1k9rCfZuLe6SI7EDFvhue2TRFf1CvlnbpSou5Li', NULL, NULL, NULL, NULL, NULL, '2021-09-14 15:51:56', '2021-09-14 15:51:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
