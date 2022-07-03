


@PlaySe file=SE357
@Cg file=B01a   
@Update transition=universal rule=WIP_LR time=500
@WaitUpdate
@Update
@Wait time=1500 

@Hide
@BlackOut time=1000
@Cg file=B02a   
@Char file=CA01_01M 
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate
@PlayEnvSe file=SE155 fade=0

@Talk name=Sora voice=SR020243

@Hitret id=25573

@Talk name=Haruka

@Hitret id=25574

@Talk name=Sora voice=SR020244

@Hitret id=25575

@Talk name=Haruka

@Hitret id=25576

@Talk name=心の声

@Hitret id=25577


@PlayBgm file=BGM03
@ClearChar 
@StopEnvSe id=SE155 fade=0

@Talk name=Haruka

@Hitret id=25578

@Talk name=Post_Office_Clerk voice=NP460001

@Hitret id=25579

@Talk name=Haruka

@Hitret id=25580

@Talk name=Post_Office_Clerk voice=NP460002

@Hitret id=25581

@Talk name=Haruka

@Hitret id=25582

@Talk name=Post_Office_Clerk voice=NP460003

@Hitret id=25583

@Talk name=Haruka

@Hitret id=25584


@PlaySe file=SE154
@Char file=CA01_01M 

@Talk name=Sora voice=SR020245

@Hitret id=25585

@Talk name=Haruka

@Hitret id=25586

@Talk name=Sora voice=SR020246

@Hitret id=25587

@Talk name=Haruka

@Hitret id=25588


@Char file=CA01_04M 

@Talk name=Sora voice=SR020247

@Hitret id=25589

@Talk name=Haruka

@Hitret id=25590


@Char file=CA01_06M 

@Talk name=Sora voice=SR020248

@Hitret id=25591

@Talk name=Haruka

@Hitret id=25592


@ClearChar 

@Talk name=心の声

@Hitret id=25593

@Talk name=心の声

@Hitret id=25594

@Talk name=Haruka

@Hitret id=25595


@Char file=CA01_06M 

@Talk name=Sora voice=SR020249

@Hitret id=25596

@Talk name=Haruka

@Hitret id=25597

@Talk name=Sora voice=SR020250

@Hitret id=25598

@Talk name=Haruka

@Hitret id=25599


@ClearChar 

@Talk name=心の声

@Hitret id=25600

@Talk name=心の声

@Hitret id=25601

@Talk name=心の声

@Hitret id=25602

@Talk name=心の声

@Hitret id=25603


@Char file=CA01_01M 

@Talk name=Sora voice=SR020251

@Hitret id=25604

@Talk name=Haruka

@Hitret id=25605

@Talk name=心の声

@Hitret id=25606

@Talk name=心の声

@Hitret id=25607


@Char file=CA01_04M 

@Talk name=Sora voice=SR020252

@Hitret id=25608


@StopBgm

@Talk name=Haruka

@Hitret id=25609

@Talk name=心の声

@Hitret id=25610

@Talk name=心の声

@Hitret id=25611



@Hide
@BlackOut time=1000
@Wait time=1000 
@Cg file=B12a   
@Char file=CB01_01M 
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate
@PlayBgm file=BGM05

@Talk name=Nao voice=NO020159

@Hitret id=25612

@Talk name=Haruka

@Hitret id=25613

@Talk name=Nao voice=NO020160

@Hitret id=25614

@Talk name=Haruka

@Hitret id=25615


@Char file=CF01_02M 

@Talk name=Ryouhei voice=RH020497

@Hitret id=25616


@Char file=CA01_04M 

@Talk name=Sora voice=SR020253

@Hitret id=25617

@Talk name=Ryouhei voice=RH020498

@Hitret id=25618

@Talk name=Haruka

@Hitret id=25619

@Talk name=心の声

@Hitret id=25620

@Talk name=心の声

@Hitret id=25621


@Char file=CB01_06M 

@Talk name=Nao voice=NO020161

@Hitret id=25622


@Char file=CF01_09M 

@Talk name=Ryouhei voice=RH020499

@Hitret id=25623

@Talk name=Haruka

@Hitret id=25624


@ClearChar 
@Char file=CC01_02M 
@Update
@action id=瑛 action=ActionAdvJump height=30 cycle=300 count=1
@WaitAction id=瑛

@Talk name=Akira voice=AK021894

@Hitret id=25625


@Char file=CD01_02M 

@Talk name=Kazuha voice=KA020564

@Hitret id=25626

@Talk name=Haruka

@Hitret id=25627

@Talk name=Akira voice=AK021895

@Hitret id=25628


@ClearChar id=一葉
@Char file=CA01_13M x=200   
@Char file=CC01_03M x=0   

@Talk name=Sora voice=SR020254

@Hitret id=25629


@Char file=CC01_14M 

