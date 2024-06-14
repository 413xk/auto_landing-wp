<!-- создан для страницы полтики конф -->

<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo( 'charset' ); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>

  <!-- подключаем wp_enqueue_style functions.php -->
<?php wp_head(); ?> 

</head>

<body>

  <header class="header header-private">
    <div class="container">
      <div class="header__top">
        <?php the_custom_logo(); ?>
        <!-- 'phone_call', 8 - потому что номер телефона привязан к главной странице, мы к ней обращаемся через ИД -->
        <a class="phone" href="tel:<?php the_field('phone_call', 8); ?>"><?php the_field('phone', 8); ?></a>
      </div>
    </div>
  </header>
