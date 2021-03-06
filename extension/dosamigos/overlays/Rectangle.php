<?php
/**
 * @copyright Copyright (c) 2014 2amigOS! Consulting Group LLC
 * @link http://2amigos.us
 * @license http://www.opensource.org/licenses/bsd-license.php New BSD License
 */
namespace app\extension\dosamigos\overlays;

use app\extension\dosamigos\LatLngBounds;
use app\extension\dosamigos\OverlayTrait;
use yii\base\InvalidConfigException;
use yii\helpers\ArrayHelper;

/**
 * Rectangle
 *
 * A Google Maps Rectangle.
 *
 * @see https://developers.google.com/maps/documentation/javascript/reference?csw=1#RectangleOptions
 * @author Antonio Ramirez <amigo.cobos@gmail.com>
 * @link http://www.ramirezcobos.com/
 * @link http://www.2amigos.us/
 * @package app\extension\dosamigos
 */
class Rectangle extends RectangleOptions
{
    use OverlayTrait;

    /**
     * @inheritdoc
     */
    public function init()
    {
        if ($this->bounds == null) {
            throw new InvalidConfigException('"$bounds" cannot be null');
        }
    }

    /**
     * Sets the options based on a RectangleOptions object
     *
     * @param RectangleOptions $rectangleOptions
     */
    public function setOptions(RectangleOptions $rectangleOptions)
    {
        $options = array_filter($rectangleOptions->options);
        $this->options = ArrayHelper::merge($this->options, $options);
    }

    /**
     * Returns center of bounds
     * @return \app\extension\dosamigos\LatLng|null
     */
    public function getCenterOfBounds()
    {
        return (null !== $this->bounds && $this->bounds instanceof LatLngBounds)
            ? $this->bounds->getCenterCoordinates()
            : null;
    }

    /**
     * Returns the js code to create a rectangle on a map
     * @return string
     */
    public function getJs()
    {

        $js = $this->getInfoWindowJs();

        $js[] = "var {$this->getName()} = new google.maps.Rectangle({$this->getEncodedOptions()});";

        foreach($this->events as $event) {
            /** @var \app\extension\dosamigos\Event $event */
            $js[] = $event->getJs($this->getName());
        }

        return implode("\n", $js);
    }
} 
