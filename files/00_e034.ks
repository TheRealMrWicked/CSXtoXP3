


@PlayBgm file=BGM05
@Cg file=B17a   

@Talk name=�S�̐�

@Hitret id=38571

@Talk name=�S�̐�

@Hitret id=38572

@Talk name=�S�̐�

@Hitret id=38573

@Talk name=�S�̐�

@Hitret id=38574

@Talk name=�S�̐�

@Hitret id=38575


@Hide
@Cg file=B17b   
@Update
@PlaySe file=SE352

@Cg file=B19b   

@Talk name=�S�̐�

@Hitret id=38576


@Hide
@Cg file=BLACK
@MessageFrame type=1
@Update transition=universal rule=WIP_LR time=500
@WaitUpdate
@Update
@Cg file=B19b   
@Update transition=universal rule=WIP_LR time=500
@WaitUpdate

@Char file=CH01_04S 

@Talk name=�ψ��� voice=KO050006

@Hitret id=38577


@Char file=CF01_03S 

@Talk name=���� voice=RH050367

@Hitret id=38578


@Char file=CH01_01S 

@Talk name=�ψ��� voice=KO050007

@Hitret id=38579


@Char file=CF01_06S 

@Talk name=���� voice=RH050368

@Hitret id=38580


@ClearChar 
@Char file=CC01_02S 

@Talk name=�l voice=AK050140

@Hitret id=38581


@Char file=CD01_01S 

@Talk name=��t voice=KA050097

@Hitret id=38582

@Talk name=�l voice=AK050141

@Hitret id=38583


@Char file=CD01_06S 

@Talk name=��t voice=KA050098

@Hitret id=38584


@Char file=CF01_02S 

@Talk name=���� voice=RH050369

@Hitret id=38585


@ClearChar 
@Char file=CH01_11S 

@Talk name=�ψ��� voice=KO050008

@Hitret id=38586


@ClearChar 

@Char file=CF01_02S 
@Char file=CC01_04S 

@Talk name=���� voice=RH050370

@Hitret id=38587


@Update
@action id=�l action=ActionAdvJump height=30 cycle=300 count=1
@WaitAction id=�l

@Talk name=�l voice=AK050142

@Hitret id=38588


@ClearChar 
@Char file=CD01_04S 

@Talk name=��t voice=KA050099

@Hitret id=38589


@ClearChar 

@Char file=CF01_08M 

@Talk name=���� voice=RH050371

@Hitret id=38590


@StopBgm

@Hide
@BlackOut time=1000
@MessageFrame

@Change target=00_e034b



