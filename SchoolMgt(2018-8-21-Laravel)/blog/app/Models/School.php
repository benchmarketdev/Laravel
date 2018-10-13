<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class School extends Model
{
    protected $table='schools';

    protected $fillable=['name'];

    public $rules = array(
        'name' => 'required'
    );

    protected static $titles = [
        'elect_eur' => 'Electricity Euros',
        'elect_kwh' => 'Electricity Usage',
        'heating_eur' => 'Heating Euros',
        'heating_kwh' => 'Heating Usage',
        'water_eur' => 'Water Euros',
        'water_litres' => 'Water Usage',
    ];

    protected static $yAxis = [
        'elect_eur' => 'Euros',
        'elect_kwh' => 'kWh',
        'heating_eur' => 'Euros',
        'heating_kwh' => 'kWh',
        'water_eur' => 'Euros',
        'water_litres' => 'Litres',
    ];

    protected static $benchmark = [
        'elect_kwh' => 'benchmark_elect',
        'heating_kwh' => 'benchmark_heating',
        'water_litres' => 'benchmark_water',
    ];

        /**
     * @return array
     */
    public static function years()
    {
        $years = [];
        for ($i = 2012; $i <= 2030; $i++) {
            $years[$i] = $i;
        }
        return $years;
    }

    /**
     * @return array
     */
    public static function months()
    {
        $months = [];
        for ($i = 1; $i <= 12; $i++) {
            $months[$i] = date('F', mktime(0, 0, 0, $i, 10));
        }
        return $months;
    }

    /**
     * @return array
     */
    public static function weeks()
    {
        $weeks = [];
        for ($i = 1; $i <= 53; $i++) {
            $weeks[$i] = $i;
        }
        return $weeks;
    }
}
