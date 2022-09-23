


@PlayBgm file=BGM05
@Cg file=B19a
@MessageFrame type=1

@Talk name=Sora voice=SR020072

@Hitret id=10424


@Char file=CA01_01M

@Talk name=Haruka

@Hitret id=10425

@Talk name=Sora voice=SR020073

@Hitret id=10426

@Talk name=Kozue voice=KO020263

@Hitret id=10427


@ClearChar

@Talk name=Kozue　Monologue voice=KO020264

@Hitret id=10428

@Talk name=Kozue　Monologue voice=KO020265

@Hitret id=10429

@Talk name=Kozue　Monologue voice=KO020266

@Hitret id=10430

@Talk name=Kozue　Monologue voice=KO020267

@Hitret id=10431

@Talk name=Kozue voice=KO020268

@Hitret id=10432

@Talk name=Kozue　Monologue voice=KO020269

@Hitret id=10433

@Talk name=Kozue　Monologue voice=KO020270

@Hitret id=10434

@Talk name=Kozue voice=KO020271

@Hitret id=10435

@Talk name=Kozue　Monologue voice=KO020272

@Hitret id=10436


@WhiteOut time=2000
@Cg file=B01a
@回想イメージ表示
@Char file=CH01_04M

@Talk name=Kozue voice=KO020273

@Hitret id=10437


@Char file=CH01_10M

@Talk name=Kozue voice=KO020274

@Hitret id=10438


@Cg file=B19a
@Update transition=universal rule=WIP_MOZH time=500
@WaitUpdate

@Talk name=Kozue voice=KO020275

@Hitret id=10439

@Talk name=Kozue　Monologue voice=KO020276

@Hitret id=10440

@Talk name=Kozue　Monologue voice=KO020277

@Hitret id=10441

@Talk name=Kozue　Monologue voice=KO020278

@Hitret id=10442

@Talk name=Kozue　Monologue voice=KO020279

@Hitret id=10443


@WhiteOut time=2000
@Cg file=B12a
@回想イメージ表示
@Char file=CH01_03M

@Talk name=Kozue voice=KO020280

@Hitret id=10444


@Cg file=BLACK
@Update transition=universal rule=WIP_MOZV time=500
@WaitUpdate
@Update
@Cg file=B19a
@Char file=CH01_07M
@Update transition=universal rule=WIP_MOZV time=500
@WaitUpdate
@Update
@Update
@action id=梢 action=ActionAdvJump cycle=300 count=1 height=10
@WaitAction id=梢

@Talk name=Kozue voice=KO020281

@Hitret id=10445

@Talk name=Kozue　Monologue voice=KO020282

@Hitret id=10446

@Talk name=Kozue　Monologue voice=KO020283

@Hitret id=10447

@Talk name=Kozue　Monologue voice=KO020284

@Hitret id=10448


@ClearChar

@Talk name=Kozue voice=KO020285

@Hitret id=10449

@Talk name=心の声

@Hitret id=10450

@Talk name=心の声

@Hitret id=10451


@Char file=CA01_01M

@Talk name=Sora voice=SR020074

@Hitret id=10452

@Talk name=Haruka

@Hitret id=10453


@Char file=CH01_05M
@Update time=0
@Update
@action id=梢 action=ActionAdvJump cycle=300 count=1 height=30
@WaitAction id=梢

@Talk name=Kozue voice=KO020286

@Hitret id=10454


@Char file=CH01_07M

@Talk name=Kozue voice=KO020287

@Hitret id=10455


@Char file=CH01_05M
@Update
@action id=梢 action=ActionAdvHop height=0 cycle=100 count=5 width=5
@WaitAction id=梢

@Talk name=Kozue voice=KO020288

@Hitret id=10456


@Leave id=梢 mx=0 my=600 fade=1 time=250 accel=1
@Update
@PlaySe file=SE018
@action id=カメラ action=ActionWave width=0, height=20, count=2 cycle=50
@WaitAction id=カメラ

@Talk name=心の声

@Hitret id=10457

@Talk name=心の声

@Hitret id=10458

@Talk name=Haruka

@Hitret id=10459

@Talk name=Kozue voice=KO020289

@Hitret id=10460

@Talk name=Kozue voice=KO020290

@Hitret id=10461

@Talk name=Sora voice=SR020075

@Hitret id=10462

@Talk name=Haruka

@Hitret id=10463


@Char file=CH01_07M x=-200

@Talk name=Kozue voice=KO020291

@Hitret id=10464

@Talk name=Sora voice=SR020076

@Hitret id=10465


@PlaySe file=se010
@Char file=CH01_06M
@Update
@action id=梢 action=ActionAdvJump cycle=300 count=1 height=10
@WaitAction id=梢

@Talk name=Kozue voice=KO020292

@Hitret id=10466

@Talk name=Haruka

@Hitret id=10467


@Char file=CH01_09M

@Talk name=Kozue voice=KO020293

@Hitret id=10468

@Talk name=Sora voice=SR020077

@Hitret id=10469


@Char file=CH01_13M
@Update
@Move id=梢 my=10 cycle=1000
@WaitAction id=梢

@Talk name=Kozue voice=KO020294

@Hitret id=10470

@Talk name=Haruka

@Hitret id=10471


@Char file=CA01_05M

@Talk name=Sora voice=SR020078

@Hitret id=10472

@Talk name=Kozue voice=KO020295

@Hitret id=10473



@ClearChar
@Update

@Cg file=B34c center=800,300
@EyeCatch
@Change target=00_h010a


