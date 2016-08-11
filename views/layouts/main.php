<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>

<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>
<?= Html::img('@web/images/logo.png',['class'=>'center-block'])?>
<div class="wrap">
	
    <?php
    
    NavBar::begin([
        'brandLabel' => '',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse',
        ],
    ]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => [
            ['label' => 'Trang Chủ', 'url' => ['/site/index']],
            ['label' => 'Giới Thiệu', 'url' => ['/site/about']],
			['label' => 'Thông Tin Tài Xế', 'url' => ['/user/index']],
			['label' => 'Thông Tin Nhà Ga', 'url' => ['/drivers/index']],
			['label' => 'Thông Tin Phương Tiện', 'url' => ['/vehicles/index']],
			['label' => 'Thông Tin Tuyến Đường', 'url' => ['/lines/index']],
            ['label' => 'Liên Hệ', 'url' => ['/site/contact']],
            ['label' => 'Bản Đồ', 'url' => ['/map']],
            Yii::$app->user->isGuest ? (
                ['label' => 'Đăng Nhập', 'url' => ['/site/login']]
            ) : (
                '<li>'
                . Html::beginForm(['/site/logout'], 'post', ['class' => 'navbar-form'])
                . Html::submitButton(
                    'Logout (' . Yii::$app->user->identity->username . ')',
                    ['class' => 'btn btn-link']
                )
                . Html::endForm()
                . '</li>'
            )
        ],
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; My PS03120 <?= date('Y') ?></p>

      
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
