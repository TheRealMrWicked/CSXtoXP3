



@PlayEnvSe file=SE302 fade=0
@Cg file=B07a   
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate
@Update
@Wait time=2000 
@Cg file=B08a   
@Char file=CD02_02M 
@Update transition=universal rule=WIP_LR time=500
@WaitUpdate

@Talk name=Kazuha voice=KA020466

@Hitret id=24384


@Char file=CD02_02M x=200   
@Char file=CC02_11M x=0   

@Talk name=Akira voice=AK021630

@Hitret id=24385

@Talk name=Akira voice=AK021631

@Hitret id=24386

@Talk name=Kazuha voice=KA020467

@Hitret id=24387

@Talk name=Akira voice=AK021632

@Hitret id=24388

@Talk name=Kazuha voice=KA020468

@Hitret id=24389


@Char file=CD02_11M 

@Talk name=Kazuha voice=KA020469

@Hitret id=24390


@StopEnvSe id=SE302 fade=0
@ClearChar 
@Char file=CF03_06L 

@Talk name=Ryouhei voice=RH020459

@Hitret id=24391


@ClearChar 
@Char file=CC02_03M x=0   

@Talk name=Akira voice=AK021633

@Hitret id=24392


@Char file=CC02_03M x=0   
@Char file=CD02_12M x=200   
@Update
@action id=一葉 action=ActionAdvHop width=4 height=0 cycle=100 count=5
@WaitAction id=一葉

@Talk name=Kazuha voice=KA020470

@Hitret id=24393


@PlayBgm file=BGM14
@Char file=CF03_05M x=-300   

@Talk name=Ryouhei voice=RH020460

@Hitret id=24394


@Char file=CC02_02M x=0   

@Talk name=Akira voice=AK021634

@Hitret id=24395


@Char file=CF03_02M x=-300   

@Talk name=Ryouhei voice=RH020461

@Hitret id=24396

@Talk name=Akira voice=AK021635

@Hitret id=24397

@Talk name=Haruka

@Hitret id=24398


@Char file=CC02_06M x=0   

@Talk name=Akira voice=AK021636

@Hitret id=24399


@Char file=CC02_02M x=0   

@Talk name=Haruka

@Hitret id=24400


@Char file=CC02_14M x=0   

@Talk name=Akira voice=AK021637

@Hitret id=24401


@Char file=CF03_08M x=-300   

@Talk name=Ryouhei voice=RH020462

@Hitret id=24402


@Char file=CD02_07M x=200   
@Char file=CC02_14M x=0   

@Talk name=Kazuha voice=KA020471

@Hitret id=24403


@Char file=CF03_04M x=-300   

@Talk name=Ryouhei voice=RH020463

@Hitret id=24404


@Char file=CD02_04M x=200   
@Update
@action id=一葉 action=ActionAdvHop width=4 height=0 cycle=100 count=5
@WaitAction id=一葉

@Talk name=Kazuha voice=KA020472

@Hitret id=24405


@Char file=CF03_03M x=-300   

@Talk name=Ryouhei voice=RH020464

@Hitret id=24406

@Talk name=Ryouhei voice=RH020465

@Hitret id=24407

@Talk name=Haruka

@Hitret id=24408


@Char file=CF03_02M x=-300   

@Talk name=Ryouhei voice=RH020466

@Hitret id=24409


@Char file=CC02_02M x=0   

@Talk name=Akira voice=AK021638

@Hitret id=24410


@Char file=CD02_06M x=200   

@Talk name=Kazuha voice=KA020473

@Hitret id=24411


@Char file=CF03_05M x=-300   

@Talk name=Ryouhei voice=RH020467

@Hitret id=24412


@Char file=CD02_07M x=200   

@Talk name=Kazuha voice=KA020474

@Hitret id=24413

@Talk name=Haruka

@Hitret id=24414


@Char file=CF03_04M x=-300   

@Talk name=Ryouhei voice=RH020468

@Hitret id=24415

@Talk name=Haruka

@Hitret id=24416


@Char file=CF03_05M x=-300   

@Talk name=Ryouhei voice=RH020469

@Hitret id=24417

@Talk name=Haruka

@Hitret id=24418


@Char file=CD02_12M x=200   

@Talk name=Kazuha voice=KA020475

@Hitret id=24419


@Char file=CD02_10M x=300   
@Char file=CC02_12M x=-100   
@Update
@wait time=500
@Move id=瑛 my=640 cycle=500
@Update
@WaitAction id=瑛
@PlaySe file=se018

@Talk name=Akira voice=AK021639

@Hitret id=24420

@Talk name=心の声

@Hitret id=24421


@ClearChar 
@Char file=CF03_02M 

