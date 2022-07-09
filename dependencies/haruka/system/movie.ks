;回想用

*opening
	@playMovie file=haruka
	@jump target=*end

*スタッフロール_穹
	@Cg file=EA23a	;　お土産選び
	@Update

	@スタッフロール id=穹
	@jump target=*end

*スタッフロール_やひろ
	@Cg file=EZ11a	;　やひろエンディング
	@Update

	@スタッフロール id=やひろ
	@jump target=*end

*スタッフロール_梢
	@Cg file=EZ24b	;　梢エンディング・表情重ね
	@Update

	@スタッフロール id=梢
	@jump target=*end

*end
	@toRecollect time=0
