


@Cg file=B27d center=400,900
@Update time=3000
@WaitUpdate
@MessageFrame type=1

@Talk name=Nao voice=NO031826

@Hitret id=16929

@Talk name=Nao voice=NO031827

@Hitret id=16930


@PlayBgm file=BGM10
@Cg file=B17b   
@Tone all type=MONOCHROME
@Char file=CF01_08M 
@Update transition=universal rule=MOZCIR time=500
@WaitUpdate

@Talk name=Ryouhei voice=RH030427

@Hitret id=16931


@Tone
@Cg file=B27d center=400,900
@Update transition=universal rule=WIP_BT time=500
@WaitUpdate
@Update
@MoveCamera x=0 y=-600 time=40000 accel=1

@Talk name=Nao voice=NO031828

@Hitret id=16932

@Talk name=Nao　Monologue voice=NO031829

@Hitret id=16933

@Talk name=Nao　Monologue voice=NO031830

@Hitret id=16934

@Talk name=Nao voice=NO031831

@Hitret id=16935


@PlaySe file=SE251

@Talk name=Nao voice=NO031832

@Hitret id=16936


@PlaySe file=SE250
@Cg file=B12d   
@Update transition=universal rule=WIP_LR time=500
@WaitUpdate
@Char file=CB01_13M 

@Talk name=Nao voice=NO031833

@Hitret id=16937

@Talk name=Nao　Monologue voice=NO031834

@Hitret id=16938

@Talk name=Nao　Monologue voice=NO031835

@Hitret id=16939


@StopBgm

@Talk name=Nao　Monologue voice=NO031836

@Hitret id=16940


@StopSe
@BlackOut   time=1000
@PlayEnvSe file=SE308 fade=0

@Talk name=心の声

@Hitret id=16941

@Talk name=心の声

@Hitret id=16942

@Talk name=心の声

@Hitret id=16943


@StopEnvSe id=SE308 fade=0
@Hide wait
@MessageFrame type=0
@Wait time=1000 

@Change target=00_b030