@Talk name=Ryouhei voice=RH020470

@Hitret id=24422


@Char file=CC02_03M 

@Talk name=Akira voice=AK021640

@Hitret id=24423

@Talk name=Haruka

@Hitret id=24424


@StopBgm
@Char file=CC02_02M 

@Talk name=Akira voice=AK021641

@Hitret id=24425


@ClearChar id=瑛
@Char file=CD02_05M 

@Talk name=Kazuha voice=KA020476

@Hitret id=24426


@PlayBgm file=BGM13
@Char file=CF03_03M 

@Talk name=Ryouhei voice=RH020471

@Hitret id=24427


@Char file=CD02_06M 

@Talk name=Kazuha voice=KA020477

@Hitret id=24428


@Char file=CF03_04M 

@Talk name=Ryouhei voice=RH020472

@Hitret id=24429


@Char file=CD02_03M 

@Talk name=Kazuha voice=KA020478

@Hitret id=24430

@Talk name=Haruka

@Hitret id=24431


@Char file=CF03_06M 

@Talk name=Ryouhei voice=RH020473

@Hitret id=24432


@Char file=CF03_04M 

@Talk name=Ryouhei voice=RH020474

@Hitret id=24433


@Char file=CD02_12M 
@Update
@action id=一葉 action=ActionAdvJump height=30 cycle=300 count=1
@WaitAction id=一葉

@Talk name=Kazuha voice=KA020479

@Hitret id=24434

@Talk name=Haruka

@Hitret id=24435


@Char file=CF03_01M 

@Talk name=Ryouhei voice=RH020475

@Hitret id=24436


@Char file=CD02_01M 

@Talk name=Kazuha voice=KA020480

@Hitret id=24437

@Talk name=Haruka

@Hitret id=24438


@Char file=CF03_04M 

@Talk name=Ryouhei voice=RH020476

@Hitret id=24439


@Char file=CD02_04M 

@Talk name=Kazuha voice=KA020481

@Hitret id=24440

@Talk name=Ryouhei voice=RH020477

@Hitret id=24441


@Char file=CD02_07M 

@Talk name=Kazuha voice=KA020482

@Hitret id=24442

@Talk name=Ryouhei voice=RH020478

@Hitret id=24443


@Char file=CD02_04M 

@Talk name=Kazuha voice=KA020483

@Hitret id=24444


@Char file=CF03_09M 
@Update
@action id=亮平 action=ActionAdvJump height=30 cycle=300 count=1
@WaitAction id=亮平
@Font face=36

@Talk name=Ryouhei voice=RH020479

@Hitret id=24445


@StopBgm
@Char file=CC02_02M 

@Talk name=Akira voice=AK021642

@Hitret id=24446

@Talk name=Haruka

@Hitret id=24447


@PlayBgm file=BGM05
@Char file=CF03_01M 

@Talk name=Ryouhei voice=RH020480

@Hitret id=24448

@Talk name=Akira voice=AK021643

@Hitret id=24449


@Char file=CD02_05M 

@Talk name=Kazuha voice=KA020484

@Hitret id=24450


@Char file=CF03_03M 
@Char file=CD02_04M 

@Talk name=Ryouhei voice=RH020481

@Hitret id=24451


@Char file=CC02_14M 

@Talk name=Akira voice=AK021644

@Hitret id=24452


@Char file=CF03_01M 

@Talk name=Ryouhei voice=RH020482

@Hitret id=24453

@Talk name=Akira voice=AK021645

@Hitret id=24454

@Talk name=Ryouhei voice=RH020483

@Hitret id=24455


@Char file=CD02_07M 

@Talk name=Kazuha voice=KA020485

@Hitret id=24456


@Char file=CF03_03M 

@Talk name=Ryouhei voice=RH020484

@Hitret id=24457


@Char file=CD02_06M 

@Talk name=Kazuha voice=KA020486

@Hitret id=24458


@ClearChar 
@Char file=CC02_01M 

@Talk name=Akira voice=AK021646

@Hitret id=24459

@Talk name=Haruka

@Hitret id=24460


@Char file=CF03_05M 

@Talk name=Ryouhei voice=RH020485

@Hitret id=24461

@Talk name=Haruka

@Hitret id=24462


@Char file=CC02_04M 

@Talk name=Akira voice=AK021647

@Hitret id=24463

@Talk name=Haruka

@Hitret id=24464


@Char file=CC02_01M 
@Char file=CD02_04M 

@Talk name=Kazuha voice=KA020487

@Hitret id=24465


@ClearChar id=一葉
@Char file=CC02_01M 

@Talk name=Akira voice=AK021648

@Hitret id=24466

