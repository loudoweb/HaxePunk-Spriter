package com.haxepunk.spriter;

import com.haxepunk.graphics.Image;

class File
{
	public var id : Int;
	public var name : String;
	public var pivotX : Float;
	public var pivotY : Float;
	public var image : Image;
	
	public function new (fast:haxe.xml.Fast)
	{
		id = Std.parseInt(fast.att.id);
		name = fast.att.name;
		pivotX = fast.has.pivot_x ? Std.parseFloat(fast.att.pivot_x) : 0.0;
		pivotY = fast.has.pivot_x ? Std.parseFloat(fast.att.pivot_y) : 1.0;
		//image = new Image(name);
	}
}
