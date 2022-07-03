
@macro name=スタッフロール
	@hide
	@stopSe fade=3000
	@stopBgm fade=3000
	@stopEnvSe fade=3000
	@wait time=1000 hitCancel
	@staffroll id=%id
@endmacro

@macro name=バナー表示
	@Char file=%file id=BANNER type=screen x=-262 y=-256 order=1010 free
@endmacro
@macro name=バナー消去
	@ClearChar id=BANNER
@endmacro

@macro name=回想イメージ表示
	@Char file=%file|fancy01 id=回想イメージ type=screen order=1000 free
@endmacro
@macro name=回想イメージ消去
	@ClearChar id=回想イメージ
@endmacro