@Talk name=Haruka

@Hitret id=24467


@Char file=CC02_14M 

@Talk name=Akira voice=AK021649

@Hitret id=24468

@Talk name=Haruka

@Hitret id=24469


@Char file=CF03_03M 

@Talk name=Ryouhei voice=RH020486

@Hitret id=24470


@ClearChar 
@StopBgm
@Char file=CD02_04M 

@Talk name=Kazuha voice=KA020488

@Hitret id=24471



@Hide
@BlackOut time=1000
@Wait time=2000 
@Cg file=B34b center=800,300
@Char file=CF03_01M 
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate
@PlayBgm file=BGM07

@Talk name=Ryouhei voice=RH020487

@Hitret id=24472


@Char file=CC02_02M 

@Talk name=Akira voice=AK021650

@Hitret id=24473


@Char file=CD02_04M 

@Talk name=Kazuha voice=KA020489

@Hitret id=24474

@Talk name=Ryouhei voice=RH020488

@Hitret id=24475

@Talk name=Akira voice=AK021651

@Hitret id=24476


@Char file=CD02_07M 

@Talk name=Kazuha voice=KA020490

@Hitret id=24477


@Char file=CC02_04S 

@Talk name=Akira voice=AK021652

@Hitret id=24478


@Char file=CF03_06S 

@Talk name=Ryouhei voice=RH020489

@Hitret id=24479


@ClearChar id=瑛
@ClearChar id=亮平
@Char file=CD02_01M 

@Talk name=Kazuha voice=KA020491

@Hitret id=24480

@Talk name=Haruka

@Hitret id=24481

@Talk name=Kazuha voice=KA020492

@Hitret id=24482

@Talk name=Haruka

@Hitret id=24483

@Talk name=Kazuha voice=KA020493

@Hitret id=24484

@Talk name=Haruka

@Hitret id=24485


@Char file=CD02_04M 

@Talk name=Kazuha voice=KA020494

@Hitret id=24486


@Char file=CD02_08M 

@Talk name=Kazuha voice=KA020495

@Hitret id=24487

@Talk name=Haruka

@Hitret id=24488


@Char file=CD02_01M 

@Talk name=Kazuha voice=KA020496

@Hitret id=24489

@Talk name=Haruka

@Hitret id=24490


@Char file=CD02_10M 

@Talk name=Kazuha voice=KA020497

@Hitret id=24491

@Talk name=Haruka

@Hitret id=24492


@Char file=CD02_04M 

@Talk name=Kazuha voice=KA020498

@Hitret id=24493

@Talk name=Haruka

@Hitret id=24494


@Char file=CD02_02M 

@Talk name=Kazuha voice=KA020499

@Hitret id=24495

@Talk name=Haruka

@Hitret id=24496

@Talk name=Kazuha voice=KA020500

@Hitret id=24497

@Talk name=Haruka

@Hitret id=24498


@Char file=CD02_03M 

@Talk name=Kazuha voice=KA020501

@Hitret id=24499

@Talk name=Haruka

@Hitret id=24500


@Char file=CD02_07M 

@Talk name=Kazuha voice=KA020502

@Hitret id=24501

@Talk name=Haruka

@Hitret id=24502


@Char file=CD02_02M 

@Talk name=Kazuha voice=KA020503

@Hitret id=24503

@Talk name=Haruka

@Hitret id=24504


@ClearChar 

@Talk name=心の声

@Hitret id=24505


@StopBgm

@Talk name=Haruka

@Hitret id=24506

@Talk name=心の声

@Hitret id=24507


@PlayBgm file=BGM16

@Talk name=心の声

@Hitret id=24508

@Talk name=心の声

@Hitret id=24509

@Talk name=心の声

@Hitret id=24510

@Talk name=心の声

@Hitret id=24511

@Talk name=心の声

@Hitret id=24512


@Cg file=Sp12
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate

@Talk name=Akira voice=AK021653

@Hitret id=24513



@Hide
@BlackOut time=1000
@Wait time=1500 
@Cg file=B34b center=800,300
@Update transition=universal rule=WIP_MOZV time=500
@WaitUpdate

@Talk name=心の声

@Hitret id=24514

@Talk name=心の声

@Hitret id=24515

@Talk name=心の声

@Hitret id=24516

@Talk name=心の声

@Hitret id=24517

@Talk name=心の声

@Hitret id=24518

@Talk name=心の声

@Hitret id=24519

@Talk name=心の声

@Hitret id=24520

@Talk name=心の声

@Hitret id=24521

@Talk name=心の声

@Hitret id=24522


@StopBgm
@EyeCatch type=DATE 

@Change target=00_c028


