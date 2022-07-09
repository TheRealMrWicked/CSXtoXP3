;回想用

*opening
	@playMovie file=yosuga
	@jump target=*end

*スタッフロール_穹
	@Cg file=EA08c center=400,1000
	@Update

	@スタッフロール id=穹
	@jump target=*end

*スタッフロール_奈緒
	@Cg file=B12a    ;　通学路・昼
	@Char file=CB01_03L  ;　奈緒・制服・笑い     L
	@Update

	@スタッフロール id=奈緒
	@jump target=*end

*スタッフロール_瑛
	@Cg file=B34b center=800,300
	@Char file=CC01_02L  ;　瑛・制服・笑顔   L
	@Update

	@スタッフロール id=瑛
	@jump target=*end

*スタッフロール_一葉
	@Cg file=B12a    ;　通学路・昼
	@Char file=CD01_03L  ;　一葉・制服・ほほえみ２       L
	@Update

	@スタッフロール id=一葉
	@jump target=*end

*スタッフロール_初佳
	@Cg file=B23b    ;　海岸・夕方
	@Char file=CE03_04L  ;　初佳・私服２・笑顔   L
	@Update

	@スタッフロール id=初佳
	@jump target=*end

*end
	@toRecollect time=0
