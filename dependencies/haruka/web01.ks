


@SetParam arg=112,3	

@PlaySe file=SE352

@Cg file=B17a
@バナー表示 file=banner_web01
@Update transition=universal rule=WIP_RL
@WaitUpdate
@Update
@Wait time=2000


@Cg file=B20a
@バナー表示 file=banner_web01
@Update transition=universal rule=WIP_LR
@WaitUpdate
@PlayBgm file=BGM05

@Talk name=Class　Rep's　Thoughts voice=KO100001

@Hitret id=15408

@Talk name=Class　Rep's　Thoughts voice=KO100002

@Hitret id=15409


@Cg file=B18a
@バナー表示 file=banner_web01
@Update transition=universal rule=WIP_RL
@WaitUpdate
@Talk name=Class　Rep's　Thoughts voice=KO100003

@Hitret id=15410

@Talk name=Class　Rep's　Thoughts voice=KO100004

@Hitret id=15411

@Talk name=Class　Rep's　Thoughts voice=KO100005

@Hitret id=15412

@Talk name=Class　Rep's　Thoughts voice=KO100006

@Hitret id=15413


@StopBgm
@BlackOut

@Talk name=Class　Rep's　Thoughts voice=KO100007

@Hitret id=15414


@Cg file=B19a
@Char file=CH01_01M
@Update transition=universal rule=WIP_LR
@WaitUpdate


@Talk name=Class　Rep voice=KO100008

@Hitret id=15415


@PlayBgm file=BGM13
@Char file=CC01_01M

@Talk name=Akira voice=AK100001

@Hitret id=15416

@Talk name=Class　Rep voice=KO100009

@Hitret id=15417


@Char file=CF01_01M

@Talk name=Ryouhei voice=RH100001

@Hitret id=15418


@Char file=CC01_05M

@Talk name=Akira voice=AK100002

@Hitret id=15419


@ClearChar id=梢
@Char file=CD01_02M

@Talk name=Kazuha voice=KA100001

@Hitret id=15420


@Char file=CC01_04M

@Talk name=Akira voice=AK100003

@Hitret id=15421


@ClearChar
@Char file=CH01_11M

@Talk name=Class　Rep's　Thoughts voice=KO100010

@Hitret id=15422


@ClearChar
@Char file=CC01_14L

@Talk name=Class　Rep's　Thoughts voice=KO100011

@Hitret id=15423

@ClearChar

@Char file=CF01_02L

@Talk name=Class　Rep's　Thoughts voice=KO100012

@Hitret id=15424


@Char file=CF01_04L

@Talk name=Class　Rep's　Thoughts voice=KO100013

@Hitret id=15425


@ClearChar
@Char file=CC01_03M
@Char file=CF01_05M
@Char file=CD01_04M

@Talk name=Class　Rep's　Thoughts voice=KO100014

@Hitret id=15426


@Char file=CF01_01M

@Talk name=Ryouhei voice=RH100002

@Hitret id=15427


@ClearChar
@Char file=CH01_11M

@Talk name=Class　Rep voice=KO100015

@Hitret id=15428


@Char file=CF01_10M

@Talk name=Ryouhei voice=RH100003

@Hitret id=15429


@Char file=CH01_04M

@Talk name=Class　Rep voice=KO100016

@Hitret id=15430


@ClearChar
@Char file=CC01_02M

@Talk name=Akira voice=AK100004

@Hitret id=15431


@Char file=CD01_06M

@Talk name=Kazuha voice=KA100002

@Hitret id=15432


@PlaySe file=se011

@Char file=CC01_09M
@Update
@Move id=瑛 my=20 cycle=1000
@WaitAction id=瑛

@Talk name=Akira voice=AK100005

@Hitret id=15433


@Char file=CC01_09M x=-300 y=20
@Char file=CD01_06M x=0
@Char file=CH01_05M x=300
@Update
@action id=梢 action=ActionAdvJump cycle=300 count=1 height=30
@WaitAction id=梢

@Talk name=Class　Rep voice=KO100017

@Hitret id=15434

@Talk name=Class　Rep's　Thoughts voice=KO100018

@Hitret id=15435

@Talk name=Class　Rep's　Thoughts voice=KO100019

@Hitret id=15436


@ClearChar

