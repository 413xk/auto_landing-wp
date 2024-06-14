<?php
// правильный способ подключить стили и скрипты
add_action( 'wp_enqueue_scripts', 'auto_scripts' );
// add_action('wp_print_styles', 'theme_name_scripts'); // можно использовать этот хук он более поздний
function auto_scripts() {

    wp_enqueue_style( 'fonts-gstatic', 'https://fonts.gstatic.com' );
    wp_enqueue_style( 'fonts', 'https://fonts.googleapis.com/css2?family=Oswald:wght@300;400&display=swap' );
    wp_enqueue_style( 'reset', get_template_directory_uri() . '/assets/css/reset.css' );
    wp_enqueue_style( 'slick', get_template_directory_uri() . '/assets/css/slick.css' );
    wp_enqueue_style( 'animate', 'https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css' ); // подключили скрипт с анимацией
    wp_enqueue_style( 'style', get_template_directory_uri() . '/assets/css/style.css' ); // подключили стили

    // регистрируем jquery нужной версии
    wp_deregister_script( 'jquery' ); // отключаем текующую
	wp_register_script( 'jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'); // регистрируем нашу
	wp_enqueue_script( 'jquery' ); //подключаем

    // подключаем скрипты
    wp_enqueue_script( 'slick', get_template_directory_uri() . '/assets/js/slick.min.js', array('jquery'), 'null', true );
    wp_enqueue_script( 'wow', get_template_directory_uri() . '/assets/js/wow.min.js', array('jquery'), 'null', true );
	wp_enqueue_script( 'main', get_template_directory_uri() . '/assets/js/main.js', array('jquery'), 'null', true ); // зависит от jquery, true, если хотим, чтобы скрипты подключались в футере
}

add_theme_support('post-thumbnails'); //выбор миниатюры через вордпресс 
add_theme_support('title-tag');
add_theme_support('custom-logo'); //загрузка лого через вордпресс 

add_filter( 'upload_mimes', 'svg_upload_allow' );
# Добавляет SVG в список разрешенных для загрузки файлов.
function svg_upload_allow( $mimes ) {
	$mimes['svg']  = 'image/svg+xml';

	return $mimes;
}
?>