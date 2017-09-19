<div class="main">
    <div class="content">
        <div class="row">

        <?php
    /* отладочный массив данных, имитация DB*/
    $plant = [
            'p_name' => 'Хосты',
            'p_img' => 'img/plant-2.png',
            'p_intro' => 'Кратное описание хосты',
            'p_descr' => 'Энциклопедическая справка или что-то в этом роде по объёму',
            'p_price' => '5000'
    ];

    $i = 0;
    foreach ($categories as $cat) {
        if( $i > 0 && $i % 4 == 0) {
            echo "</div><div class='row'>";
        }
        echo "<div class='col-md-3 col-sm-6'>";
        echo "<figure class='category-represent'>";
        echo "<img src='{$cat['cat_img']}' class='category-represent__img' alt=''>";
        echo "<figcaption class='category-represent__name'>{$cat['cat_name']}</figcaption>";
        echo "</figure>";
        echo "</div>";
        $i++;
    }
    ?>
</div><!-- ./row-->
</div> <!-- ./content -->
</div> <!-- ./main -->
</div> <!-- ./container -->