@Char file=CD01_02M

@Talk name=Kazuha voice=KA100003

@Hitret id=15437


@Char file=CC01_02M

@Talk name=Akira voice=AK100006

@Hitret id=15438


@Char file=CF01_01M

@Talk name=Ryouhei voice=RH100004

@Hitret id=15439


@StopBgm

@ClearChar
@Char file=CH01_08M

@Talk name=Class　Rep voice=KO100020

@Hitret id=15440


@PlayEnvSe file=SE404 fade=0

@ClearChar

@Char file=CC01_01M
@Talk name=Akira voice=AK100007

@Hitret id=15441


@Char file=CC01_02M

@Talk name=Akira voice=AK100008

@Hitret id=15442


@Char file=CD01_02M

@Talk name=Kazuha voice=KA100004

@Hitret id=15443


@Char file=CC01_01M

@Talk name=Akira voice=AK100009

@Hitret id=15444


@Char file=CH01_01M

@Talk name=Class　Rep voice=KO100021

@Hitret id=15445


@Char file=CH01_09M

@Talk name=Class　Rep voice=KO100022

@Hitret id=15446


@Char file=CC01_02M

@Talk name=Akira voice=AK100010

@Hitret id=15447

@Talk name=Akira voice=AK100011

@Hitret id=15448


@Char file=CC01_01M

@Talk name=Akira voice=AK100012

@Hitret id=15449


@ClearChar id=梢
@Char file=CF01_05M

@Talk name=Ryouhei voice=RH100005

@Hitret id=15450


@Char file=CC01_04M
@Update
@action id=瑛 action=ActionAdvJump cycle=300 count=1 height=30
@WaitAction id=瑛

@Talk name=Akira voice=AK100013

@Hitret id=15451


@StopEnvSe id=SE404

@Char file=CD01_06M

@Talk name=Kazuha voice=KA100005

@Hitret id=15452



@PlayBgm file=BGM06
@ClearChar

@Char file=CC01_02M

@Talk name=Akira voice=AK100014

@Hitret id=15453

@Talk name=Akira voice=AK100015

@Hitret id=15454


@Char file=CD01_04M

@Talk name=Kazuha voice=KA100006

@Hitret id=15455


@Char file=CD01_12M

@Talk name=Kazuha voice=KA100007

@Hitret id=15456


@Char file=CC01_03M
@Char file=CD01_04M

@Talk name=Akira voice=AK100016

@Hitret id=15457


@Char file=CF01_01M

@Talk name=Ryouhei voice=RH100006

@Hitret id=15458


@Char file=CC01_02M

@Talk name=Akira voice=AK100017

@Hitret id=15459


@Char file=CC01_01M
@Char file=CD01_10M

@Talk name=Akira voice=AK100018

@Hitret id=15460


@Char file=CC01_03M

@Talk name=Akira voice=AK100019

@Hitret id=15461


@Char file=CF01_03M

@Talk name=Ryouhei voice=RH100007

@Hitret id=15462


@Char file=CC01_02M

@Talk name=Akira voice=AK100020

@Hitret id=15463


@Char file=CC01_14M

@Talk name=Akira voice=AK100021

@Hitret id=15464


@StopBgm fade=0



@ClearChar

@PlaySe file=se008
@Char file=CH01_10L
@Update time=0
@action id=カメラ action=ActionWave width=0, height=20, count=2 cycle=50
@WaitAction id=カメラ

@Talk name=Class　Rep voice=KO100023

@Hitret id=15465



@PlayBgm file=BGM14

@ClearChar
@Char file=CC01_06M

@Talk name=Akira voice=AK100022

@Hitret id=15466


@Char file=CH01_10M

@Talk name=Class　Rep voice=KO100024

@Hitret id=15467


@ClearChar

@Char file=CD01_07M

@Talk name=Kazuha voice=KA100008

@Hitret id=15468


@Char file=CF01_05M

@Talk name=Ryouhei voice=RH100008

@Hitret id=15469


@Char file=CD01_07M

@Talk name=Kazuha voice=KA100009

@Hitret id=15470


@ClearChar
@Char file=CH01_05M

@Talk name=Class　Rep voice=KO100025

@Hitret id=15471


@Char file=CH01_04M

