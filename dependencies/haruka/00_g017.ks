


@MessageFrame type=1
@PlayEnvSe file=SE302 fade=0
@Cg file=B15a
@Tone all type=SEPIA
@Char file=CG01_01M
@Update time=1000
@WaitUpdate

@Talk name=Yahiro voice=YH010753

@Hitret id=8001


@Char file=CG01_05M

@Talk name=Yahiro voice=YH010754

@Hitret id=8002


@Cg file=B15a
@Tone
@Char file=CG01_05M
@Update transition=universal rule=CLOUD_A time=500
@WaitUpdate

@Talk name=Haruka

@Hitret id=8003


@Char file=CG01_10M

@Talk name=Yahiro voice=YH010755

@Hitret id=8004

@Talk name=Haruka

@Hitret id=8005


@Char file=CG01_02M

@Talk name=Yahiro voice=YH010756

@Hitret id=8006

@Talk name=Yahiro voice=YH010757

@Hitret id=8007

@Talk name=Haruka

@Hitret id=8008


@Char file=CG01_03M

@Talk name=Yahiro voice=YH010758

@Hitret id=8009


@Char file=CG01_01M

@Talk name=Yahiro voice=YH010759

@Hitret id=8010

@Talk name=Haruka

@Hitret id=8011

@Talk name=Yahiro voice=YH010760

@Hitret id=8012

@Talk name=Haruka

@Hitret id=8013


@Char file=CG01_07M

@Talk name=Yahiro voice=YH010761

@Hitret id=8014

@Talk name=Haruka

@Hitret id=8015

@Talk name=Yahiro voice=YH010762

@Hitret id=8016

@Talk name=Haruka

@Hitret id=8017

@Cg file=B15a
@Char file=CG01_09M
@Tone all type=SEPIA

@Talk name=Yahiro voice=YH010763

@Hitret id=8018


@StopEnvSe id=SE302
@Tone

@Hide
@BlackOut time=1000
@Update
@Wait time=2000
@Cg file=B33a
@Char file=CG04_01M

@Talk name=心の声

@Hitret id=8019

@Talk name=心の声

@Hitret id=8020

@Talk name=心の声

@Hitret id=8021

@Talk name=心の声

@Hitret id=8022

@Talk name=心の声

@Hitret id=8023


@Char file=CG04_11M

@Talk name=心の声

@Hitret id=8024


@Char file=CG04_01M

@Talk name=心の声

@Hitret id=8025

@Talk name=心の声

@Hitret id=8026


@Char file=CG04_10M
@Update
@action id=やひろ action=ActionAdvJump cycle=300 count=1 height=5
@WaitAction id=やひろ

@Talk name=Yahiro voice=YH010764

@Hitret id=8027


@PlayBgm file=BGM13
@Leave id=やひろ mx=-500 my=0 fade=1 time=500 accel=1

@Talk name=Akira voice=AK010061

@Hitret id=8028

@Talk name=心の声

@Hitret id=8029


@Char file=CC06_14S x=200

@Talk name=心の声

@Hitret id=8030


@Char file=CC06_14S x=0

@Talk name=心の声

@Hitret id=8031


@Char file=CC06_14S x=-200
@PlaySe file=SE268

@Talk name=心の声

@Hitret id=8032


@ClearChar

@Talk name=心の声

@Hitret id=8033

@Talk name=心の声

@Hitret id=8034

@Talk name=Haruka

@Hitret id=8035


@Char file=CC06_02S

@Talk name=Akira voice=AK010062

@Hitret id=8036

@Talk name=Haruka

@Hitret id=8037

@Talk name=心の声

@Hitret id=8038


@Char file=CC06_01S

@Talk name=Akira voice=AK010063

@Hitret id=8039

@Talk name=Haruka

@Hitret id=8040


@PlaySe file=SE268

@Talk name=心の声

@Hitret id=8041

@Talk name=Akira voice=AK010064

@Hitret id=8042

@Talk name=Haruka

@Hitret id=8043

@Talk name=心の声

@Hitret id=8044

@Talk name=Haruka

@Hitret id=8045

@Talk name=心の声

@Hitret id=8046


@Char file=CC06_05S

@Talk name=Akira voice=AK010065

@Hitret id=8047


@ClearChar id=瑛

@Talk name=心の声

@Hitret id=8048


@Char file=CG04_12M x=-500
@Update time=0
@Leave id=やひろ mx=900 my=0 fade=1 time=500 accel=1

@Talk name=心の声

@Hitret id=8049

@Talk name=心の声

@Hitret id=8050

@Talk name=Haruka

@Hitret id=8051


@Char file=CC06_01S

@Talk name=Akira voice=AK010066

@Hitret id=8052

@Talk name=Haruka

@Hitret id=8053



@Talk name=心の声

@Hitret id=8054


@Cg file=B27a
@Update transition=universal rule=WIP_BT time=250
@WaitUpdate
@PlaySe file=SE268

@Talk name=Akira voice=AK010067

@Hitret id=8055

@Talk name=心の声

@Hitret id=8056

@Talk name=Yahiro voice=YH010765

@Hitret id=8057

@Talk name=Haruka

@Hitret id=8058

@Talk name=Yahiro voice=YH010766

@Hitret id=8059

@Talk name=Yahiro voice=YH010767

@Hitret id=8060

@Talk name=Haruka

@Hitret id=8061


@StopBgm

@Hide
@BlackOut time=1000
@Wait time=2000


@Change target=00_g017b