@Talk name=Akira voice=AK021896

@Hitret id=25630


@Char file=CA01_12M 
@Update
@action id=穹 action=ActionAdvHop width=35 height=2 cycle=150 count=2
@WaitAction id=穹

@Talk name=Sora voice=SR020255

@Hitret id=25631

@Talk name=心の声

@Hitret id=25632


@StopBgm fade=0
@Char file=CF01_04M x=-300  

@Talk name=Ryouhei voice=RH020500

@Hitret id=25633


@PlayBgm file=BGM13

@Talk name=Akira voice=AK021897

@Hitret id=25634


@Char file=CA01_13M 
@Update
@action id=穹 action=ActionAdvJump height=30 cycle=300 count=1
@WaitAction id=穹

@Talk name=Sora voice=SR020256

@Hitret id=25635


@Char file=CF01_05M 

@Talk name=Ryouhei voice=RH020501

@Hitret id=25636


@PlaySe file=se003
@Flash color=RED enter=0 leave=1000
@ClearChar id=亮平

@Talk name=Ryouhei voice=RH020502

@Hitret id=25637


@PlaySe file=se018
@ClearChar 
@Char file=CB01_08M 
@Char file=CD01_05M 

@Talk name=Nao voice=NO020162

@Hitret id=25638

@Talk name=Kazuha voice=KA020565

@Hitret id=25639


@Char file=CF01_10M 

@Talk name=Ryouhei voice=RH020503

@Hitret id=25640

@Talk name=Nao voice=NO020163

@Hitret id=25641


@Char file=CD01_06M 

@Talk name=Kazuha voice=KA020566

@Hitret id=25642


@ClearChar 
@Char file=CC01_02M 

@Talk name=Akira voice=AK021898

@Hitret id=25643


@Char file=CD01_10M 

@Talk name=Kazuha voice=KA020567

@Hitret id=25644

@Talk name=Haruka

@Hitret id=25645


@Char file=CA01_11M 

@Talk name=Sora voice=SR020257

@Hitret id=25646


@Char file=CC01_05M 

@Talk name=Akira voice=AK021899

@Hitret id=25647


@Char file=CD01_04M 

@Talk name=Kazuha voice=KA020568

@Hitret id=25648


@ClearChar 
@Char file=CB01_01M 

@Talk name=Nao voice=NO020164

@Hitret id=25649


@ClearChar 
@Char file=CF01_03M 

@Talk name=Ryouhei voice=RH020504

@Hitret id=25650


@StopBgm
@Char file=CF01_06M 

@Talk name=Ryouhei voice=RH020505

@Hitret id=25651


@ClearChar 

@Talk name=Haruka

@Hitret id=25652


@Char file=CD01_01M 

@Talk name=Kazuha voice=KA020569

@Hitret id=25653

@Talk name=Haruka

@Hitret id=25654


@Char file=CD01_08M 

@Talk name=Kazuha voice=KA020570

@Hitret id=25655

@Talk name=Haruka

@Hitret id=25656

@Talk name=Kazuha voice=KA020571

@Hitret id=25657

@Talk name=心の声

@Hitret id=25658

@Talk name=心の声

@Hitret id=25659


@ClearChar 
@Char file=CA01_01M 

@Talk name=Sora voice=SR020258

@Hitret id=25660


@ClearChar
@Update

@Cg file=B17a   
@EyeCatch  
@Update
@Wait time=1500 

@Hide
@BlackOut time=1000
@Cg file=B19a   
@Char file=CF01_01M 
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate
@PlayBgm file=BGM06
@PlaySe file=SE403

@Talk name=Ryouhei voice=RH020506

@Hitret id=25661

@Talk name=Haruka

@Hitret id=25662


@Char file=CF01_04M 

@Talk name=Ryouhei voice=RH020507

@Hitret id=25663

@Talk name=Haruka

@Hitret id=25664


@StopSe
@Char file=CH01_01M 

@Talk name=Class_Rep voice=KO020024

@Hitret id=25665


@Char file=CF01_09M 

@Talk name=Ryouhei voice=RH020508

@Hitret id=25666

@Talk name=Haruka

@Hitret id=25667


@Char file=CH01_04M 

@Talk name=Class_Rep voice=KO020025

@Hitret id=25668


@Char file=CF01_06M 
@Update
@action id=亮平 action=ActionAdvHop width=4 height=0 cycle=100 count=5
@WaitAction id=亮平

@Talk name=Ryouhei voice=RH020509

@Hitret id=25669

@Talk name=Haruka

@Hitret id=25670


@Char file=CF01_10M 

@Talk name=Ryouhei voice=RH020510

@Hitret id=25671


@Char file=CH01_02M 

@Talk name=Class_Rep voice=KO020026

@Hitret id=25672


@Char file=CF01_02M 
@Char file=CH01_01M 

@Talk name=Ryouhei voice=RH020511

