


@PlaySe file=SE352
@Cg file=B17a   
@Update time=2000
@WaitUpdate
@Update
@Wait time=1000 

@Hide
@BlackOut time=1000
@Cg file=B20a center=400,300
@Char file=CF01_01M 
@PlayBgm file=BGM05

@Talk name=���� voice=RH030123

@Hitret id=11906

@Talk name=�I

@Hitret id=11907


@Char file=CF01_02M 

@Talk name=���� voice=RH030124

@Hitret id=11908

@Talk name=�I

@Hitret id=11909

@Talk name=�S�̐�

@Hitret id=11910

@Talk name=�S�̐�

@Hitret id=11911

@Talk name=�S�̐�

@Hitret id=11912


@Char file=CF01_01M 

@Talk name=���� voice=RH030125

@Hitret id=11913

@Talk name=�I

@Hitret id=11914

@Talk name=���� voice=RH030126

@Hitret id=11915

@Talk name=�I

@Hitret id=11916

@Talk name=���� voice=RH030127

@Hitret id=11917

@Talk name=�I

@Hitret id=11918


@Char file=CB01_01M 

@Talk name=�ޏ� voice=NO030311

@Hitret id=11919

@Talk name=�I

@Hitret id=11920


@Char file=CB01_08M 

@Talk name=�ޏ� voice=NO030312

@Hitret id=11921


@Char file=CF01_09M 

@Talk name=���� voice=RH030128

@Hitret id=11922


@Char file=CB01_03M 

@Talk name=�ޏ� voice=NO030313

@Hitret id=11923

@Talk name=���� voice=RH030129

@Hitret id=11924


@Char file=CB01_01M 

@Talk name=�ޏ� voice=NO030314

@Hitret id=11925

@Talk name=�I

@Hitret id=11926

@Talk name=�ޏ� voice=NO030315

@Hitret id=11927


@Char file=CF01_01M 

@Talk name=���� voice=RH030130

@Hitret id=11928

@Talk name=�ޏ� voice=NO030316

@Hitret id=11929


@Char file=CF01_02M 

@Talk name=���� voice=RH030131

@Hitret id=11930

@Talk name=�I

@Hitret id=11931


@Char file=CF01_01M 
@Char file=CB01_02M 

@Talk name=�ޏ� voice=NO030317

@Hitret id=11932

@Talk name=�I

@Hitret id=11933

@Talk name=�ޏ� voice=NO030318

@Hitret id=11934

@Talk name=�I

@Hitret id=11935


@Char file=CB01_13M 

@Talk name=�ޏ� voice=NO030319

@Hitret id=11936

@Talk name=�I

@Hitret id=11937


@Char file=CB01_11M 

@Talk name=�ޏ� voice=NO030320

@Hitret id=11938

@Talk name=�I

@Hitret id=11939


@Char file=CB01_01M 

@Talk name=�ޏ� voice=NO030321

@Hitret id=11940

@Talk name=�I

@Hitret id=11941


@Char file=CB01_02M 

@Talk name=�ޏ� voice=NO030322

@Hitret id=11942

@Talk name=�I

@Hitret id=11943


@Char file=CB01_01M 

@Talk name=�ޏ� voice=NO030323

@Hitret id=11944


@Char file=CF01_04M 

@Talk name=���� voice=RH030132

@Hitret id=11945


@Char file=CB01_03M 

@Talk name=�ޏ� voice=NO030324

@Hitret id=11946


@ClearChar id=�ޏ�
@Char file=CF01_06M 

@Talk name=���� voice=RH030133

@Hitret id=11947

@Talk name=�I

@Hitret id=11948


@Char file=CF01_04M 

@Talk name=���� voice=RH030134

@Hitret id=11949

@Talk name=�I

@Hitret id=11950


@Char file=CF01_06M 
@Update
@action id=���� action=ActionAdvJump height=30 cycle=300 count=1
@WaitAction id=����

@Talk name=���� voice=RH030135

@Hitret id=11951

@Talk name=�I

@Hitret id=11952


@Char file=CF01_09M 

@Talk name=���� voice=RH030136

@Hitret id=11953

@Talk name=�I

@Hitret id=11954


@ClearChar 
@Char file=CA01_04M 

@Talk name=�u voice=SR030051

@Hitret id=11955

@Talk name=�S�̐�

@Hitret id=11956


@Char file=CF01_02M 

@Talk name=���� voice=RH030137

@Hitret id=11957


@ClearChar id=�u
@Char file=CF01_06M 

@Talk name=���� voice=RH030138

@Hitret id=11958


@ClearChar id=����

@Talk name=�S�̐�

@Hitret id=11959

@Talk name=�S�̐�

@Hitret id=11960

@Talk name=�S�̐�

@Hitret id=11961


@Update
@MoveCamera x=200 y=0 time=500 accel=0
@WaitCamera
@Cg file=B20a center=600,300
@Char file=CA01_09M 
@Char file=CF01_02M 

@Talk name=���� voice=RH030139

@Hitret id=11962

@Talk name=�u voice=SR030052

@Hitret id=11963

@Talk name=���� voice=RH030140

@Hitret id=11964


@Char file=CA01_04M 

@Talk name=�u voice=SR030053

@Hitret id=11965


@Char file=CF01_03M 

@Talk name=���� voice=RH030141

@Hitret id=11966


@Char file=CF01_02M 

@Talk name=���� voice=RH030142

@Hitret id=11967


@Char file=CA01_06M 

@Talk name=�u voice=SR030054

@Hitret id=11968


@StopBgm fade=0
@Char file=CF01_04M x=0   
@Char file=CA01_06M x=200   

@Talk name=���� voice=RH030143

@Hitret id=11969


@Char file=CA01_13M 
@Update
@action id=�u action=ActionAdvHop width=4 height=0 cycle=100 count=5
@WaitAction id=�u

@Talk name=�u voice=SR030055

@Hitret id=11970


@Update
@Move id=���� my=30 cycle=1000
@WaitAction id=����

@Talk name=���� voice=RH030144

@Hitret id=11971

@Talk name=�S�̐�

@Hitret id=11972


@Char file=CA01_13M 
@Update
@action id=�u action=ActionAdvJump height=30 cycle=300 count=1
@WaitAction id=�u

@Talk name=�u voice=SR030056

@Hitret id=11973


@Cg file=BLACK
@PlaySe file=se007
@Update time=0
@Flash color=RED enter=0 leave=1000
@PlayBgm file=BGM14

@Talk name=���� voice=RH030145

@Hitret id=11974


@Flash color=RED enter=0 leave=1000

@Talk name=�I

@Hitret id=11975


@PlaySe file=se018
@Cg file=B20a center=600,300
@Char file=CA01_13M 

@Talk name=�u voice=SR030057

@Hitret id=11976


@Leave id=�u mx=300 my=0 fade=1 time=1000 accel=1

@Talk name=�S�̐�

@Hitret id=11977

@Talk name=�I

@Hitret id=11978

@Talk name=�S�̐�

@Hitret id=11979

@Talk name=�I

@Hitret id=11980


@Char file=CF01_03M 

@Talk name=���� voice=RH030146

@Hitret id=11981

@Talk name=�I

@Hitret id=11982


@StopBgm
@EyeCatch type=DATE 

@Change target=00_b007b


