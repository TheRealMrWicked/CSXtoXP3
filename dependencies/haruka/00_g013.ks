



@Cg file=B27c
@MessageFrame type=1

@Talk name=Yahiro voice=YH010471

@Hitret id=7010

@Talk name=Motoka voice=MT010100

@Hitret id=7011

@Talk name=Yahiro voice=YH010472

@Hitret id=7012


@PlayBgm file=BGM13
@Cg file=B01c
@Char file=CE03_08M
@Char file=CG03_06M
@Update transition=universal rule=WIP_BT time=500
@WaitUpdate

@Talk name=Motoka voice=MT010101

@Hitret id=7013

@Talk name=Yahiro voice=YH010473

@Hitret id=7014


@Char file=CG03_03M

@Talk name=Yahiro voice=YH010474

@Hitret id=7015


@Char file=CE03_04M
@Update
@action id=初佳 action=ActionAdvJump cycle=300 count=1 height=10
@WaitAction id=初佳

@Talk name=Motoka voice=MT010102

@Hitret id=7016


@ClearChar

@Talk name=Motoka voice=MT010103

@Hitret id=7017


@PlaySe file=se104

@Talk name=Motoka voice=MT010104

@Hitret id=7018


@PlaySe file=se104
@WaitSe
@Update
@Char file=CE03_08M

@Talk name=Motoka voice=MT010105

@Hitret id=7019


@ClearChar
@Char file=CG03_06M

@Talk name=Yahiro voice=YH010475

@Hitret id=7020


@PlaySe file=se104
@Update
@action id=やひろ action=ActionAdvHop height=0 cycle=100 count=5 width=10
@WaitAction id=やひろ
@Talk name=Yahiro voice=YH010476

@Hitret id=7021


@ClearChar
@Update time=0
@Update
@MoveCamera x=-70 y=30 z=128 time=250
@PlaySe file=se104

@Talk name=Yahiro voice=YH010477

@Hitret id=7022


@BlackOut

@Font face=18
@Talk name=Haruka

@Hitret id=7023

@Font face=18
@Talk name=Sora voice=SR010008

@Hitret id=7024

@Font face=18
@Talk name=Haruka

@Hitret id=7025


@PlaySe file=se107
@Cg file=B01c
@Char file=CA02_06M
@Char file=CG03_02M
@Update transition=universal rule=WIP_RL time=250
@WaitUpdate

@Talk name=Yahiro voice=YH010478

@Hitret id=7026

@Talk name=Sora voice=SR010009

@HitWait id=7027
@Talk name=Haruka

@Hitret id=7028


@Char file=CE03_04M

@Talk name=Motoka voice=MT010106

@HitWait id=7029

@action id=カメラ action=ActionWave width=0, height=20, count=2 cycle=50
@WaitAction id=カメラ

@Talk name=Haruka

@Hitret id=7030


@ClearChar id=穹
@Char file=CG03_01M
@Char file=CE03_01M

@Talk name=Yahiro voice=YH010479

@Hitret id=7031

@Talk name=Motoka voice=MT010107

@Hitret id=7032

@Talk name=心の声

@Hitret id=7033

@Talk name=Haruka

@Hitret id=7034


@Char file=CG03_03M
@Char file=CE03_04M

@Talk name=Yahiro voice=YH010480

@Hitret id=7035

@Talk name=Motoka voice=MT010108

@Hitret id=7036


@Char file=CG03_10M
@Char file=CE03_05M

@Talk name=Yahiro　and　Motoka voice=SYN000003

@Hitret id=7037

@Talk name=Haruka

@Hitret id=7038

@Talk name=Haruka

@Hitret id=7039


@Char file=CG03_02M
@Char file=CE03_09M

@Talk name=Yahiro voice=YH010482

@Hitret id=7040

@Talk name=心の声

@Hitret id=7041

@Talk name=心の声

@Hitret id=7042

@Talk name=心の声

@Hitret id=7043

@Talk name=Yahiro voice=YH010483

@Hitret id=7044

@Talk name=Haruka

@Hitret id=7045


@Char file=CG03_06M

@Talk name=Yahiro voice=YH010484

@Hitret id=7046


@Char file=CE03_12M

@Talk name=Motoka voice=MT010110

