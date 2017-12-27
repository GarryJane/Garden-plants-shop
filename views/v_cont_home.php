<div class="main">
    <div class="row">
        <div class="col-xs-12">
            <h1 class="page-title__text">Коллекция растений Марины Григорьевой</h1>
            <h2 class="page-title__text">+7 123 456 78 90</h2>
        </div>
    </div>

    <div class="content">
        <div class="row">

        <?php
    /* отладочный массив данных, имитация DB*/
/*    $categories = [
        [
            'cat_name' => 'Лилейники',
            'cat_img' => 'img/plant-1.png'
        ],
        [
            'cat_name' => 'Хосты',
            'cat_img' => 'img/plant-2.png'
        ],
        [
            'cat_name' => 'Пионы',
            'cat_img' => 'img/plant-3.png'
        ],
        [
            'cat_name' => 'Ирисы сибирские',
            'cat_img' => 'img/plant-4.png'
        ],
        [
            'cat_name' => 'Лилейники',
            'cat_img' => 'img/plant-1.png'
        ],
        [
            'cat_name' => 'Хосты',
            'cat_img' => 'img/plant-2.png'
        ],
        [
            'cat_name' => 'Пионы',
            'cat_img' => 'img/plant-3.png'
        ],
        [
            'cat_name' => 'Ирисы сибирские',
            'cat_img' => 'img/plant-4.png'
        ]
    ];*/

    $i = 0;
    foreach ($this->content as $cat) {
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