@Hitret id=25673

@Talk name=Haruka

@Hitret id=25674


@Char file=CF01_04M 

@Talk name=Ryouhei voice=RH020512

@Hitret id=25675

@Talk name=Haruka

@Hitret id=25676


@Char file=CH01_10M 

@Talk name=Class_Rep voice=KO020027

@Hitret id=25677


@StopBgm
@Char file=CF01_10M 
@Char file=CH01_01M 

@Talk name=Ryouhei voice=RH020513

@Hitret id=25678


@ClearChar 

@Talk name=Haruka

@Hitret id=25679


@Char file=CF01_01M 

@Talk name=Ryouhei voice=RH020514

@Hitret id=25680

@Talk name=Haruka

@Hitret id=25681


@Char file=CF01_05M 

@Talk name=Ryouhei voice=RH020515

@Hitret id=25682


@Char file=CH01_07M 

@Talk name=Class_Rep voice=KO020028

@Hitret id=25683


@Char file=CF01_04M 

@Talk name=Ryouhei voice=RH020516

@Hitret id=25684


@Char file=CH01_05M 
@Update
@action id=梢 action=ActionAdvJump height=30 cycle=300 count=1
@WaitAction id=梢

@Talk name=Class_Rep voice=KO020029

@Hitret id=25685


@ClearChar 

@Talk name=Haruka

@Hitret id=25686

@Talk name=心の声

@Hitret id=25687


@PlayBgm file=BGM08

@Talk name=Haruka

@Hitret id=25688

@Talk name=心の声

@Hitret id=25689

@Talk name=心の声

@Hitret id=25690

@Talk name=心の声

@Hitret id=25691

@Talk name=心の声

@Hitret id=25692

@Talk name=心の声

@Hitret id=25693


@Char file=CD01_01M 

@Talk name=Kazuha voice=KA020572

@Hitret id=25694

@Talk name=Haruka

@Hitret id=25695

@Talk name=Kazuha voice=KA020573

@Hitret id=25696

@Talk name=Haruka

@Hitret id=25697


@Char file=CD01_08M 

@Talk name=Kazuha voice=KA020574

@Hitret id=25698

@Talk name=Haruka

@Hitret id=25699


@Char file=CD01_01M 

@Talk name=Kazuha voice=KA020575

@Hitret id=25700

@Talk name=Haruka

@Hitret id=25701

@Talk name=Kazuha voice=KA020576

@Hitret id=25702

@Talk name=Haruka

@Hitret id=25703


@Char file=CD01_08M 

@Talk name=Kazuha voice=KA020577

@Hitret id=25704

@Talk name=Haruka

@Hitret id=25705


@Char file=CD01_01M 

@Talk name=Kazuha voice=KA020578

@Hitret id=25706


@Cg file=B18a   
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate

@Talk name=Haruka

@Hitret id=25707


@Char file=CD01_01M 

@Talk name=Kazuha voice=KA020579

@Hitret id=25708

@Talk name=Haruka

@Hitret id=25709

@Talk name=心の声

@Hitret id=25710

@Talk name=心の声

@Hitret id=25711

@Talk name=Haruka

@Hitret id=25712


@Cg file=B20a   
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate


@Talk name=Nao voice=NO020165

@Hitret id=25713


@Char file=CB01_01M 

@Talk name=Haruka

@Hitret id=25714

@Talk name=Nao voice=NO020166

@Hitret id=25715


@Char file=CB01_02M 

@Talk name=Nao voice=NO020167

@Hitret id=25716

@Talk name=Haruka

@Hitret id=25717

@Talk name=Nao voice=NO020168

@Hitret id=25718


@Char file=CD01_12M 

@Talk name=Kazuha voice=KA020580

@Hitret id=25719

@Talk name=Nao voice=NO020169

@Hitret id=25720

@Talk name=Haruka

@Hitret id=25721


@Char file=CD01_01M 
@Char file=CB01_03M 

@Talk name=Nao voice=NO020170

@Hitret id=25722

@Talk name=Haruka

@Hitret id=25723


@Char file=CB01_01M 

@Talk name=Nao voice=NO020171

@Hitret id=25724

@Talk name=Haruka

@Hitret id=25725

@Talk name=Nao voice=NO020172

@Hitret id=25726

@Talk name=Haruka

@Hitret id=25727


@Char file=CB01_03M 

@Talk name=Nao voice=NO020173

@Hitret id=25728


@Char file=CD01_02M 

@Talk name=Kazuha voice=KA020581

@Hitret id=25729


@ClearChar 

@Talk name=心の声

@Hitret id=25730

@Talk name=心の声

@Hitret id=25731

@Talk name=心の声

@Hitret id=25732

@Talk name=心の声

@Hitret id=25733

@Talk name=心の声

@Hitret id=25734

@Talk name=心の声