@Hitret id=7047


@Char file=CG03_01M

@Talk name=Yahiro voice=YH010485

@Hitret id=7048


@Char file=CE03_10M

@Talk name=Motoka voice=MT010111

@Hitret id=7049

@Talk name=Haruka

@Hitret id=7050

@Talk name=Haruka

@Hitret id=7051


@Talk name=Sora voice=SR010010

@Hitret id=7052


@Char file=CG03_07M

@Talk name=Yahiro voice=YH010486

@Hitret id=7053

@Talk name=Haruka

@Hitret id=7054


@Char file=CG03_09M

@Talk name=Yahiro voice=YH010487

@Hitret id=7055


@ClearChar

@Talk name=心の声

@Hitret id=7056

@Talk name=心の声

@Hitret id=7057


@Char file=CG03_02M

@Talk name=Yahiro voice=YH010488

@Hitret id=7058

@Talk name=心の声

@Hitret id=7059

@Talk name=Haruka

@Hitret id=7060


@Char file=CE03_04M

@Talk name=Motoka voice=MT010112

@Hitret id=7061


@Char file=CG03_08M

@Talk name=Yahiro voice=YH010489

@Hitret id=7062


@StopBgm fade=0
@Cg file=B32c
@Char file=CE03_04M
@Update transition=universal rule=WIP_RL
@WaitUpdate

@Talk name=Motoka voice=MT010113

@HitWait id=7063

@PlaySe file=se018
@Leave id=初佳 mx=-240 my=600 fade=1 time=500 accel=1

@Talk name=心の声

@Hitret id=7064

@Talk name=心の声

@Hitret id=7065


@PlayBgm file=BGM09
@Char file=CG03_01M

@Talk name=Haruka

@Hitret id=7066

@Talk name=Yahiro voice=YH010490

@Hitret id=7067

@Talk name=心の声

@Hitret id=7068

@Talk name=心の声

@Hitret id=7069


@Char file=CG03_02M

@Talk name=心の声

@Hitret id=7070

@Talk name=Haruka

@Hitret id=7071

@Talk name=Haruka

@Hitret id=7072


@Char file=CG03_01M

@Talk name=Yahiro voice=YH010491

@Hitret id=7073

@Talk name=Haruka

@Hitret id=7074

@Talk name=Haruka

@Hitret id=7075

@Talk name=Yahiro voice=YH010492

@Hitret id=7076

@Talk name=Haruka

@Hitret id=7077


@Char file=CG03_09M

@Talk name=Yahiro voice=YH010493

@Hitret id=7078

@Talk name=Haruka

@Hitret id=7079

@Talk name=Yahiro voice=YH010494

@Hitret id=7080

@Talk name=Haruka

@Hitret id=7081


@ClearChar

@Talk name=心の声

@Hitret id=7082

@Talk name=心の声

@Hitret id=7083

@Talk name=心の声

@Hitret id=7084

@Talk name=心の声

@Hitret id=7085

@Talk name=Yahiro voice=YH010495

@Hitret id=7086

@Talk name=心の声

@Hitret id=7087

@Talk name=Haruka

@Hitret id=7088

@Talk name=心の声

@Hitret id=7089

@Talk name=Haruka

@Hitret id=7090

@Talk name=心の声

@Hitret id=7091


@Char file=CG03_11M

@Talk name=Yahiro voice=YH010496

@Hitret id=7092


@Char file=CG03_09M

@Talk name=Yahiro voice=YH010497

@Hitret id=7093

@Talk name=Yahiro voice=YH010498

@Hitret id=7094

@Talk name=Yahiro voice=YH010499

@Hitret id=7095

@Talk name=心の声

@Hitret id=7096

@Talk name=心の声

@Hitret id=7097


@Char file=CG03_02M

@Talk name=Yahiro voice=YH010500

@Hitret id=7098

@Talk name=心の声

@Hitret id=7099

@Talk name=Haruka

@Hitret id=7100


@Char file=CG03_01M

@Talk name=Yahiro voice=YH010501

@Hitret id=7101

@Talk name=Haruka

@Hitret id=7102

@Talk name=Yahiro voice=YH010502

@Hitret id=7103


@Char file=CG03_07M

@Talk name=Yahiro voice=YH010503

