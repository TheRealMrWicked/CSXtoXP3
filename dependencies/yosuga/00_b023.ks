



@PlayEnvSe file=SE302
@Cg file=B17a   
@Update transition=universal rule=WIP_LR time=500
@WaitUpdate
@Update
@Wait time=1000 
@Cg file=B21a   
@Update
@Wait time=1000 

@Hide
@BlackOut time=1000
@Cg file=EB02a  

@Talk name=Nao voice=NO031353

@Hitret id=15499


@Cg file=EB02b  

@Talk name=Nao voice=NO031354

@Hitret id=15500


@Cg file=EB02a  

@Talk name=Nao voice=NO031355

@Hitret id=15501


@Cg file=B21a   
@Char file=CF01_09M 

@Talk name=Ryouhei voice=RH030337

@Hitret id=15502

@Talk name=Ryouhei voice=RH030338

@Hitret id=15503


@Char file=CB04_05M 

@Talk name=Nao voice=NO031356

@Hitret id=15504


@Char file=CF01_06M 

@Talk name=Ryouhei voice=RH030339

@Hitret id=15505


@Char file=CB04_06M 

@Talk name=Nao voice=NO031357

@Hitret id=15506


@Char file=CF01_01M 

@Talk name=Ryouhei voice=RH030340

@Hitret id=15507


@Char file=CB04_05M 

@Talk name=Nao voice=NO031358

@Hitret id=15508

@Talk name=Ryouhei voice=RH030341

@Hitret id=15509


@Char file=CB04_09M 

@Talk name=Nao voice=NO031359

@Hitret id=15510


@Char file=CF01_08M 

@Talk name=Ryouhei voice=RH030342

@Hitret id=15511

@Talk name=Nao voice=NO031360

@Hitret id=15512


@Char file=CF01_01M 

@Talk name=Ryouhei voice=RH030343

@Hitret id=15513

@Talk name=Nao voice=NO031361

@Hitret id=15514


@Char file=CF01_05M 

@Talk name=Ryouhei voice=RH030344

@Hitret id=15515


@Char file=CB04_06M 

@Talk name=Nao voice=NO031362

@Hitret id=15516

@Talk name=Ryouhei voice=RH030345

@Hitret id=15517

@Talk name=Nao voice=NO031363

@Hitret id=15518


@Char file=CF01_01M 

@Talk name=Ryouhei voice=RH030346

@Hitret id=15519

@Talk name=Ryouhei voice=RH030347

@Hitret id=15520

@Talk name=Nao voice=NO031364

@Hitret id=15521


@Char file=CF01_09M 

@Talk name=Ryouhei voice=RH030348

@Hitret id=15522


@Char file=CF01_01M 
@Update
@Wait time=1000
@Char file=CF04_04M 
@Char file=CB04_13M 
@Update
@action id=奈緒 action=ActionAdvHop width=4 height=0 cycle=100 count=5
@WaitAction id=奈緒

@Talk name=Nao voice=NO031365

@Hitret id=15523


@Char file=CF04_01M 

@Talk name=Ryouhei voice=RH030349

@Hitret id=15524

@Talk name=Nao voice=NO031366

@Hitret id=15525


@Char file=CF04_05M 

@Talk name=Ryouhei voice=RH030350

@Hitret id=15526


@Char file=CB04_06M 

@Talk name=Nao voice=NO031367

@Hitret id=15527


@Char file=CF04_02M 

@Talk name=Ryouhei voice=RH030351

@Hitret id=15528

@Talk name=Nao voice=NO031368

@Hitret id=15529


@Char file=CF04_05M 

@Talk name=Ryouhei voice=RH030352

@Hitret id=15530


@ClearChar 
@Char file=CF04_01S 

@Talk name=Ryouhei voice=RH030353

@Hitret id=15531



@Talk name=Nao voice=NO031369

@Hitret id=15532


@ClearChar id=亮平

@Talk name=Ryouhei voice=RH030354

@Hitret id=15533


@PlaySe file=SE204
@Char file=CB04_06M 

@Talk name=Nao voice=NO031370

@Hitret id=15534

@Talk name=Ryouhei voice=RH030355

@Hitret id=15535


@Char file=CB04_09M 

@Talk name=Nao voice=NO031371

@Hitret id=15536

@Talk name=Nao voice=NO031372

@Hitret id=15537


@ClearChar
@Update

