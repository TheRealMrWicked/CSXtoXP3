



@PlaySe file=SE357

@Cg file=B01a   
@Update transition=universal rule=WIP_LR time=500
@WaitUpdate

@Talk name=Haruka

@Hitret id=18248


@Char file=CA01_07M 
@Update
@Move id=穹 my=30 cycle=1000
@WaitAction id=穹

@Talk name=Sora voice=SR020023

@Hitret id=18249

@Talk name=Haruka

@Hitret id=18250


@Char file=CA01_09M 
@Update
@Move id=穹 y=0 cycle=1000
@WaitAction id=穹

@Talk name=Sora voice=SR020024

@Hitret id=18251

@Talk name=心の声

@Hitret id=18252



@Talk name=Akira voice=AK020094

@Hitret id=18253

@Talk name=Haruka

@Hitret id=18254


@PlayBgm file=BGM03
@ClearChar 
@Char file=CA01_01M x=-300   
@Char file=CC01_02M x=0   
@Char file=CD01_01M x=300   

@Talk name=Kazuha voice=KA020001

@Hitret id=18255

@Talk name=Akira voice=AK020095

@Hitret id=18256

@Talk name=Kazuha voice=KA020002

@Hitret id=18257

@Talk name=Haruka

@Hitret id=18259

@Talk name=Sora voice=SR020025

@Hitret id=18260

@Talk name=Haruka

@Hitret id=18261


@Char file=CD01_02M 

@Talk name=Kazuha voice=KA020003

@Hitret id=18262

@Talk name=Sora voice=SR020026

@Hitret id=18263

@Talk name=Haruka

@Hitret id=18264


@Char file=CC01_01M 

@Talk name=Akira voice=AK020096

@Hitret id=18265


@Char file=CA01_12M x=-400   
@Char file=CC01_02M x=-200   

@Talk name=Sora voice=SR020027

@Hitret id=18266

@Talk name=心の声

@Hitret id=18267


@ClearChar 

@Char file=CD01_04M 

@Talk name=Kazuha voice=KA020004

@Hitret id=18268


@Char file=CC01_02M x=-400   

@Talk name=Akira voice=AK020097

@Hitret id=18269

@Talk name=Haruka

@Hitret id=18270


@StopBgm

@Talk name=心の声

@Hitret id=18271




@Hide
@BlackOut time=1000
@Wait time=2000 

@PlayBgm file=BGM06

@Cg file=B12a   
@Char file=CF01_05M 
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate

@Talk name=Ryouhei voice=RH020008

@Hitret id=18272


@ClearChar 
@Char file=CA01_13L 
@Update
@action id=穹 action=ActionAdvHop width=4 height=0 cycle=100 count=5
@WaitAction id=穹

@Talk name=Sora voice=SR020028

@Hitret id=18273


@ClearChar 
@PlaySe file=se008
@Flash color=RED enter=0 leave=1000

@Char file=CF01_06M 
@Update
@Move id=亮平 my=800 cycle=1000
@WaitAction id=亮平

@Talk name=Ryouhei voice=RH020009

@Hitret id=18274


@PlaySe file=se018

@ClearChar 

@Char file=CB01_01M 

@Talk name=Nao voice=NO020001

@Hitret id=18275

@Talk name=心の声

@Hitret id=18276

@Talk name=Nao voice=NO020002

@Hitret id=18277


@Char file=CF01_03M x=-300   

@Talk name=Ryouhei voice=RH020010

@Hitret id=18278


@Char file=CB01_08M x=300   
@update time=0
@action id=奈緒 action=ActionAdvHop width=35 height=2 cycle=150 count=2
@WaitAction id=奈緒

@Talk name=Nao voice=NO020003

@Hitret id=18279

@Talk name=心の声

@Hitret id=18280


@Char file=CF01_04M 
@Char file=CB01_06M 

@Talk name=Ryouhei voice=RH020011

@Hitret id=18281


@Char file=CA01_04M x=0   

@Talk name=Sora voice=SR020029

@Hitret id=18282


@Char file=CF01_02M 

@Talk name=Ryouhei voice=RH020012

@Hitret id=18283


@Char file=CF01_04M 

@Talk name=Ryouhei voice=RH020013

@Hitret id=18284

@Talk name=Sora voice=SR020030

@Hitret id=18285


@Char file=CF01_03M 

@Talk name=Ryouhei voice=RH020014

@Hitret id=18286


@Char file=CB01_08M 

@Talk name=Nao voice=NO020004

@Hitret id=18287


@Char file=CB01_02M 

@Talk name=Nao voice=NO020005

@Hitret id=18288

@Talk name=Haruka

@Hitret id=18289


@Char file=CA01_06M 

@Talk name=Sora voice=SR020031

@Hitret id=18290


@Char file=CF01_02M 

@Talk name=Ryouhei voice=RH020015

@Hitret id=18291


@ClearChar 

@Char file=CC01_02M 

@Talk name=Akira voice=AK020098

@Hitret id=18292


@Char file=CC01_02M x=-200   
@Char file=CD01_04M x=200   

@Talk name=Kazuha voice=KA020005

@Hitret id=18293


@Talk name=Haruka

@Hitret id=18294


@Char file=CA01_01M x=-300   
@Char file=CC01_02M x=0   
@Char file=CD01_01M x=300   

@Talk name=Sora voice=SR020032

@Hitret id=18295


@Talk name=心の声

@Hitret id=18296

@Talk name=心の声

@Hitret id=18297

@Talk name=心の声

@Hitret id=18298

@Talk name=心の声

@Hitret id=18299

@StopBgm


@Hide
@BlackOut time=1000
@Wait time=2000 

@Change target=00_c003


