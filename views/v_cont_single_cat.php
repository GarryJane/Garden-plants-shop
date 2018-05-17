<div id="full-size-container" class="overlay">
    <img id="full-size-img" class="overlay__img" src="" alt="">
</div>

<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <h1 class="page-title__text"><a href="/"><i title="Главная" class="fa fa-home" aria-hidden="true"></i></a>
            </h1>
            <h1 class="page-title__text">Лилейники</h1>
        </div>
    </div>
    <?php
/*    echo "<pre>";
        var_dump($this->content);
    echo "</pre>";*/

    $i = 0;

    foreach ($this->content as $plant) {
        if ($i > 0 && $i % 4 == 0) {
            echo "</div><div class='row'>";
        }
        echo
        "
            <div class='col-md-6 col-sm-12'>
                 <figure class='category-represent'>
                    <img src='{$plant['p_img']}' class='category-represent__img' alt=''>
                    <figcaption>
                        <h3 class='category-represent__name'>
                            {$plant['p_name']}
                            <span class='category-represent__name_price'>
                                {$plant['p_price']} р.
                            </span>
                        </h3>
                        <p class='category-represent__intro'>{$plant['p_descr']}</p>
                    </figcaption>
                </figure>
             </div>
            ";
        $i++;
    }
    ?>

</div> <!-- ./content -->