@Hitret id=7104

@Talk name=Yahiro voice=YH010504

@Hitret id=7105

@Talk name=Yahiro voice=YH010505

@Hitret id=7106

@Talk name=心の声

@Hitret id=7107

@Talk name=心の声

@Hitret id=7108

@Talk name=Yahiro voice=YH010506

@Hitret id=7109

@Talk name=心の声

@Hitret id=7110

@Talk name=Haruka

@Hitret id=7111


@Char file=CG03_01M

@Talk name=Yahiro voice=YH010507

@Hitret id=7112

@Talk name=Haruka

@Hitret id=7113

@Talk name=心の声

@Hitret id=7114


@Char file=CG03_06M

@Talk name=Yahiro voice=YH010508

@Hitret id=7115

@Talk name=Haruka

@Hitret id=7116

@Talk name=Yahiro voice=YH010509

@Hitret id=7117


@StopBgm fade=0

@Font face=32
@Talk name=Haruka

@Hitret id=7118


@Char file=CG03_10M
@Update
@action id=やひろ action=ActionAdvJump cycle=300 count=1 height=-10
@WaitAction id=やひろ

@Talk name=Yahiro voice=YH010510

@Hitret id=7119

@Talk name=心の声

@Hitret id=7120


@PlayBgm file=BGM08

@Talk name=Haruka

@Hitret id=7121

@Talk name=Haruka

@Hitret id=7122

@Talk name=Haruka

@Hitret id=7123


@Char file=CG03_07M

@Talk name=Yahiro voice=YH010511

@Hitret id=7124

@Talk name=心の声

@Hitret id=7125

@Talk name=Haruka

@Hitret id=7126

@Talk name=Haruka

@Hitret id=7127

@Talk name=Haruka

@Hitret id=7128

@Talk name=Haruka

@Hitret id=7129

@Talk name=Yahiro voice=YH010512

@Hitret id=7130

@Talk name=心の声

@Hitret id=7131

@Talk name=心の声

@Hitret id=7132


@Char file=CG03_11M

@Talk name=心の声

@Hitret id=7133


@Char file=CG03_06M

@Talk name=Yahiro voice=YH010513

@Hitret id=7134

@Talk name=Yahiro voice=YH010514

@Hitret id=7135

@Talk name=心の声

@Hitret id=7136

@Talk name=Haruka

@Hitret id=7137

@Talk name=Haruka

@Hitret id=7138


@Char file=CG03_11M

@Talk name=Yahiro voice=YH010515

@Hitret id=7139

@Talk name=心の声

@Hitret id=7140

@Talk name=心の声

@Hitret id=7141

@Talk name=心の声

@Hitret id=7142

@Talk name=心の声

@Hitret id=7143

@Talk name=心の声

@Hitret id=7144

@Talk name=心の声

@Hitret id=7145

@Talk name=心の声

@Hitret id=7146

@Talk name=心の声

@Hitret id=7147

@Talk name=心の声

@Hitret id=7148


@Char file=CG03_07M

@Talk name=Yahiro voice=YH010516

@Hitret id=7149

@Talk name=心の声

@Hitret id=7150


@PlaySe file=se018
@Cg file=B28d
@Update transition=universal rule=WIP_BT time=250
@WaitUpdate

@Talk name=Haruka

@Hitret id=7151

@Talk name=心の声

@Hitret id=7152

@Talk name=Yahiro voice=YH010517

@Hitret id=7153

@Talk name=心の声

@Hitret id=7154

@Talk name=心の声

@Hitret id=7155


@Cg file=BLACK
@Update transition=universal rule=WIP_MOZV time=500
@WaitUpdate

@Talk name=Haruka

@Hitret id=7156

@Talk name=心の声

@Hitret id=7157

@Talk name=Haruka

@Hitret id=7158


@Talk name=Sora voice=SR010011

@Hitret id=7159

@Talk name=Haruka

@Hitret id=7160


@Talk name=Sora voice=SR010012

@Hitret id=7161

@Talk name=Haruka

@Hitret id=7162


@Talk name=Sora voice=SR010013

@Hitret id=7163

@Talk name=心の声

@Hitret id=7164




@EyeCatch type=DATE
@Change target=00_g014


