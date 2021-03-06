package com.haxepunk.spriter;

import com.haxepunk.Graphic;

import flash.display.BitmapData;
import flash.geom.Point;
import openfl.Assets;

class Spriter extends Graphic
{
	public function new (source:String, x:Float = 0, y:Float = 0)
	{
		super();
		this.x = x;
		this.y = y;
		blit = true;
		
		_scml = new Scml(this, source, Xml.parse(Assets.getText(source)));
	}
	
	public override function render (target:BitmapData, point:Point, camera:Point)
	{
		_scml.currentTime += Std.int(HXP.elapsed*1000);
	}
	
	public function playAnim(animName:String):Void
	{
		_scml.playAnim(animName);
	}
	
	public var angle : Float = 0;
	public var scaleX : Float = 1;
	public var scaleY : Float = 1;
	public var alpha : Float = 1;
	public var spin : Int = 1;
	
	private var _scml : Scml;
}