@StopEnvSe id=SE302 fade=0
@Cg file=B12b   
@EyeCatch  
@PlayBgm file=BGM16
@MessageFrame type=1

@Talk name=Nao　Monologue voice=NO031373

@Hitret id=15538

@Talk name=Nao　Monologue voice=NO031374

@Hitret id=15539


@Cg file=B01b   

@Talk name=Nao　Monologue voice=NO031375

@Hitret id=15540

@Talk name=Nao　Monologue voice=NO031376

@Hitret id=15541

@Talk name=Nao　Monologue voice=NO031377

@Hitret id=15542

@Talk name=Nao　Monologue voice=NO031378

@Hitret id=15543

@Talk name=Nao　Monologue voice=NO031379

@Hitret id=15544

@Talk name=Nao　Monologue voice=NO031380

@Hitret id=15545

@Talk name=Nao　Monologue voice=NO031381

@Hitret id=15546

@Talk name=Nao　Monologue voice=NO031382

@Hitret id=15547


@Cg file=B05b   
@Update transition=universal rule=WIP_RL time=500
@WaitUpdate

@Talk name=Nao　Monologue voice=NO031383

@Hitret id=15548

@Talk name=Nao　Monologue voice=NO031384

@Hitret id=15549


@PlaySe file=se100

@Talk name=Nao voice=NO031385

@Hitret id=15550


@BlackOut

@Talk name=Nao　Monologue voice=NO031386

@Hitret id=15551

@Talk name=Nao　Monologue voice=NO031387

@Hitret id=15552

@Talk name=Nao's　Mother voice=NP500013

@Hitret id=15553

@Talk name=Nao　Monologue voice=NO031389

@Hitret id=15554

@Talk name=Nao voice=NO031390

@Hitret id=15555

@Talk name=Nao's　Mother voice=NP500014

@Hitret id=15556

@Talk name=Nao voice=NO031392

@Hitret id=15557

@Talk name=Nao's　Mother voice=NP500015

@Hitret id=15558

@Talk name=Nao voice=NO031394

@Hitret id=15559

@Talk name=Nao's　Mother voice=NP500016

@Hitret id=15560

@Talk name=Nao voice=NO031396

@Hitret id=15561

@Talk name=Nao voice=NO031397

@Hitret id=15562

@Talk name=Nao's　Mother voice=NP500017

@Hitret id=15563

@Talk name=Nao voice=NO031399

@Hitret id=15564

@Talk name=Nao　Monologue voice=NO031400

@Hitret id=15565

@Talk name=Nao　Monologue voice=NO031401

@Hitret id=15566

@Talk name=Nao's　Mother voice=NP500018

@Hitret id=15567

@Talk name=Nao voice=NO031403

@Hitret id=15568

@Talk name=Nao　Monologue voice=NO031404

@Hitret id=15569


@Cg file=B06c   
@Update transition=universal rule=WIP_LR time=500
@WaitUpdate

@Talk name=Nao　Monologue voice=NO031405

@Hitret id=15570

@Talk name=Nao　Monologue voice=NO031406

@Hitret id=15571

@Talk name=Nao　Monologue voice=NO031407

@Hitret id=15572

@Talk name=Nao　Monologue voice=NO031408

@Hitret id=15573

@Talk name=Nao　Monologue voice=NO031409

@Hitret id=15574

@Talk name=Nao　Monologue voice=NO031410

@Hitret id=15575

@Talk name=Nao　Monologue voice=NO031411

@Hitret id=15576


@PlaySe file=se063

@Talk name=Nao voice=NO031412

@Hitret id=15577

@Talk name=Nao　Monologue voice=NO031413

@Hitret id=15578

@Talk name=Nao　Monologue voice=NO031414

@Hitret id=15579

@Talk name=Nao voice=NO031415

@Hitret id=15580

@Talk name=Nao　Monologue voice=NO031416

@Hitret id=15581

@Talk name=Nao　Monologue voice=NO031417

@Hitret id=15582

@Talk name=Nao　Monologue voice=NO031418

@Hitret id=15583

@Talk name=Nao　Monologue voice=NO031419

@Hitret id=15584

@Talk name=Nao　Monologue voice=NO031420

@Hitret id=15585

@Talk name=Nao voice=NO031421

@Hitret id=15586

@Talk name=Nao　Monologue voice=NO031422

@Hitret id=15587


@StopBgm

@EyeCatch type=DATE 
@MessageFrame type=0

@Change target=00_b024


