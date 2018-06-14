<div class="container">
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
                $i = 0;
                foreach ($this->content as $cat) {
                    if ($i > 0 && $i % 3 == 0) {
                        echo "</div><div class='row'>";
                    }
                    echo "
                    <div class='col-md-6 col-lg-4 col-sm-12'>
                        <a href='/?page=cat&id={$cat['cat_id']}'>
                            <figure class='category-represent'>
                               <img src='{$cat['cat_img']}' class='category-represent__img' alt=''>
                               <figcaption>
                                    <h3 class='category-represent__name category-represent__name_main-page'>
                                        {$cat['cat_name']}
                                    </h3>
                                    <p class='category-represent__intro'>{$cat['cat_descr']}</p>
                                </figcaption>
                                
                            </figure>
                        </a>
                    </div>
                ";
                    $i++;
                }
                ?>
            </div>