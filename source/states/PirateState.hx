package states;

import flixel.FlxSubState;

import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import openfl.Lib;


class PirateState extends MusicBeatState
{
	public static var leftState:Bool = false;

	var warnText:FlxText;
	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		var guh:String = "
		You Violentated Law!!!\n
		This is A Pirated Game of NF Engine\n
		If you download the actual game of NF Engine we will both happy\n\n
                此版本为盗版\n
                你已被禁止进入游戏\n
                请使用正版进行游玩\n
                ";
		warnText = new FlxText(0, 0, FlxG.width, guh, 32);
		warnText.setFormat(Paths.font("Lang-ZH.ttf"), 32, FlxColor.RED, CENTER);
		warnText.screenCenter(Y);
		add(warnText);

		addVirtualPad(NONE, A);
	}

	override function update(elapsed:Float)
	{		
		if (controls.ACCEPT) CoolUtil.browserLoad('https://github.com/beihu235/FNF-NovaFlare-Engine/releases');
		
		super.update(elapsed);
	}
}