@Talk name=Class　Rep voice=KO100026

@Hitret id=15472



@Char file=CH01_08M

@Talk name=Class　Rep's　Thoughts voice=KO100027

@Hitret id=15473

@Talk name=Class　Rep's　Thoughts voice=KO100028

@Hitret id=15474


@ClearChar

@Char file=CF01_09M

@Talk name=Ryouhei voice=RH100009

@Hitret id=15475


@Char file=CH01_04M

@Talk name=Class　Rep voice=KO100029

@Hitret id=15476


@Char file=CC01_02M

@Talk name=Akira voice=AK100023

@Hitret id=15477


@Char file=CH01_11M

@Talk name=Class　Rep voice=KO100030

@Hitret id=15478


@ClearChar id=亮平

@Char file=CD01_08M
@Talk name=Kazuha voice=KA100010

@Hitret id=15479



@Talk name=Class　Rep voice=KO100031

@Hitret id=15480


@StopBgm


@Hide
@BlackOut time=1000
@Wait time=1500

@Cg file=B19a
@Char file=CC01_02M
@Update transition=universal rule=MOZCIR
@WaitUpdate

@Talk name=Akira voice=AK100024

@Hitret id=15481


@Char file=CH01_08M

@Talk name=Class　Rep voice=KO100032

@Hitret id=15482


@PlayBgm file=BGM08

@Char file=CC01_01M

@Talk name=Akira voice=AK100025

@Hitret id=15483

@Talk name=Akira voice=AK100026

@Hitret id=15484


@Char file=CH01_06M

@Talk name=Class　Rep voice=KO100033

@Hitret id=15485


@Char file=CC01_02M

@Talk name=Akira voice=AK100027

@Hitret id=15486


@Char file=CD01_02M

@Talk name=Kazuha voice=KA100011

@Hitret id=15487


@Char file=CH01_05M

@Talk name=Class　Rep voice=KO100034

@Hitret id=15488


@Char file=CD01_10M

@Talk name=Kazuha voice=KA100012

@Hitret id=15489


@Char file=CC01_01M

@Talk name=Akira voice=AK100028

@Hitret id=15490


@PlayBgm file=BGM13
@Char file=CD01_06M
@Update
@action id=一葉 action=ActionAdvJump cycle=300 count=1 height=30
@WaitAction id=一葉

@Talk name=Kazuha voice=KA100013

@Hitret id=15491


@Char file=CC01_14M

@Talk name=Akira voice=AK100029

@Hitret id=15492

@Talk name=Kazuha voice=KA100014

@Hitret id=15493


@PlaySe file=se011

@Char file=CC01_09M
@Update
@Move id=瑛 my=20 cycle=1000
@WaitAction id=瑛

@Talk name=Akira voice=AK100030

@Hitret id=15494


@ClearChar
@Char file=CF01_03M

@Talk name=Ryouhei voice=RH100010

@Hitret id=15495


@Char file=CH01_13M

@Talk name=Class　Rep voice=KO100035

@Hitret id=15496


@Char file=CF01_01M

@Talk name=Ryouhei voice=RH100011

@Hitret id=15497


@Char file=CH01_01M

@Talk name=Class　Rep voice=KO100036

@Hitret id=15498


@Char file=CC01_04M

@Talk name=Akira voice=AK100031

@Hitret id=15499


@Char file=CF01_03M

@Talk name=Ryouhei voice=RH100012

@Hitret id=15500


@Char file=CH01_04M

@Talk name=Class　Rep voice=KO100037

@Hitret id=15501


@Char file=CC01_03M

@Talk name=Akira voice=AK100032

@Hitret id=15502


@ClearChar id=梢
@Char file=CD01_06M

@Talk name=Kazuha voice=KA100015

@Hitret id=15503


@Talk name=Nao voice=NO100001

@Hitret id=15504


@ClearChar
@Char file=CF01_06M

@Talk name=Ryouhei voice=RH100013

@Hitret id=15505


@Char file=CC01_14M

@Talk name=Akira voice=AK100033

@Hitret id=15506


@Char file=CD01_12M

@Talk name=Kazuha voice=KA100016

@Hitret id=15507


@StopBgm

@Hide
@BlackOut time=1000
@Wait time=2000

@toTitle submenu=WebContents
