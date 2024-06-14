<?php
/*
Template Name: home
*/
?>

<?php get_header(); ?>

  <section class="services">
    <div class="container">
      <h2 class="title">НАШИ УСЛУГИ</h2>
      <div class="services__inner">
        <div class="services__content">
          <!-- здесь подлючили через визуальный редактор вордпресс. Зайди на страницу в админке -->
          <?php the_field('service_text'); ?>
            <a class="button button--decor" href="#">КОНСУЛЬТАЦИЯ ЭКСПЕРТА</a>
        </div>
        <?php the_field('service_item'); ?>
      </div>
    </div>
  </section>


  <section class="benefits">
    <div class="container">
      <div class="benefits__inner">
        <img data-wow-delay="2s" class="benefits__images wow animate__fadeInUp" src="<?php the_field('benefits_img'); ?>" alt="car">
        <div class="benefits__content">
          <h2 class="title benefits__title">ПОЧЕМУ МЫ?</h2>
          <?php the_field('benefits_text'); ?>
        </div>
      </div>
    </div>
  </section>


  <section class="carousel">
    <div class="container">
      <h2 class="title">
        ПРИГНАННЫЕ НАМИ АВТО
      </h2>
      <div class="carousel__inner">

      <?php
                global $post;

                $myposts = get_posts([
                    'numberposts' => -1,
                    'offset'      => 1,
                    'category'    => 2
                ]);

                if( $myposts ){
                    foreach( $myposts as $post ){
                        setup_postdata( $post );
            ?>
                        <!-- Вывод постов, функции цикла: the_title() и т.д. -->
                        <div class="carousel__item">
                            <div class="carousel__item-box">
                                <img class="carousel__item-img" src="<?php the_post_thumbnail_url(); ?>">
                                <h4 class="carousel__item-title"><?php the_title(); ?></h4>
                                <p class="carousel__item-text"><?php the_content(); ?></p>
                            </div>
                        </div>
            <?php
                    }
                } else {
                    // Постов не найдено
                }

                wp_reset_postdata(); // Сбрасываем $post
            ?>


      </div>
    </div>
  </section>



  <section class="contacts">
    <div class="container">
      <div class="contacts__inner">
        <div class="contacts__info">
          <h2 class="title">
            КОНТАКТЫ
          </h2>
          <ul class="contacts__list">
            <li class="contacts__item">
              <p class="contacts__item-title">
                <!-- выводим название поля из ACF -->
                <?php 
                  $field_name = "address";
                  $field = get_field_object($field_name);
                  
                  echo $field['label'];
                ?>
              </p>
              <p class="contacts__item-text">
                <?php the_field('address'); ?>
              </p>
            </li>
            <li class="contacts__item">
              <p class="contacts__item-title">
              <?php 
                  $field_name = "working_hours";
                  $field = get_field_object($field_name);
                  
                  echo $field['label'];
                ?>
              </p>
              <p class="contacts__item-text">
                <?php the_field('working_hours'); ?>
              </p>
            </li>
            <li class="contacts__item">
              <p class="contacts__item-title">
              <?php 
                  $field_name = "phone";
                  $field = get_field_object($field_name);
                  
                  echo $field['label'];
                ?>
              </p>
              <p class="contacts__item-text">
                <a href="tel:<?php the_field('phone_call'); ?>"><?php the_field('phone'); ?></a>
              </p>
            </li>
          </ul>
        </div>
        <form class="contacts__form">
            <?= do_shortcode( '[contact-form-7 id="938ebbb" title="Оставить заявку"]' ); ?>
        </form>
      </div>
    </div>
  </section>

<?php get_footer(); ?>