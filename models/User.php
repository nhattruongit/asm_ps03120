<?php

namespace app\models;

use Yii;
use yii\base\NotSupportedException;
use yii\web\IdentityInterface;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "user".
 *
 * @property integer $id
 * @property string $username
 * @property string $gender
 * @property string $birth_date
 * @property string $email
 * @property string $login
 * @property string $password
 * @property integer $role
 * @property string $auth_key
 * @property string $pasword_reset_token
 */
class User extends ActiveRecord implements IdentityInterface
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'gender', 'birth_date', 'email', 'login', 'password', 'role', 'auth_key', 'pasword_reset_token'], 'required'],
            [['birth_date'], 'safe'],
            [['role'], 'integer'],
            [['username', 'email'], 'string', 'max' => 50],
            [['gender'], 'string', 'max' => 2],
            [['login', 'password'], 'string', 'max' => 40],
            [['auth_key', 'pasword_reset_token'], 'string', 'max' => 64],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => 'Username',
            'gender' => 'Gender',
            'birth_date' => 'Birth Date',
            'email' => 'Email',
            'login' => 'Login',
            'password' => 'Password',
            'role' => 'Role',
            'auth_key' => 'Auth Key',
            'pasword_reset_token' => 'Pasword Reset Token',
        ];
    }

    public function getAuthKey() {
        return null;
    }

    public function getId() {
        return $this->id;
    }

    public function validateAuthKey($authKey) {
        return $this->getAuthKey() === $authKey;
    }

    public static function findIdentity($id) {
        return self::findOne($id);
    }

    public static function findIdentityByAccessToken($token, $type = null) {
        return null;
    }
    
    public static function findByUsername($username){
        return self::findOne(['username'=>$username]);
    }
    
    public function validatePassword($password){
        return $this->password === $password;
    }
}
