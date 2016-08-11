<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "Line".
 *
 * @property integer $id
 * @property string $code
 * @property string $start_time_operation
 * @property string $end_time_operation
 * @property string $type
 * @property string $map
 */
class Lines extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'Line';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['code', 'start_time_operation', 'end_time_operation', 'map'], 'required'],
            [['start_time_operation', 'end_time_operation'], 'safe'],
            [['code', 'map'], 'string', 'max' => 50],
            [['type'], 'string', 'max' => 30],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'code' => 'Code',
            'start_time_operation' => 'Start Time Operation',
            'end_time_operation' => 'End Time Operation',
            'type' => 'Type',
            'map' => 'Map',
        ];
    }
}