@Hitret id=25735

@Talk name=心の声

@Hitret id=25736

@Talk name=Haruka

@Hitret id=25737



@Hide
@BlackOut time=1000
@Wait time=1000 
@Cg file=B12a   
@Char file=CD01_08M 
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate

@Talk name=Kazuha voice=KA020582

@Hitret id=25738

@Talk name=Haruka

@Hitret id=25739


@Char file=CD01_01M 

@Talk name=Kazuha voice=KA020583

@Hitret id=25740

@Talk name=Haruka

@Hitret id=25741


@Char file=CD01_08M 

@Talk name=Kazuha voice=KA020584

@Hitret id=25742

@Talk name=Haruka

@Hitret id=25743


@Char file=CD01_01M 

@Talk name=Kazuha voice=KA020585

@Hitret id=25744

@Talk name=Haruka

@Hitret id=25745

@Talk name=心の声

@Hitret id=25746


@Char file=CD01_08M 

@Talk name=Kazuha voice=KA020586

@Hitret id=25747

@Talk name=Haruka

@Hitret id=25748


@StopBgm
@ClearChar 

@Talk name=心の声

@Hitret id=25749

@Talk name=Haruka

@Hitret id=25750

@Talk name=心の声

@Hitret id=25751

@Talk name=Haruka

@Hitret id=25752


@PlaySe file=SE258

@Talk name=心の声

@Hitret id=25753

@Talk name=Haruka

@Hitret id=25754

@Talk name=Post_Office_Clerk voice=NP460004

@Hitret id=25755

@Talk name=Haruka

@Hitret id=25756

@Talk name=Post_Office_Clerk voice=NP460005

@Hitret id=25757


@Char file=CD01_01M 

@Talk name=Kazuha voice=KA020587

@Hitret id=25758

@Talk name=Haruka

@Hitret id=25759

@Talk name=Kazuha voice=KA020588

@Hitret id=25760



@Hide
@BlackOut time=1000
@Wait time=1500 
@Cg file=B01a   
@Update transition=universal rule=WIP_MOZV time=500
@WaitUpdate
@PlaySe file=SE105

@Talk name=Haruka

@Hitret id=25761

@Talk name=心の声

@Hitret id=25762

@Talk name=Haruka

@Hitret id=25763

@Talk name=心の声

@Hitret id=25764

@Talk name=Haruka

@Hitret id=25765


@Char file=CD01_08M 

@Talk name=Kazuha voice=KA020589

@Hitret id=25766


@ClearChar 

@Talk name=Haruka

@Hitret id=25767

@Talk name=心の声

@Hitret id=25768


@Cg file=B02a   
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate

@Talk name=Haruka

@Hitret id=25769

@Talk name=心の声

@Hitret id=25770

@Talk name=心の声

@Hitret id=25771

@Talk name=Haruka

@Hitret id=25772


@Cg file=B03a   
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate

@Talk name=Haruka

@Hitret id=25773

@Talk name=心の声

@Hitret id=25774


@Cg file=B32a   
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate

@Talk name=Haruka

@Hitret id=25775

@Talk name=心の声

@Hitret id=25776


@BlackOut

@Talk name=心の声

@Hitret id=25777

@Talk name=心の声

@Hitret id=25778

@Talk name=心の声

@Hitret id=25779

@Talk name=心の声

@Hitret id=25780

@Talk name=Haruka

@Hitret id=25781


@PlaySe file=se101

@Talk name=Haruka

@Hitret id=25782


@Cg file=B04a   
@Update transition=universal rule=WIP_LR time=500
@WaitUpdate
@PlaySe file=se100

@Talk name=Haruka

@Hitret id=25783

@Talk name=心の声

@Hitret id=25784

@Talk name=Haruka

@Hitret id=25785

@Talk name=Kazuha voice=KA020590

@Hitret id=25786


@Cg file=B01a   
@Char file=CD01_07M 
@Update transition=universal rule=WIP_MOZV time=500
@WaitUpdate
@PlayBgm file=BGM11

@Talk name=Kazuha voice=KA020591

@Hitret id=25787

@Talk name=Haruka

@Hitret id=25788

@Talk name=Kazuha voice=KA020592

@Hitret id=25789

@Talk name=Haruka

@Hitret id=25790


@Char file=CD01_12M 

@Talk name=Kazuha voice=KA020593

@Hitret id=25791



@Talk name=Haruka

@Hitret id=25792


@Char file=CD01_01M 

@Talk name=Kazuha voice=KA020594

@Hitret id=25793

@Talk name=Haruka

@Hitret id=25794


@Char file=CD01_07M 

@Talk name=Kazuha voice=KA020595

@Hitret id=25795

@Talk name=Haruka

@Hitret id=25796



@Hide
@BlackOut time=1000
@Wait time=2000 

@Change target=00_c033b


