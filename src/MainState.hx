package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.effects.postprocess.PostProcess;

class MainState extends FlxState
{
	private var _shader:PostProcess = new PostProcess("assets/shader/test.frag");
	private var _frameCount:Int = 0;
	
	public function new()
	{
		super();
	}

	override public function create():Void
	{
		FlxG.addPostProcess(_shader);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		_frameCount++;
		//_shader.setUniform("time", _frameCount*1000);
	}
}
