// DAB control library

	.globl	u8CompleteFlag
	.globl	_Z10NextStreamv
	.globl	_Z11GetDataRatev
	.globl	hSerial
	.globl	stObjHeader
	.globl	_Z15ReadSerialBytesiPhiPii
	.globl	u16ObjectNum
	.globl	_Z8GetImagePw
	.globl	_Z14GetProgramInfolPhPjPt
	.globl	stObjDirectory
	.globl	_Z15MotHeaderParserPhtP10_MotHeader
	.globl	_Z15GetTotalProgramv
	.globl	_fini
	.globl	pu8ObjectsFlag
	.globl	_Z14HardResetRadiov
	.globl	stPicHeader
	.globl	_Z9GetStereov
	.globl	_Z11VolumeMinusv
	.globl	_Z10VolumePlusv
	.globl	_Z12GetPlayIndexv
	.globl	_Z13OpenRadioPortPcb
	.globl	_Z12GetFrequencyv
	.globl	u16ReceivedObjects
	.globl	_Z18GetApplicationTypel
	.globl	_Z8SetBBEEQcccccccccccc
	.globl	_Z9ResetHighv
	.globl	_Z16WriteSerialBytesiPhiPii
	.globl	_Z14GetProgramNameclcPw
	.globl	_Z14GetProgramTextPw
	.globl	_Z9SetVolumec
	.globl	_Z15GetEnsembleNamelcPw
	.globl	_Z8MotReset8_MotMode
	.globl	_Z8FMSearchc
	.globl	_Z9SetPresetccm
	.globl	_Z17GetSignalStrengthPi
	.globl	_Z11MotAssembleP10_MotObjectPh
	.globl	_Z13GetPlayStatusv
	.globl	_Z10VolumeMutev
	.globl	_Z10GoodHeaderPhi
	.globl	_Z10PrevStreamv
	.globl	_Z8GetBBEEQPcS_S_S_S_S_S_S_S_S_S_S_
	.globl	__bss_start
	.globl	_Z8MotQueryv
	.globl	_Z13GetStereoModev
	.globl	_Z13SetStereoModec
	.globl	_Z18MotDirectoryParserPhj
	.globl	enCurMode
	.globl	_Z10PlayStreamcm
	.globl	pstObjects
	.globl	_Z14CloseRadioPortv
	.globl	_Z8HardMutev
	.globl	_end
	.globl	_Z20DABAutoSearchNoClearhh
	.globl	_Z13ClearDatabasev
	.globl	_Z10IsSysReadyv
	.globl	_Z11GetHeadroomv
	.globl	_Z10StopStreamv
	.globl	_Z11GetPlayModev
	.globl	_Z9GetPresetcc
	.globl	pstHeaderInfo
	.globl	_Z19GetDABSignalQualityv
	.globl	_edata
	.globl	_Z11CommVersionv
	.globl	u16PacketNum
	.globl	_Z9GetVolumev
	.globl	_Z10HardUnMutev
	.globl	_Z16ClearInputBufferv
	.globl	_Z13DABAutoSearchhh
	.globl	_Z11SetHeadroomc
	.globl	_Z14GetProgramTypecl
	.globl	_init
	.globl	MotDataPool

 	.extern	__errno_location@@GLIBC_2.0
	.extern	sprintf@@GLIBC_2.0
	.extern	open@@GLIBC_2.0
	.extern	__gmon_start__
	.extern	_Jv_RegisterClasses
	.extern	write@@GLIBC_2.0
	.extern	memset@@GLIBC_2.0
	.extern	tcgetattr@@GLIBC_2.0
	.extern	read@@GLIBC_2.0
	.extern	perror@@GLIBC_2.0
	.extern	_ITM_deregisterTMCloneTable
	.extern	usleep@@GLIBC_2.0
	.extern	_ITM_registerTMCloneTable
	.extern	fflush@@GLIBC_2.0
	.extern	ioctl@@GLIBC_2.0
	.extern	fclose@@GLIBC_2.1
	.extern	mbstowcs@@GLIBC_2.0
	.extern	cfsetospeed@@GLIBC_2.0
	.extern	strlen@@GLIBC_2.0
	.extern	fopen@@GLIBC_2.1
	.extern	printf@@GLIBC_2.0
	.extern	wcsncpy@@GLIBC_2.0
	.extern	close@@GLIBC_2.0
	.extern	fwrite@@GLIBC_2.0
	.extern	__stack_chk_fail@@GLIBC_2.4
	.extern	stdout@@GLIBC_2.0
	.extern	puts@@GLIBC_2.0
	.extern	tcsetattr@@GLIBC_2.0
	.extern	fcntl@@GLIBC_2.0
	.extern	__gxx_personality_v0@@CXXABI_1.3
	.extern	_Unwind_Resume@@GCC_3.0
	.extern	__cxa_finalize@@GLIBC_2.1.3
	.extern	cfsetispeed@@GLIBC_2.0       

.section .init
_init:  
	push	%ebx
	sub	$0x8,%esp
	call	L9
L9:	pop	%ebx
	add     $0x7b4b,%ebx
        mov     -0x3c(%ebx),%eax
	test    %eax,%eax
	je	L1F
	call	L74
L1F:	add     $0x8,%esp
	pop	%ebx
	ret
        
.section .plt
LI0:
__errno_location_plt_0x10:
        pushl  0x4(%ebx)
        jmp    *0x8(%ebx)
        add    %al,(%eax)

__errno_location_plt:
        jmp    *0xc(%ebx)
        push   $0x0
        jmp    LI0
        
sprintf_plt:    
        jmp    *0x10(%ebx)
        push   $0x8
        jmp    LI0

open_plt:       
        jmp    *0x14(%ebx)
        push   $0x10
        jmp    LI0

_Z15ReadSerialBytesiPhiPii_plt:  
        jmp    *0x18(%ebx)
        push   $0x18
        jmp    LI0
        
__gmon_start___plt:
        jmp    *0x1c(%ebx)
        push   $0x20
        jmp    LI0

_Z15MotHeaderParserPhtP10_MotHeader_plt:
        jmp    *0x20(%ebx)
        push   $0x28
        jmp    LI0

 _Z15GetTotalProgramv_plt:
        jmp    *0x24(%ebx)
        push   $0x30
        jmp    LI0

_Z14HardResetRadiov_plt:
        jmp    *0x28(%ebx)
        push   $0x38
        jmp    LI0          

write_plt:
        jmp    *0x2c(%ebx)
        push   $0x40
        jmp    LI0

memset_plt:
        jmp    *0x30(%ebx)
        push   $0x48
        jmp    LI0

tcgetattr_plt:
        jmp    *0x34(%ebx)
        push   $0x50
        jmp    LI0

_Z12GetPlayIndexv_plt:
        jmp    *0x38(%ebx)
        push   $0x58
        jmp    LI0

read_plt:
        jmp    *0x3c(%ebx)
        push   $0x60
        jmp    LI0
        
perrorplt:
        jmp    *0x40(%ebx)
        push   $0x68
        jmp    LI0

usleep_plt:
        jmp    *0x44(%ebx)
        push   $0x70
        jmp    LI0

_Z9ResetHighv_plt:
        jmp    *0x48(%ebx)
        push   $0x78
        jmp    LI0
        
_Z16WriteSerialBytesiPhiPii_plt:
        jmp    *0x4c(%ebx)
        push   $0x80
        jmp    LI0
        
fflush_plt:
        jmp    *0x50(%ebx)
        push   $0x88
        jmp    LI0

ioctl_plt:
        jmp    *0x54(%ebx)
        push   $0x90
        jmp     LI0
        
_Z9SetVolumec_plt:
        jmp    *0x58(%ebx)
        push   $0x98
        jmp    LI0
        
fclose_plt:
        jmp    *0x5c(%ebx)
        push   $0xa0
        jmp    LI0
        
mbstowcs_plt:
        jmp    *0x60(%ebx)
        push   $0xa8
        jmp    LI0
        
_Z8MotReset8_MotMode_plt:
        jmp    *0x64(%ebx)
        push   $0xb0
        jmp    LI0
        
_Z8FMSearchc_plt:
        jmp    *0x68(%ebx)
        push   $0xb8
        jmp    LI0
        
cfsetospeed_plt:
        jmp    *0x6c(%ebx)
        push   $0xc0
        jmp    LI0
        
strlen_plt:
        jmp    *0x70(%ebx)
        push   $0xc8
        jmp    LI0
        
fopen_plt:
        jmp    *0x74(%ebx)
        push   $0xd0
        jmp    LI0
        
printf_plt:
        jmp    *0x78(%ebx)
        push   $0xd8
        jmp    LI0
        
_Z11MotAssembleP10_MotObjectPh_plt:
        jmp    *0x7c(%ebx)
        push   $0xe0
        jmp    LI0

wcsncpy_plt:
        jmp    *0x80(%ebx)
        push   $0xe8
        jmp    LI0

_Z10GoodHeaderPhi_plt:
        jmp    *0x84(%ebx)
        push   $0xf0
        jmp    LI0
        
close_plt:
        jmp    *0x88(%ebx)
        push   $0xf8
        jmp    LI0

fwrite_plt:
        jmp    *0x8c(%ebx)
        push   $0x100
        jmp  	  LI0

__stack_chk_fail_plt:
        jmp    *0x90(%ebx)
        push   $0x108
        jmp    LI0
        
_Z10PlayStreamcm_plt:
        jmp    *0x94(%ebx)
        push   $0x110
	jmp    LI0
        
_Z8HardMutev_plt:
        jmp    *0x98(%ebx)
        push   $0x118
	jmp    LI0
        
puts_plt:
        jmp    *0x9c(%ebx)
        push   $0x120
	jmp    LI0
        
tcsetattr_plt:
        jmp    *0xa0(%ebx)
        push   $0x128
	jmp    LI0
        
_Z13ClearDatabasev_plt:
        jmp    *0xa4(%ebx)
        push   $0x130
	jmp    LI0
        
_Z10IsSysReadyv_plt:
        jmp    *0xa8(%ebx)
        push   $0x138
	jmp	  LI0
        
fcntl_plt:
        jmp    *0xac(%ebx)
        push   $0x140
	jmp    LI0
        
_Z11GetPlayModev_plt:
        jmp    *0xb0(%ebx)
        push   $0x148
	jmp    LI0
        
_Unwind_Resume_plt:
        jmp    *0xb4(%ebx)
        push   $0x150
	jmp    LI0
        
_Z9GetVolumev_plt:
        jmp    *0xb8(%ebx)
        push   $0x158
	jmp    LI0
        
_Z10HardUnMutev_plt:
        jmp    *0xbc(%ebx)
        push   $0x160
		jmp	  LI0
        
__cxa_finalize_plt:
        jmp    *0xc0(%ebx)
        push   $0x168
	jmp    LI0
        
cfsetispeed_plt:
        jmp    *0xc4(%ebx)
        push   $0x170
	jmp    LI0
        
_Z16ClearInputBufferv_plt:
        jmp    *0xc8(%ebx)
        push   $0x178
	jmp    LI0
        
        
.section .text

deregister_tm_clones:   
L0:     push   %ebp
        mov    %esp,%ebp
        push   %ebx
	call   L11B
        add    $0x7817,%ebx
        sub    $0x14,%esp
        lea    0xdb(%ebx),%eax
        lea    0xd8(%ebx),%edx
        sub    %edx,%eax
        cmp    $0x6,%eax
        ja     deregister_tm_clones_0x2b
L25:	add    $0x14,%esp
        pop    %ebx
        pop    %ebp
        ret
L2B:   	mov    -0x28(%ebx),%eax
        test   %eax,%eax
	je	L25
        mov    %edx,(%esp)
	call	*%eax
	jmp	L25
	lea    0(%esi),%esi
        
register_tm_clones:     
L40:    push	%ebp
	mov    %esp,%ebp
        push   %ebx
	call	  L11B
	add	$0x77d7,%ebx
        sub    $0x14,%esp
        lea    0xd8(%ebx),%eax
        lea    0xd8(%ebx),%edx
        sub    %edx,%eax
        sar    $0x2,%eax
        mov    %eax,%ecx
        shr    $0x1f,%ecx
        add    %ecx,%eax
        sar    %eax
        jne    L74
L6E:    add    $0x14,%esp
        pop    %ebx
        pop    %ebp
        ret     
L74:	mov    -0x20(%ebx),%ecx
	test   %ecx,%ecx
	je     L6E
        mov    %eax,0x4(%esp)
        mov    %edx,(%esp)
	call   *%ecx
	jmp    L6E
	lea    0(%esi),%esi

__do_global_dtors_aux:  
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
       	call   __x86.get_pc_thunk.bx
    	add    $0x7787,%ebx
        sub    $0x14,%esp
 	cmpb   $0x0,0xe0(%ebx)
        jne    LCF
    	mov    -0x8(%ebx),%eax
        test   %eax,%eax
        je     LC3
    	mov    0xcc(%ebx),%eax
        mov    %eax,(%esp)
       	call   __cxa_finalize_plt
LC3:    call   deregister_tm_clones
 	movb   $0x1,0xe0(%ebx)
LCF:    add    $0x14,%esp
        pop    %ebx
        pop    %ebp
        ret
       	lea    0(%esi),%esi
	lea    0(%edi),%edi

frame_dummy:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
       	call   __x86.get_pc_thunk.bx
    	add    $0x7737,%ebx
        sub    $0x14,%esp
    	mov    -0x148(%ebx),%edx
        test   %edx,%edx
        je     L111
    	mov    -0x38(%ebx),%eax
        test   %eax,%eax
        je     L111
    	lea    -0x148(%ebx),%edx
        mov    %edx,(%esp)
        call   *%eax
        add    $0x14,%esp
        pop    %ebx
        pop    %ebp
       	jmp    register_tm_clones       

__x86.get_pc_thunk.bx:        
	mov    (%esp),%ebx
        ret    
        nop
        
_Z9ResetHighv:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x24,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x76f4,%ebx
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0xc(%ebp),%edx
        mov    %edx,0x8(%esp)
 	movl   $0x5415,0x4(%esp)
        
        mov    %eax,(%esp)
       	call   ioctl_plt
        mov    -0xc(%ebp),%eax
        and    $0xfffffffd,%eax
        mov    %eax,-0xc(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0xc(%ebp),%edx
        mov    %edx,0x8(%esp)
 	movl   $0x5418,0x4(%esp)
 
        mov    %eax,(%esp)
       	call   ioctl_plt
 	movl   $0xdbba0,(%esp)
       	call   usleep_plt
        jmp    L18F
        mov    %eax,(%esp)
       	call   _Unwind_Resume_plt
L18F:   add    $0x24,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z16ClearInputBufferv:
        push   %ebp
        mov    %esp,%ebp
        push   %edi
        push   %esi
        push   %ebx
    	sub    $0x9c,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x767a,%ebx
    	mov    %gs:0x14,%eax
        mov    %eax,-0x1c(%ebp)
        xor    %eax,%eax
        lea    -0x80(%ebp),%esi
       	mov    $0x0,%eax
       	mov    $0x19,%edx
        mov    %esi,%edi
        mov    %edx,%ecx
        rep stos %eax,%es:(%edi)
 	movl   $0x1,-0x84(%ebp)
        
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        test   %eax,%eax
        je     L22C
        jmp    L213
L1E2:   mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        
    	lea    -0x84(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x1,0x8(%esp)
 
        lea    -0x80(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii_plt
L213:   mov    -0x84(%ebp),%eax
        test   %eax,%eax
        setg   %al
        test   %al,%al
        jne    L1E2
        jmp    L22C
        mov    %eax,(%esp)
       	call   _Unwind_Resume_plt
L22C:   mov    -0x1c(%ebp),%eax
 	xor    %gs:0x14,%eax
        je     L23D
       	call   __stack_chk_fail_local
L23D: 	add    $0x9c,%esp
        pop    %ebx
        pop    %esi
        pop    %edi
        pop    %ebp
        ret
        
_Z16WriteSerialBytesiPhiPii:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x24,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x75cc,%ebx
        mov    0x10(%ebp),%eax
        mov    %eax,0x8(%esp)
        mov    0xc(%ebp),%eax
        mov    %eax,0x4(%esp)
        mov    0x8(%ebp),%eax
        mov    %eax,(%esp)
       	call   write_plt
        mov    %eax,-0xc(%ebp)
        cmpl   $0x0,-0xc(%ebp)
        jns    L282
        movb   $0x0,-0xd(%ebp)
        jmp    L28E
L282:   mov    0x14(%ebp),%eax
        mov    -0xc(%ebp),%edx
        mov    %edx,(%eax)
        movb   $0x1,-0xd(%ebp)
L28E:   movzbl -0xd(%ebp),%eax
        add    $0x24,%esp
        pop    %ebx
        pop    %ebp
        ret    


_Z15ReadSerialBytesiPhiPii:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x24,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x757c,%ebx
        movb   $0x1,-0x15(%ebp)
 	movl   $0x0,-0x14(%ebp)
 	movl   $0x3,-0x10(%ebp)
        cmpl   $0x0,0x18(%ebp)
        je     L2C9
 	movl   $0x32,-0x10(%ebp)
L2C9:   mov    0x14(%ebp),%eax
    	movl   $0x0,(%eax)
 	movl   $0x1770,(%esp)
       	call   usleep_plt
       	jmp    L367
L2E3: 	movl   $0x1,0x8(%esp)
 
        mov    0xc(%ebp),%eax
        mov    %eax,0x4(%esp)
        mov    0x8(%ebp),%eax
        mov    %eax,(%esp)
       	call   read_plt
        mov    %eax,-0xc(%ebp)
        cmpl   $0x0,-0xc(%ebp)
        jle    L346
 	movl   $0x0,-0x14(%ebp)
        cmpl   $0x0,0x18(%ebp)
        je     L321
        mov    0xc(%ebp),%eax
        movzbl (%eax),%eax
        cmp    $0xfd,%al
        jne    L321
        movb   $0x0,-0x15(%ebp)
L321:   mov    0x14(%ebp),%eax
        mov    (%eax),%edx
        mov    -0xc(%ebp),%eax
        add    %eax,%edx
        mov    0x14(%ebp),%eax
        mov    %edx,(%eax)
        mov    0x14(%ebp),%eax
        mov    (%eax),%eax
        cmp    0x10(%ebp),%eax
        jl     L340
        movb   $0x0,-0x15(%ebp)
        jmp    L367
L340:   addl   $0x1,0xc(%ebp)
        jmp    L367
L346:   addl   $0x1,-0x14(%ebp)
       	call   __errno_location_plt
        mov    (%eax),%eax
        cmp    $0xb,%eax
        jne    L367
    	mov    -0x14(%ebx),%eax
        mov    (%eax),%eax
        mov    %eax,(%esp)
       	call   fflush_plt
        nop
L367:   cmpb   $0x0,-0x15(%ebp)
        je     L37C
        mov    -0x14(%ebp),%eax
        cmp    -0x10(%ebp),%eax
        jge    L37C
       	mov    $0x1,%eax
        jmp    L381
L37C: 	mov    $0x0,%eax
L381:   test   %al,%al
    	jne    L2E3
 	mov    $0x1,%eax
        add    $0x24,%esp
        pop    %ebx
        pop    %ebp
        ret    


_Z11CommVersionv:
        push   %ebp
        mov    %esp,%ebp
       	mov    $0xf4240,%eax
        pop    %ebp
        ret    
    
_Z10GoodHeaderPhi:
        push   %ebp
        mov    %esp,%ebp
        mov    0x8(%ebp),%eax
        movzbl (%eax),%eax
        cmp    $0xfe,%al
        jne    L3C4
        mov    0xc(%ebp),%eax
        lea    -0x1(%eax),%edx
        mov    0x8(%ebp),%eax
        add    %edx,%eax
        movzbl (%eax),%eax
        cmp    $0xfd,%al
        jne    L3C4
       	mov    $0x1,%eax
        jmp    L3C9
L3C4:   mov    $0x0,%eax
L3C9:   pop    %ebp
        ret    

 _Z18GetApplicationTypel:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x44,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x7449,%ebx
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
 	movl   $0x0,-0x20(%ebp)
 	movl   $0x0,-0x1c(%ebp)
        movb   $0x0,-0x18(%ebp)
        movb   $0xfe,-0x17(%ebp)
        movb   $0x3,-0x16(%ebp)
        movb   $0x1,-0x15(%ebp)
        movb   $0x1,-0x14(%ebp)
        movb   $0x0,-0x13(%ebp)
        movb   $0x4,-0x12(%ebp)
        movb   $0xff,-0x11(%ebp)
        movb   $0xff,-0x10(%ebp)
        movb   $0xff,-0xf(%ebp)
        movb   $0xff,-0xe(%ebp)
        movb   $0xfd,-0xd(%ebp)
 	movl   $0x0,-0x24(%ebp)
        mov    0x8(%ebp),%eax
        mov    %eax,-0x24(%ebp)
        movzbl -0x21(%ebp),%eax
        mov    %al,-0x11(%ebp)
        movzbl -0x22(%ebp),%eax
        mov    %al,-0x10(%ebp)
        movzbl -0x23(%ebp),%eax
        mov    %al,-0xf(%ebp)
        movzbl -0x24(%ebp),%eax
        mov    %al,-0xe(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        
        lea    -0x28(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0xb,0x8(%esp)
        
        lea    -0x17(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L48E
       	mov    $0xffffffff,%eax
       	jmp    L523
L48E:   mov    -0x28(%ebp),%eax
        cmp    $0xb,%eax
        je     L4A0
       	mov    $0xffffffff,%eax
       	jmp    L523
L4A0:   mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        
        lea    -0x28(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x9,0x8(%esp)
 
        lea    -0x20(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L4DC
       	mov    $0xffffffff,%eax
        jmp    L523
L4DC:   mov    -0x28(%ebp),%eax
        cmp    $0x7,%eax
        jg     L4EB
        mov    $0xffffffff,%eax
        jmp    L523
L4EB:   mov    -0x28(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x20(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi_plt
        test   %al,%al
        je     L51E
        movzbl -0x1f(%ebp),%eax
        cmp    $0x3,%al
        jne    L517
        movzbl -0x1e(%ebp),%eax
        cmp    $0x1,%al
        jne    L517
        movzbl -0x1a(%ebp),%eax
        jmp    L523
L517:   mov    $0xffffffff,%eax
        jmp    L523
L51E:   mov    $0xffffffff,%eax
L523:   mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L53E
        jmp    L539
        mov    %eax,(%esp)
       	call   _Unwind_Resume_plt
L539:   call   __stack_chk_fail_local
L53E:   add    $0x44,%esp
        pop    %ebx
        pop    %ebp
        ret
        
_Z14GetProgramInfolPhPjPt:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x64,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x72d0,%ebx
        mov    0xc(%ebp),%eax
        mov    %eax,-0x3c(%ebp)
        mov    0x10(%ebp),%eax
        mov    %eax,-0x40(%ebp)
        mov    0x14(%ebp),%eax
        mov    %eax,-0x44(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
 	movl   $0x0,-0x1b(%ebp)
 	movl   $0x0,-0x17(%ebp)
 	movl   $0x0,-0x13(%ebp)
    	movw   $0x0,-0xf(%ebp)
        movb   $0x0,-0xd(%ebp)
        movb   $0xfe,-0x26(%ebp)
        movb   $0x1,-0x25(%ebp)
        movb   $0x23,-0x24(%ebp)
        movb   $0x1,-0x23(%ebp)
        movb   $0x0,-0x22(%ebp)
        movb   $0x4,-0x21(%ebp)
        movb   $0xff,-0x20(%ebp)
        movb   $0xff,-0x1f(%ebp)
        movb   $0xff,-0x1e(%ebp)
        movb   $0xff,-0x1d(%ebp)
        movb   $0xfd,-0x1c(%ebp)
 	movl   $0x0,-0x2a(%ebp)
        mov    0x8(%ebp),%eax
        mov    %eax,-0x2a(%ebp)
        movzbl -0x27(%ebp),%eax
        mov    %al,-0x20(%ebp)
        movzbl -0x28(%ebp),%eax
        mov    %al,-0x1f(%ebp)
        movzbl -0x29(%ebp),%eax
        mov    %al,-0x1e(%ebp)
        movzbl -0x2a(%ebp),%eax
        mov    %al,-0x1d(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
 
        lea    -0x30(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0xb,0x8(%esp)
 
        lea    -0x26(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L626
       	mov    $0x0,%eax
       	jmp    L71C
L626:   mov    -0x30(%ebp),%eax
        cmp    $0xb,%eax
        je     L638
       	mov    $0x0,%eax
       	jmp    L71C
L638:   mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
 
        lea    -0x30(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0xf,0x8(%esp)
 
        lea    -0x1b(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L626
       	mov    $0x0,%eax
       	jmp    L71C
L677:   mov    -0x30(%ebp),%eax
        cmp    $0xe,%eax
        jg     L689
       	mov    $0x0,%eax
       	jmp    L71C
L689:   mov    -0x30(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x1b(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi_plt
        test   %al,%al
        je     L717
        movzbl -0x1a(%ebp),%eax
        cmp    $0x1,%al
        jne    L710
        movzbl -0x19(%ebp),%eax
        cmp    $0x23,%al
        jne    L710
        movzbl -0x14(%ebp),%edx
        mov    -0x3c(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0x13(%ebp),%eax
        movzbl %al,%eax
        mov    %eax,%edx
        shl    $0x18,%edx
        movzbl -0x12(%ebp),%eax
        movzbl %al,%eax
        shl    $0x10,%eax
        or     %eax,%edx
        movzbl -0x11(%ebp),%eax
        movzbl %al,%eax
        shl    $0x8,%eax
        or     %eax,%edx
        movzbl -0x10(%ebp),%eax
        movzbl %al,%eax
        or     %edx,%eax
        mov    %eax,%edx
        mov    -0x40(%ebp),%eax
        mov    %edx,(%eax)
        movzbl -0xf(%ebp),%eax
        movzbl %al,%eax
        shl    $0x8,%eax
        mov    %eax,%edx
        movzbl -0xe(%ebp),%eax
        movzbl %al,%eax
        or     %edx,%eax
        mov    %eax,%edx
        mov    -0x44(%ebp),%eax
        mov    %dx,(%eax)
       	mov    $0x1,%eax
        jmp    L71C
L710:   mov    $0x0,%eax
        jmp    L71C
L717:   mov    $0x0,%eax
L71C:   mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L737
        jmp    L732
        mov    %eax,(%esp)
       	call   _Unwind_Resume_plt
L732:   call   __stack_chk_fail_local
L737:   add    $0x64,%esp
        pop    %ebx
        pop    %ebp
        ret
        
_Z10IsSysReadyv:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x44,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x70d7,%ebx
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
 	movl   $0x0,-0x14(%ebp)
 	movl   $0x0,-0x10(%ebp)
        movb   $0xfe,-0x1b(%ebp)
        movb   $0x0,-0x1a(%ebp)
        movb   $0x0,-0x19(%ebp)
        movb   $0x1,-0x18(%ebp)
        movb   $0x0,-0x17(%ebp)
        movb   $0x0,-0x16(%ebp)
        movb   $0xfd,-0x15(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        test   %eax,%eax
    	je     L851
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x7,0x8(%esp)
 
        lea    -0x1b(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L7D3
       	mov    $0x0,%eax
       	jmp    L856
L7D3:   mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
 
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
 
        lea    -0x14(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L80F
       	mov    $0x0,%eax
        jmp    L856
L80F:   mov    -0x20(%ebp),%eax
        cmp    $0x6,%eax
        jg     L81E
       	mov    $0x0,%eax
        jmp    L856
L81E:   mov    -0x20(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x14(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi_plt
        test   %al,%al
        je     L84A
        movzbl -0x12(%ebp),%eax
        cmp    $0x1,%al
        jne    L843
       	mov    $0x1,%eax
        jmp    L856
L843:   mov    $0x0,%eax
        jmp    L856
L84A:   mov    $0x0,%eax
        jmp    L856
L851:   mov    $0x0,%eax
L856:   mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L871
        jmp    L86C
        mov    %eax,(%esp)
L86C:   call   _Unwind_Resume_plt
L871:   call   __stack_chk_fail_local
        add    $0x44,%esp
        pop    %ebx
        pop    %ebp
        ret    


_Z8GetBBEEQPcS_S_S_S_S_S_S_S_S_S_S_:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
    	sub    $0x84,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x6f9a,%ebx
        mov    0x8(%ebp),%eax
        mov    %eax,-0x3c(%ebp)
        mov    0xc(%ebp),%eax
        mov    %eax,-0x40(%ebp)
        mov    0x10(%ebp),%eax
        mov    %eax,-0x44(%ebp)
        mov    0x14(%ebp),%eax
        mov    %eax,-0x48(%ebp)
        mov    0x18(%ebp),%eax
        mov    %eax,-0x4c(%ebp)
        mov    0x1c(%ebp),%eax
        mov    %eax,-0x50(%ebp)
        mov    0x20(%ebp),%eax
        mov    %eax,-0x54(%ebp)
        mov    0x24(%ebp),%eax
        mov    %eax,-0x58(%ebp)
        mov    0x28(%ebp),%eax
        mov    %eax,-0x5c(%ebp)
        mov    0x2c(%ebp),%eax
        mov    %eax,-0x60(%ebp)
        mov    0x30(%ebp),%eax
        mov    %eax,-0x64(%ebp)
        mov    0x34(%ebp),%eax
        mov    %eax,-0x68(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
 	movl   $0x0,-0x1e(%ebp)
 	movl   $0x0,-0x1a(%ebp)
 	movl   $0x0,-0x16(%ebp)
 	movl   $0x0,-0x12(%ebp)
    	movw   $0x0,-0xe(%ebp)
        movb   $0xfe,-0x25(%ebp)
        movb   $0x1,-0x24(%ebp)
        movb   $0x28,-0x23(%ebp)
        movb   $0x1,-0x22(%ebp)
        movb   $0x0,-0x21(%ebp)
        movb   $0x0,-0x20(%ebp)
        movb   $0xfd,-0x1f(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        
        lea    -0x2c(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x7,0x8(%esp)
        
        lea    -0x25(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L95C
       	mov    $0x1,%eax
       	jmp    L95D
L95C:   mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        
        lea    -0x2c(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x13,0x8(%esp)
 
        lea    -0x1e(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L99B
       	mov    $0x1,%eax
       	jmp    LA5D
L99B:   mov    -0x2c(%ebp),%eax
        cmp    $0x12,%eax
        jg     L9AD
       	mov    $0x1,%eax
       	jmp    LA5D
L9AD:   mov    -0x2c(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x1e(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi_plt
        test   %al,%al
    	je     LA52
        movzbl -0x18(%ebp),%eax
        mov    %eax,%edx
        mov    -0x3c(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0x17(%ebp),%eax
        mov    %eax,%edx
        mov    -0x40(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0x16(%ebp),%eax
        mov    %eax,%edx
        mov    -0x44(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0x15(%ebp),%eax
        mov    %eax,%edx
        mov    -0x48(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0x14(%ebp),%eax
        mov    %eax,%edx
        mov    -0x4c(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0x13(%ebp),%eax
        mov    %eax,%edx
        mov    -0x50(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0x12(%ebp),%eax
        mov    %eax,%edx
        mov    -0x54(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0x11(%ebp),%eax
        mov    %eax,%edx
        mov    -0x58(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0x10(%ebp),%eax
        mov    %eax,%edx
        mov    -0x5c(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0xf(%ebp),%eax
        mov    %eax,%edx
        mov    -0x60(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0xe(%ebp),%eax
        mov    %eax,%edx
        mov    -0x64(%ebp),%eax
        mov    %dl,(%eax)
        movzbl -0xd(%ebp),%eax
        mov    %eax,%edx
        mov    -0x68(%ebp),%eax
        mov    %dl,(%eax)
       	mov    $0x1,%eax
        jmp    LA5D
LA52:   mov    -0x3c(%ebp),%eax
        movb   $0x0,(%eax)
       	mov    $0x0,%eax
LA5D:   mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     LA78 
        jmp    LA73
        mov    %eax,(%esp)
        call   _Unwind_Resume_plt
LA73:   call   __stack_chk_fail_local
LA78:   add    $0x84,%esp
        pop    %ebx
        pop    %ebp
        ret

        
_Z8SetBBEEQcccccccccccc:
        push   %ebp
        mov    %esp,%ebp
        push   %edi
        push   %esi
        push   %ebx
    	sub    $0xac,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x6d8e,%ebx
        mov    0x8(%ebp),%edx
        mov    0xc(%ebp),%esi
        mov    0x10(%ebp),%eax
        mov    %eax,-0x7c(%ebp)
        mov    0x14(%ebp),%eax
        mov    %eax,-0x80(%ebp)
        mov    0x18(%ebp),%eax
    	mov    %eax,-0x84(%ebp)
        mov    0x1c(%ebp),%eax
    	mov    %eax,-0x88(%ebp)
        mov    0x20(%ebp),%eax
    	mov    %eax,-0x8c(%ebp)
        mov    0x24(%ebp),%eax
    	mov    %eax,-0x90(%ebp)
        mov    0x28(%ebp),%eax
    	mov    %eax,-0x94(%ebp)
        mov    0x2c(%ebp),%edi
        mov    0x30(%ebp),%ecx
        mov    0x34(%ebp),%eax
        mov    %dl,-0x4c(%ebp)
        mov    %esi,%edx
        mov    %dl,-0x50(%ebp)
        movzbl -0x7c(%ebp),%edx
        mov    %dl,-0x54(%ebp)
        movzbl -0x80(%ebp),%edx
        mov    %dl,-0x58(%ebp)
 	movzbl -0x84(%ebp),%edx
        mov    %dl,-0x5c(%ebp)
 	movzbl -0x88(%ebp),%edx
        mov    %dl,-0x60(%ebp)
 	movzbl -0x8c(%ebp),%edx
        mov    %dl,-0x64(%ebp)
 	movzbl -0x90(%ebp),%edx
        mov    %dl,-0x68(%ebp)
 	movzbl -0x94(%ebp),%edx
        mov    %dl,-0x6c(%ebp)
        mov    %edi,%edx
        mov    %dl,-0x70(%ebp)
        mov    %cl,-0x74(%ebp)
        mov    %al,-0x78(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0x1c(%ebp)
        xor    %eax,%eax
 	movl   $0x0,-0x37(%ebp)
 	movl   $0x0,-0x33(%ebp)
        movb   $0xfe,-0x2f(%ebp)
        movb   $0x1,-0x2e(%ebp)
        movb   $0x1f,-0x2d(%ebp)
        movb   $0x1,-0x2c(%ebp)
        movb   $0x0,-0x2b(%ebp)
        movb   $0xc,-0x2a(%ebp)
        movb   $0x0,-0x29(%ebp)
        movb   $0x0,-0x28(%ebp)
        movb   $0x0,-0x27(%ebp)
        movb   $0x0,-0x26(%ebp)
        movb   $0x0,-0x25(%ebp)
        movb   $0x0,-0x24(%ebp)
        movb   $0x0,-0x23(%ebp)
        movb   $0x0,-0x22(%ebp)
        movb   $0x0,-0x21(%ebp)
        movb   $0x0,-0x20(%ebp)
        movb   $0x0,-0x1f(%ebp)
        movb   $0x0,-0x1e(%ebp)
        movb   $0xfd,-0x1d(%ebp)
        cmpb   $0x0,-0x4c(%ebp)
        js     LBA4
        cmpb   $0x2,-0x4c(%ebp)
        jle    LBAE
LBA4:   mov    $0x0,%eax
       	jmp    LCC5
LBAE:   movzbl -0x4c(%ebp),%eax
        mov    %al,-0x29(%ebp)
        movzbl -0x50(%ebp),%eax
        mov    %al,-0x28(%ebp)
        movzbl -0x54(%ebp),%eax
        mov    %al,-0x27(%ebp)
        movzbl -0x58(%ebp),%eax
        mov    %al,-0x26(%ebp)
        movzbl -0x5c(%ebp),%eax
        mov    %al,-0x25(%ebp)
        movzbl -0x60(%ebp),%eax
        mov    %al,-0x24(%ebp)
        movzbl -0x64(%ebp),%eax
        mov    %al,-0x23(%ebp)
        movzbl -0x68(%ebp),%eax
        mov    %al,-0x22(%ebp)
        movzbl -0x6c(%ebp),%eax
        mov    %al,-0x21(%ebp)
        movzbl -0x70(%ebp),%eax
        mov    %al,-0x20(%ebp)
        movzbl -0x74(%ebp),%eax
        mov    %al,-0x1f(%ebp)
        movzbl -0x78(%ebp),%eax
        mov    %al,-0x1e(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        
        lea    -0x3c(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x13,0x8(%esp)
        
        lea    -0x2f(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     LC41
       	mov    $0x1,%eax
       	jmp    LCC5
LC41:   mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        
        lea    -0x3c(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
 
        lea    -0x37(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     LC7D
       	mov    $0x1,%eax
        jmp    LC7D
LC7D:   mov    -0x3c(%ebp),%eax
        cmp    $0x6,%eax
        jg     LC8C
       	mov    $0x1,%eax
        jmp    LCC5
LC8C:   mov    -0x3c(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x37(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi_plt
        test   %al,%al
        je     LCC0
        movzbl -0x36(%ebp),%eax
        test   %al,%al
        jne    LCB9
        movzbl -0x35(%ebp),%eax
        cmp    $0x1,%al
        jne    LCB9
       	mov    $0x1,%eax
        jmp    LCC5
LCB9:   mov    $0x0,%eax
        jmp    LCC5
LCC0:   mov    $0x0,%eax
LCC5:   mov    -0x1c(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     LCE0
        jmp    LCDB
        mov    %eax,(%esp)
       	call   _Unwind_Resume_plt
LCDB:   call   __stack_chk_fail_local
    	add    $0xac,%esp
        pop    %ebx
        pop    %esi
        pop    %edi
        pop    %ebp
        ret    

_Z14GetProgramTypecl:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x54,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x6b29,%ebx
        mov    0x8(%ebp),%eax
        mov    %al,-0x2c(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
 	movl   $0x0,-0x1f(%ebp)
 	movl   $0x0,-0x1b(%ebp)
        movb   $0xfe,-0x17(%ebp)
        movb   $0x1,-0x16(%ebp)
        movb   $0xe,-0x15(%ebp)
        movb   $0x1,-0x14(%ebp)
        movb   $0x0,-0x13(%ebp)
        movb   $0x4,-0x12(%ebp)
        movb   $0xff,-0x11(%ebp)
        movb   $0xff,-0x10(%ebp)
        movb   $0xff,-0xf(%ebp)
        movb   $0xff,-0xe(%ebp)
        movb   $0xfd,-0xd(%ebp)
 	movl   $0x0,-0x23(%ebp)
        cmpb   $0x0,-0x2c(%ebp)
        je     LD65
        cmpb   $0x1,-0x2c(%ebp)
        je     LD65
       	mov    $0xffffffff,%eax
       	jmp    LE61
LD65:   cmpb   $0x0,-0x2c(%ebp)
        jne    LD8D
        mov    0xc(%ebp),%eax
        mov    %eax,-0x23(%ebp)
        movzbl -0x20(%ebp),%eax
        mov    %al,-0x11(%ebp)
        movzbl -0x21(%ebp),%eax
        mov    %al,-0x10(%ebp)
        movzbl -0x22(%ebp),%eax
        mov    %al,-0xf(%ebp)
        movzbl -0x23(%ebp),%eax
        mov    %al,-0xe(%ebp)
LD8D:   mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        
        lea    -0x28(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0xb,0x8(%esp)
 
        lea    -0x17(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     LDCC
       	mov    $0xffffffff,%eax
       	jmp    LE61
LDCC:   mov    -0x28(%ebp),%eax
        cmp    $0xb,%eax
        je     LDDE
       	mov    $0xffffffff,%eax
       	jmp    LE61
LDDE:   mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        
        lea    -0x28(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
 
        lea    -0x1f(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     LE1A
       	mov    $0xffffffff,%eax
        jmp    LE61
LE1A:   mov    -0x28(%ebp),%eax
        cmp    $0x8,%eax
        je     LE29
       	mov    $0xffffffff,%eax
        jmp    LE61
LE29:   mov    -0x28(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x1f(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi_plt
        test   %al,%al
        je     LE5C
        movzbl -0x1e(%ebp),%eax
        cmp    $0x1,%al
        jne    LE55
        movzbl -0x1d(%ebp),%eax
        cmp    $0xe,%al
        jne    LE55
        movzbl -0x19(%ebp),%eax
        jmp    LE61
LE55:   mov    $0xffffffff,%eax
        jmp    LE61
LE5C:   mov    $0xffffffff,%eax
LE61:   mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     LE7C
        jmp    LE77
        mov    %eax,(%esp)
       	call   _Unwind_Resume_plt
LE77:   call   __stack_chk_fail_local
LE7C:   add    $0x54,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z14GetProgramTextPw:
        push   %ebp
        mov    %esp,%ebp
        push   %edi
        push   %esi
        push   %ebx
    	sub    $0x63c,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x698d,%ebx
        mov    0x8(%ebp),%eax
    	mov    %eax,-0x61c(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0x1c(%ebp)
        xor    %eax,%eax
    	lea    -0x5f8(%ebp),%esi
       	mov    $0x0,%eax
       	mov    $0x4b,%edx
        mov    %esi,%edi
        mov    %edx,%ecx
        rep stos %eax,%es:(%edi)
 	movb   $0xfe,-0x5ff(%ebp)
 	movb   $0x1,-0x5fe(%ebp)
 	movb   $0x10,-0x5fd(%ebp)
 	movb   $0x1,-0x5fc(%ebp)
 	movb   $0x0,-0x5fb(%ebp)
 	movb   $0x0,-0x5fa(%ebp)
 	movb   $0xfd,-0x5f9(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
 
    	lea    -0x614(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x7,0x8(%esp)
 
    	lea    -0x5ff(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     LF39
       	mov    $0xffffffff,%eax
       	jmp    L11E4
LF39:   mov    -0x614(%ebp),%eax
        cmp    $0x7,%eax
        je     LF4E
       	mov    $0xffffffff,%eax
       	jmp    L11E4
LF4E:   mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
 
    	lea    -0x614(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x12c,0x8(%esp)
 
    	lea    -0x5f8(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   Z15ReadSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     LF93
       	mov    $0xffffffff,%eax
       	jmp    L11E4
LF93:   mov    -0x614(%ebp),%eax
        cmp    $0x7,%eax
        jg     LFA8
       	mov    $0xffffffff,%eax
       	jmp    L11E4
LFA8:   mov    -0x614(%ebp),%eax
        mov    %eax,0x4(%esp)
    	lea    -0x5f8(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi_plt
        test   %al,%al
    	je     L11DF
 	movzbl -0x5f7(%ebp),%eax
        cmp    $0x1,%al
    	jne    L11A9
 	movzbl -0x5f6(%ebp),%eax
        cmp    $0x10,%al
    	jne    L11A9
 	movzbl -0x5f4(%ebp),%eax
        movzbl %al,%eax
        mov    %eax,%edx
        shl    $0x8,%edx
 	movzbl -0x5f3(%ebp),%eax
        movzbl %al,%eax
        or     %edx,%eax
    	mov    %eax,-0x608(%ebp)
 	cmpl   $0x12b,-0x608(%ebp)
 
        jle    L101D
       	mov    $0xffffffff,%eax
       	jmp    L11E4
L101D:  mov    -0x608(%ebp),%eax
        mov    %eax,%edx
        shr    $0x1f,%edx
        add    %edx,%eax
        sar    %eax
    	mov    %eax,-0x604(%ebp)
 	movl   $0x0,-0x610(%ebp)
 
        jmp    L1094
L103E:  mov    -0x610(%ebp),%eax
        add    $0x6,%eax
 	movzbl -0x5f8(%ebp,%eax,1),%eax
 
    	mov    %al,-0x615(%ebp)
    	mov    -0x610(%ebp),%eax
        lea    0x6(%eax),%edx
    	mov    -0x610(%ebp),%eax
        add    $0x7,%eax
 	movzbl -0x5f8(%ebp,%eax,1),%eax
 
 	mov    %al,-0x5f8(%ebp,%edx,1)
    	mov    -0x610(%ebp),%eax
        lea    0x7(%eax),%edx
 	movzbl -0x615(%ebp),%eax
 	mov    %al,-0x5f8(%ebp,%edx,1)
 	addl   $0x2,-0x610(%ebp)
    	mov    -0x610(%ebp),%eax
    	cmp    -0x608(%ebp),%eax
        setl   %al
        test   %al,%al
        jne    L103E
    	lea    -0x4cc(%ebp),%esi
       	mov    $0x0,%eax
       	mov    $0x12c,%edx
        mov    %esi,%edi
        mov    %edx,%ecx
        rep stos %eax,%es:(%edi)
 	movl   $0x0,-0x60c(%ebp)
 
        jmp    L1148
L10C9:  mov    -0x60c(%ebp),%eax
 	lea    0x0(,%eax,4),%edx
    	mov    -0x60c(%ebp),%eax
        add    $0x3,%eax
        add    %eax,%eax
 	movzbl -0x5f8(%ebp,%eax,1),%eax
 
 	mov    %al,-0x4cc(%ebp,%edx,1)
    	mov    -0x60c(%ebp),%eax
        shl    $0x2,%eax
        lea    0x1(%eax),%edx
    	mov    -0x60c(%ebp),%eax
        add    $0x3,%eax
        add    %eax,%eax
        add    $0x1,%eax
 	movzbl -0x5f8(%ebp,%eax,1),%eax
 
 	mov    %al,-0x4cc(%ebp,%edx,1)
    	mov    -0x60c(%ebp),%eax
        shl    $0x2,%eax
        add    $0x2,%eax
 	movb   $0x0,-0x4cc(%ebp,%eax,1)
 
    	mov    -0x60c(%ebp),%eax
        shl    $0x2,%eax
        add    $0x3,%eax
 	movb   $0x0,-0x4cc(%ebp,%eax,1)
 
 	addl   $0x1,-0x60c(%ebp)
L1148:  mov    -0x60c(%ebp),%eax
    	cmp    -0x604(%ebp),%eax
        setl   %al
        test   %al,%al
    	jne    L1000010C9
    	mov    -0x604(%ebp),%eax
        sub    $0x1,%eax
        mov    %eax,0x8(%esp)
    	lea    -0x4cc(%ebp),%eax
        mov    %eax,0x4(%esp)
    	mov    -0x61c(%ebp),%eax
        mov    %eax,(%esp)
       	call   wcsncpy@plt
    	mov    -0x604(%ebp),%eax
        sub    $0x1,%eax
 	lea    0x0(,%eax,4),%edx
    	mov    -0x61c(%ebp),%eax
        add    %edx,%eax
    	movl   $0x0,(%eax)
       	mov    $0x0,%eax
        jmp    L11E4
L11A9:  movzbl -0x5f7(%ebp),%eax
        test   %al,%al
        jne    L11D8
 	movzbl -0x5f6(%ebp),%eax
        cmp    $0x2,%al
        jne    L11D8
 	movzbl -0x5f2(%ebp),%eax
        cmp    $0x1,%al
        jne    L11D1
       	mov    $0x1,%eax
        jmp    L11E4
L11D1:  mov    $0xffffffff,%eax
        jmp    L11E4
L11D8:  mov    $0xffffffff,%eax
        jmp    L11E4
L11DF:  mov    $0xffffffff,%eax
L11E4:  mov    -0x1c(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L11FF
        jmp    L11FA
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L11FA:  call   __stack_chk_fail_local
L11FF:  add    $0x63c,%esp
        pop    %ebx
        pop    %esi
        pop    %edi
        pop    %ebp
        ret    
        
_Z15GetEnsembleNamelcPw:
        push   %ebp
        mov    %esp,%ebp
        push   %edi
        push   %esi
        push   %ebx
    	sub    $0x54c,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x6605,%ebx
        mov    0xc(%ebp),%eax
    	mov    %al,-0x52c(%ebp)
        mov    0x10(%ebp),%eax
    	mov    %eax,-0x530(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0x1c(%ebp)
        xor    %eax,%eax
    	lea    -0x4fe(%ebp),%edx
       	mov    $0x32,%esi
       	mov    $0x0,%eax
        mov    %edx,%ecx
        and    $0x2,%ecx
        test   %ecx,%ecx
        je     L1260
        mov    %ax,(%edx)
        add    $0x2,%edx
        sub    $0x2,%esi
L1260:  mov    %esi,%ecx
        shr    $0x2,%ecx
        mov    %edx,%edi
        rep stos %eax,%es:(%edi)
        mov    %edi,%edx
        mov    %esi,%ecx
        and    $0x2,%ecx
        test   %ecx,%ecx
        je     L127A
        mov    %ax,(%edx)
        add    $0x2,%edx
L127A:  mov    %esi,%ecx
        and    $0x1,%ecx
        test   %ecx,%ecx
        je     L127A
        mov    %al,(%edx)
        add    $0x1,%edx
L1288:  movb   $0xfe,-0x50a(%ebp)
 	movb   $0x1,-0x509(%ebp)
 	movb   $0x15,-0x508(%ebp)
 	movb   $0x1,-0x507(%ebp)
 	movb   $0x0,-0x506(%ebp)
 	movb   $0x5,-0x505(%ebp)
 	movb   $0xff,-0x504(%ebp)
 	movb   $0xff,-0x503(%ebp)
 	movb   $0xff,-0x502(%ebp)
 	movb   $0xff,-0x501(%ebp)
 	movb   $0x1,-0x500(%ebp)
 	movb   $0xfd,-0x4ff(%ebp)
 	movl   $0x0,-0x50e(%ebp)
 
        mov    0x8(%ebp),%eax
    	mov    %eax,-0x50e(%ebp)
 	movzbl -0x50b(%ebp),%eax
    	mov    %al,-0x504(%ebp)
 	movzbl -0x50c(%ebp),%eax
    	mov    %al,-0x503(%ebp)
 	movzbl -0x50d(%ebp),%eax
    	mov    %al,-0x502(%ebp)
 	movzbl -0x50e(%ebp),%eax
    	mov    %al,-0x501(%ebp)
 	movzbl -0x52c(%ebp),%eax
    	mov    %al,-0x500(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
 
    	lea    -0x524(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0xc,0x8(%esp)
 
    	lea    -0x50a(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L1375
       	mov    $0x0,%eax
       	jmp    L15DD
L1375:  mov    -0x524(%ebp),%eax
        cmp    $0xc,%eax
        je     L138A
       	mov    $0x0,%eax
       	jmp    L15DD
L138A:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        
    	lea    -0x524(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x32,0x8(%esp)
        
    	lea    -0x4fe(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L13CF
       	mov    $0x0,%eax
       	jmp    L15DD
L13CF:  mov    -0x524(%ebp),%eax
        cmp    $0x7,%eax
        jg     L13E4
       	mov    $0x0,%eax
       	jmp    L15DD
L13E4:  mov    -0x524(%ebp),%eax
        mov    %eax,0x4(%esp)
    	lea    -0x4fe(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi_plt
        test   %al,%al
    	je     L15D8
 	movzbl -0x4fd(%ebp),%eax
        cmp    $0x1,%al
    	jne    L15D1
 	movzbl -0x4fc(%ebp),%eax
        cmp    $0x15,%al
    	jne    L15D1
 	movzbl -0x4f9(%ebp),%eax
        movzbl %al,%eax
    	mov    %eax,-0x518(%ebp)
 	cmpl   $0x32,-0x518(%ebp)
        jle    L1445
       	mov    $0x0,%eax
       	jmp    L15DD
L1445:  mov    -0x518(%ebp),%eax
        mov    %eax,%edx
        shr    $0x1f,%edx
        add    %edx,%eax
        sar    %eax
    	mov    %eax,-0x514(%ebp)
 	movl   $0x0,-0x520(%ebp)
        
        jmp    L14BC
L1466:  mov    -0x520(%ebp),%eax
        add    $0x6,%eax
 	movzbl -0x4fe(%ebp,%eax,1),%eax
 
    	mov    %al,-0x525(%ebp)
    	mov    -0x520(%ebp),%eax
        lea    0x6(%eax),%edx
    	mov    -0x520(%ebp),%eax
        add    $0x7,%eax
 	movzbl -0x4fe(%ebp,%eax,1),%eax
 
 	mov    %al,-0x4fe(%ebp,%edx,1)
    	mov    -0x520(%ebp),%eax
        lea    0x7(%eax),%edx
 	movzbl -0x525(%ebp),%eax
 	mov    %al,-0x4fe(%ebp,%edx,1)
 	addl   $0x2,-0x520(%ebp)
L14BC:  mov    -0x520(%ebp),%eax
    	cmp    -0x518(%ebp),%eax
        setl   %al
        test   %al,%al
        jne    L1466
    	lea    -0x4cc(%ebp),%esi
       	mov    $0x0,%eax
       	mov    $0x12c,%edx
        mov    %esi,%edi
        mov    %edx,%ecx
        rep stos %eax,%es:(%edi)
 	movl   $0x0,-0x51c(%ebp)
 
        jmp    L1570
L14F1:  mov    -0x51c(%ebp),%eax
 	lea    0x0(,%eax,4),%edx
    	mov    -0x51c(%ebp),%eax
        add    $0x3,%eax
        add    %eax,%eax
 	movzbl -0x4fe(%ebp,%eax,1),%eax
 
 	mov    %al,-0x4cc(%ebp,%edx,1)
    	mov    -0x51c(%ebp),%eax
        shl    $0x2,%eax
        lea    0x1(%eax),%edx
    	mov    -0x51c(%ebp),%eax
        add    $0x3,%eax
        add    %eax,%eax
        add    $0x1,%eax
 	movzbl -0x4fe(%ebp,%eax,1),%eax
        
 	mov    %al,-0x4cc(%ebp,%edx,1)
    	mov    -0x51c(%ebp),%eax
        shl    $0x2,%eax
        add    $0x2,%eax
 	movb   $0x0,-0x4cc(%ebp,%eax,1)
 
    	mov    -0x51c(%ebp),%eax
        shl    $0x2,%eax
        add    $0x3,%eax
        movb   $0x0,-0x4cc(%ebp,%eax,1)
 
 	addl   $0x1,-0x51c(%ebp)
L1570:  mov    -0x51c(%ebp),%eax
    	cmp    -0x514(%ebp),%eax
        setl   %al
        test   %al,%al
    	jne    L1000014F1
    	mov    -0x514(%ebp),%eax
        sub    $0x1,%eax
        mov    %eax,0x8(%esp)
    	lea    -0x4cc(%ebp),%eax
        mov    %eax,0x4(%esp)
    	mov    -0x530(%ebp),%eax
        mov    %eax,(%esp)
       	call   wcsncpy@plt
    	mov    -0x514(%ebp),%eax
        sub    $0x1,%eax
 	lea    0x0(,%eax,4),%edx
    	mov    -0x530(%ebp),%eax
        add    %edx,%eax
    	movl   $0x0,(%eax)
       	mov    $0x1,%eax
        jmp    L15DD
L15D1:  mov    $0x0,%eax
        jmp    L15DD
L15D8:  mov    $0x0,%eax
L15DD:  mov    -0x1c(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L15F8
        jmp    L15F3
        mov    %eax,(%esp)
       	call   _Unwind_Resume_plt
       	call   __stack_chk_fail_local
    	add    $0x54c,%esp
        pop    %ebx
        pop    %esi
        pop    %edi
        pop    %ebp
        ret    

        
_Z14GetProgramNameclcPw:
        push   %ebp
        mov    %esp,%ebp
        push   %edi
        push   %esi
        push   %ebx
    	sub    $0x54c,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x620c,%ebx
        mov    0x8(%ebp),%edx
        mov    0x10(%ebp),%eax
    	mov    %dl,-0x52c(%ebp)
    	mov    %al,-0x530(%ebp)
        mov    0x14(%ebp),%eax
    	mov    %eax,-0x534(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0x1c(%ebp)
        xor    %eax,%eax
    	lea    -0x4fe(%ebp),%edx
       	mov    $0x32,%esi
       	mov    $0x0,%eax
        mov    %edx,%ecx
        and    $0x2,%ecx
        test   %ecx,%ecx
        je     L1662
        mov    %ax,(%edx)
        add    $0x2,%edx
        sub    $0x2,%esi
L1662:  mov    %esi,%ecx
        shr    $0x2,%ecx
        mov    %edx,%edi
        rep stos %eax,%es:(%edi)
        mov    %edi,%edx
        mov    %esi,%ecx
        and    $0x2,%ecx
        test   %ecx,%ecx
        je     L167C
        mov    %ax,(%edx)
        add    $0x2,%edx
L167C:  mov    %esi,%ecx
        and    $0x1,%ecx
        test   %ecx,%ecx
        je     L168A
        mov    %al,(%edx)
        add    $0x1,%edx
L168A:  movb   $0xfe,-0x50a(%ebp)
 	movb   $0x1,-0x509(%ebp)
 	movb   $0xf,-0x508(%ebp)
 	movb   $0x1,-0x507(%ebp)
 	movb   $0x0,-0x506(%ebp)
 	movb   $0x5,-0x505(%ebp)
 	movb   $0xff,-0x504(%ebp)
 	movb   $0xff,-0x503(%ebp)
 	movb   $0xff,-0x502(%ebp)
 	movb   $0xff,-0x501(%ebp)
 	movb   $0x1,-0x500(%ebp)
 	movb   $0xfd,-0x4ff(%ebp)
 	movl   $0x0,-0x50e(%ebp)
 
 	cmpb   $0x0,-0x52c(%ebp)
        je     L1704
 	cmpb   $0x1,-0x52c(%ebp)
        je     L1704
       	mov    $0x0,%eax
       	jmp    L1A04
L1704:  cmpb   $0x0,-0x52c(%ebp)
        jne    L174A
        mov    0xc(%ebp),%eax
    	mov    %eax,-0x50e(%ebp)
 	movzbl -0x50b(%ebp),%eax
    	mov    %al,-0x504(%ebp)
 	movzbl -0x50c(%ebp),%eax
    	mov    %al,-0x503(%ebp)
 	movzbl -0x50d(%ebp),%eax
    	mov    %al,-0x502(%ebp)
 	movzbl -0x50e(%ebp),%eax
    	mov    %al,-0x501(%ebp)
 	movzbl -0x530(%ebp),%eax
    	mov    %al,-0x500(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        
    	lea    -0x524(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0xc,0x8(%esp)
 
    	lea    -0x50a(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L179C
       	mov    $0x0,%eax
       	jmp    L1A04
L179C:  mov    -0x524(%ebp),%eax
        cmp    $0xc,%eax
        je     L17B1
       	mov    $0x0,%eax
       	jmp    L1A04
L17B1:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        
    	lea    -0x524(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x32,0x8(%esp)
        
    	lea    -0x4fe(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii_plt
        xor    $0x1,%eax
        test   %al,%al
        je     L17F6
       	mov    $0x0,%eax
       	jmp    L1A04
L17F6:  mov    -0x524(%ebp),%eax
        cmp    $0x7,%eax
        jg     L180B
       	mov    $0x0,%eax
       	jmp    L1A04
L180B:  mov    -0x524(%ebp),%eax
        mov    %eax,0x4(%esp)
    	lea    -0x4fe(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi_plt
        test   %al,%al
    	je     L19FF
 	movzbl -0x4fd(%ebp),%eax
        cmp    $0x1,%al
    	jne    L19F8
 	movzbl -0x4fc(%ebp),%eax
        cmp    $0xf,%al
    	jne    L19F8
 	movzbl -0x4f9(%ebp),%eax
        movzbl %al,%eax
    	mov    %eax,-0x518(%ebp)
 	cmpl   $0x32,-0x518(%ebp)
        jle    L186C
       	mov    $0x0,%eax
       	jmp    L1A04
L186C:  mov    -0x518(%ebp),%eax
        mov    %eax,%edx
        shr    $0x1f,%edx
        add    %edx,%eax
        sar    %eax
    	mov    %eax,-0x514(%ebp)
 	movl   $0x0,-0x520(%ebp)
        
        jmp    L18E3
L188D:  mov    -0x520(%ebp),%eax
        add    $0x6,%eax
 	movzbl -0x4fe(%ebp,%eax,1),%eax
 
    	mov    %al,-0x525(%ebp)
    	mov    -0x520(%ebp),%eax
        lea    0x6(%eax),%edx
    	mov    -0x520(%ebp),%eax
        add    $0x7,%eax
 	movzbl -0x4fe(%ebp,%eax,1),%eax
 
 	mov    %al,-0x4fe(%ebp,%edx,1)
    	mov    -0x520(%ebp),%eax
        lea    0x7(%eax),%edx
 	movzbl -0x525(%ebp),%eax
 	mov    %al,-0x4fe(%ebp,%edx,1)
 	addl   $0x2,-0x520(%ebp)
L18E3:  mov    -0x520(%ebp),%eax
    	cmp    -0x518(%ebp),%eax
        setl   %al
        test   %al,%al
        jne    L188D
    	lea    -0x4cc(%ebp),%esi
       	mov    $0x0,%eax
       	mov    $0x12c,%edx
        mov    %esi,%edi
        mov    %edx,%ecx
        rep stos %eax,%es:(%edi)
 	movl   $0x0,-0x51c(%ebp)
 
        jmp    L1997
L1918:  mov    -0x51c(%ebp),%eax
 	lea    0x0(,%eax,4),%edx
    	mov    -0x51c(%ebp),%eax
        add    $0x3,%eax
        add    %eax,%eax
 	movzbl -0x4fe(%ebp,%eax,1),%eax
 
 	mov    %al,-0x4cc(%ebp,%edx,1)
    	mov    -0x51c(%ebp),%eax
        shl    $0x2,%eax
        lea    0x1(%eax),%edx
    	mov    -0x51c(%ebp),%eax
        add    $0x3,%eax
        add    %eax,%eax
        add    $0x1,%eax
 	movzbl -0x4fe(%ebp,%eax,1),%eax
 
 	mov    %al,-0x4cc(%ebp,%edx,1)
    	mov    -0x51c(%ebp),%eax
        shl    $0x2,%eax
        add    $0x2,%eax
 	movb   $0x0,-0x4cc(%ebp,%eax,1)
 
    	mov    -0x51c(%ebp),%eax
        shl    $0x2,%eax
        add    $0x3,%eax
 	movb   $0x0,-0x4cc(%ebp,%eax,1)
 
 	addl   $0x1,-0x51c(%ebp)
L1997:  mov    -0x51c(%ebp),%eax
    	cmp    -0x514(%ebp),%eax
        setl   %al
        test   %al,%al
    	jne    L1918
    	mov    -0x514(%ebp),%eax
        sub    $0x1,%eax
        mov    %eax,0x8(%esp)
    	lea    -0x4cc(%ebp),%eax
        mov    %eax,0x4(%esp)
    	mov    -0x534(%ebp),%eax
        mov    %eax,(%esp)
       	call   wcsncpy@plt
    	mov    -0x514(%ebp),%eax
        sub    $0x1,%eax
 	lea    0x0(,%eax,4),%edx
    	mov    -0x534(%ebp),%eax
        add    %edx,%eax
    	movl   $0x0,(%eax)
       	mov    $0x1,%eax
        jmp    L1A04
L19F8:  mov    $0x0,%eax
        jmp    L1A04
L19FF:  mov    $0x0,%eax
L1A04:  mov    -0x1c(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L1A1F
        jmp    L1A1A
        mov    %eax,(%esp)
       	call   _Unwind_Resume_plt
       	call   __stack_chk_fail_local
    	add    $0x54c,%esp
        pop    %ebx
        pop    %esi
        pop    %edi
        pop    %ebp
        ret    
	
_Z17GetSignalStrengthPi:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x64,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x5dea,%ebx
        mov    0x8(%ebp),%eax
        mov    %eax,-0x3c(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
        movb   $0x0,-0x2d(%ebp)
 	movl   $0x0,-0x16(%ebp)
 	movl   $0x0,-0x12(%ebp)
    	movw   $0x0,-0xe(%ebp)
        movb   $0xfe,-0x1d(%ebp)
        movb   $0x1,-0x1c(%ebp)
        movb   $0x8,-0x1b(%ebp)
        movb   $0x1,-0x1a(%ebp)
        movb   $0x0,-0x19(%ebp)
        movb   $0x0,-0x18(%ebp)
        movb   $0xfd,-0x17(%ebp)
        movb   $0x0,-0x2d(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        
        lea    -0x2c(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x7,0x8(%esp)
 
        lea    -0x1d(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al  
        je     L1AC4
       	mov    $0xffffffff,%eax
       	jmp    L1BDC
L1AC4:  mov    -0x2c(%ebp),%eax
        cmp    $0x7,%eax
        je     L1AD6
       	mov    $0xffffffff,%eax
       	jmp    L1BDC
L1AD6:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        
        lea    -0x2c(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0xa,0x8(%esp)
 
        lea    -0x16(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L1B15
       	mov    $0xffffffff,%eax
       	jmp    L1BDC
L1B15:  mov    -0x2c(%ebp),%eax
        cmp    $0x7,%eax
        jg     L1B27
       	mov    $0xffffffff,%eax
       	jmp    L1BDC
L1B27:  mov    -0x2c(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x16(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi@plt
        test   %al,%al
    	je     L1BD7
        movzbl -0x11(%ebp),%eax
        cmp    $0x1,%al
        jne    L1B5B
        mov    -0x3c(%ebp),%eax
    	movl   $0x0,(%eax)
        movzbl -0x10(%ebp),%eax
       	jmp    L1BDC
L1B5B:  movzbl -0x11(%ebp),%eax
        cmp    $0x3,%al
        jne    L1BD0
        movzbl -0x10(%ebp),%eax
        test   %al,%al
        je     L1BC9
        movzbl -0xf(%ebp),%eax
        movzbl %al,%eax
        mov    %eax,%edx
        shl    $0x8,%edx
        movzbl -0xe(%ebp),%eax
        movzbl %al,%eax
        or     %eax,%edx
        mov    -0x3c(%ebp),%eax
        mov    %edx,(%eax)
    	fldl   -0x2278(%ebx)
        fstpl  -0x28(%ebp)
        movzbl -0x10(%ebp),%eax
        movzbl %al,%eax
        mov    %eax,-0x40(%ebp)
        fildl  -0x40(%ebp)
        fldl   -0x28(%ebp)
        fmulp  %st,%st(1)
        fstpl  -0x28(%ebp)
        fldl   -0x28(%ebp)
        fnstcw -0x42(%ebp)
        movzwl -0x42(%ebp),%eax
        mov    $0xc,%ah
        mov    %ax,-0x44(%ebp)
        fldcw  -0x44(%ebp)
        fistp  -0x46(%ebp)
        fldcw  -0x42(%ebp)
        movzwl -0x46(%ebp),%eax
        mov    %al,-0x2d(%ebp)
        movzbl -0x2d(%ebp),%eax
        jmp    L1BDC
L1BC9:  mov    $0x0,%eax
        jmp    L1BDC
L1BD0:  mov    $0xffffffff,%eax
        jmp    L1BDC
L1BD7:  mov    $0xffffffff,%eax
L1BDC:  mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L1BF7
        jmp    L1BF2
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L1BF2:  call   __stack_chk_fail_local
L1BF7:  add    $0x64,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z19GetDABSignalQualityv:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x44,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x5c17,%ebx
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
 	movl   $0x0,-0x14(%ebp)
 	movl   $0x0,-0x10(%ebp)
        movb   $0xfe,-0x1b(%ebp)
        movb   $0x1,-0x1a(%ebp)
        movb   $0x13,-0x19(%ebp)
        movb   $0x1,-0x18(%ebp)
        movb   $0x0,-0x17(%ebp)
        movb   $0x0,-0x16(%ebp)
        movb   $0xfd,-0x15(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
 
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x7,0x8(%esp)
 
        lea    -0x1b(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L1C83
       	mov    $0xffffffff,%eax
       	jmp    L1D18
L1C83:  mov    -0x20(%ebp),%eax
        cmp    $0x7,%eax
        je     L1C95
       	mov    $0xffffffff,%eax
       	jmp    L1D18
L1C95:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
 
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
 
        lea    -0x14(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L1CD1
       	mov    $0xffffffff,%eax
        jmp    L1D18
L1CD1:  mov    -0x20(%ebp),%eax
        cmp    $0x7,%eax
        jg     L1CE0
       	mov    $0xffffffff,%eax
        jmp    L1D18
L1CE0:  mov    -0x20(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x14(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi@plt
        test   %al,%al
        je     L1D13
        movzbl -0x13(%ebp),%eax
        cmp    $0x1,%al
        jne    L1D0C
        movzbl -0x12(%ebp),%eax
        cmp    $0x13,%al
        jne    L1D0C
        movzbl -0xe(%ebp),%eax
        jmp    L1D18
L1D0C:  mov    $0xffffffff,%eax
        jmp    L1D18
L1D13:  mov    $0xffffffff,%eax
L1D18:  mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L1D33
        jmp    L1D2E
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L1D2E:  call   __stack_chk_fail_local
L1D33:  add    $0x44,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z13ClearDatabasev:     
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x44,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x5adb,%ebx
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
 	movl   $0x0,-0x1b(%ebp)
    	movw   $0x0,-0x17(%ebp)
        movb   $0x0,-0x15(%ebp)
        movb   $0xfe,-0x14(%ebp)
        movb   $0x0,-0x13(%ebp)
        movb   $0x1,-0x12(%ebp)
        movb   $0x1,-0x11(%ebp)
        movb   $0x0,-0x10(%ebp)
        movb   $0x1,-0xf(%ebp)
        movb   $0x1,-0xe(%ebp)
        movb   $0xfd,-0xd(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
 
        lea    -0x14(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L1DC6
       	mov    $0x0,%eax
       	jmp    L1E59
L1DC6:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
 
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x7,0x8(%esp)
 
        lea    -0x1b(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L1E02
       	mov    $0x0,%eax
        jmp    L1E59
L1E02:  mov    -0x20(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x1b(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi@plt
        test   %al,%al
        je     L1E54
        movzbl -0x19(%ebp),%eax
        cmp    $0x1,%al
        jne    L1E4D
 	movl   $0xf4240,(%esp)
       	call   usleep@plt
        jmp    L1E3A
L1E2E: 	movl   $0x7a120,(%esp)
       	call   usleep@plt
L1E3A:  call   _Z10IsSysReadyv@plt
        xor    $0x1,%eax
        test   %al,%al
        jne    L1E2E
       	mov    $0x1,%eax
        jmp    L1E59
L1E4D:  mov    $0x0,%eax
        jmp    L1E59
       	mov    $0x0,%eax
        mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L1E74
        jmp    L1E6F
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L1E6F:  call   __stack_chk_fail_local
L1E74:  add    $0x44,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z8HardMutev:   
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x24,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x599a,%ebx
 	movb   $0x1,0xed(%ebx)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0xc(%ebp),%edx
        mov    %edx,0x8(%esp)
 	movl   $0x5415,0x4(%esp)
 
        mov    %eax,(%esp)
       	call   ioctl@plt
        mov    -0xc(%ebp),%eax
        and    $0xfffffffb,%eax
        mov    %eax,-0xc(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0xc(%ebp),%edx
        mov    %edx,0x8(%esp)
 	movl   $0x5418,0x4(%esp)
 
        mov    %eax,(%esp)
       	call   ioctl@plt
 	movl   $0x55730,(%esp)
       	call   usleep@plt
        jmp    L1EF0
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L1EF0:  add    $0x24,%esp
        pop    %ebx
        pop    %ebp
        ret    
        
_Z10HardUnMutev:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x24,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x591e,%ebx
 	movl   $0xcf850,(%esp)
       	call   usleep@plt
 	movb   $0x0,0xed(%ebx)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0xc(%ebp),%edx
        mov    %edx,0x8(%esp)
 	movl   $0x5415,0x4(%esp)
 
        mov    %eax,(%esp)
       	call   ioctl@plt
        mov    -0xc(%ebp),%eax
        or     $0x4,%eax
        mov    %eax,-0xc(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0xc(%ebp),%edx
        mov    %edx,0x8(%esp)
 	movl   $0x5418,0x4(%esp)
 
        mov    %eax,(%esp)
       	call   ioctl@plt
        jmp    L1F6C
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L1F6C:  add    $0x24,%esp
        pop    %ebx
        pop    %ebp
        ret


_Z13OpenRadioPortPcb:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x74,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x58a2,%ebx
        mov    0xc(%ebp),%eax
        mov    0x8(%ebp),%edx
        mov    %edx,-0x5c(%ebp)
        mov    %al,-0x60(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        test   %eax,%eax
        jg     L1FC4
 	movl   $0x902,0x4(%esp)
        mov    -0x5c(%ebp),%eax
        mov    %eax,(%esp)
       	call   open@plt
        mov    %eax,%edx
    	mov    -0x48(%ebx),%eax
        mov    %edx,(%eax)
L1FC4:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        cmp    $0xffffffff,%eax
        jne    L1FE9
    	lea    -0x22a0(%ebx),%eax
        mov    %eax,(%esp)
       	call   perror@plt
       	mov    $0x0,%eax
       	jmp    L2164
L1FE9:  movzbl -0x60(%ebp),%eax
    	mov    %al,0xd0(%ebx)
        cmpb   $0x0,-0x60(%ebp)
        je     L1FFE
       	call   _Z8HardMutev@plt
L1FFE:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x8(%esp)
 	movl   $0x4,0x4(%esp)
        mov    %eax,(%esp)
       	call   fcntl@plt
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0x48(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   tcgetattr@plt
 	movl   $0x1001,0x4(%esp)
        lea    -0x48(%ebp),%eax
        mov    %eax,(%esp)
       	call   cfsetispeed@plt
 	movl   $0x1001,0x4(%esp)
        lea    -0x48(%ebp),%eax
        mov    %eax,(%esp)
       	call   cfsetospeed@plt
        mov    -0x40(%ebp),%eax
       	or     $0x880,%eax
        mov    %eax,-0x40(%ebp)
        mov    -0x40(%ebp),%eax
        and    $0xfe,%ah
        mov    %eax,-0x40(%ebp)
        mov    -0x40(%ebp),%eax
        and    $0xffffffbf,%eax
        mov    %eax,-0x40(%ebp)
        mov    -0x40(%ebp),%eax
        and    $0xffffffcf,%eax
        mov    %eax,-0x40(%ebp)
        mov    -0x40(%ebp),%eax
        or     $0x30,%eax
        mov    %eax,-0x40(%ebp)
        mov    -0x40(%ebp),%eax
       	and    $0x7fffffff,%eax
        mov    %eax,-0x40(%ebp)
        mov    -0x3c(%ebp),%eax
        and    $0xffffffe4,%eax
        mov    %eax,-0x3c(%ebp)
        mov    -0x48(%ebp),%eax
        and    $0xe2,%ah
        mov    %eax,-0x48(%ebp)
        mov    -0x44(%ebp),%eax
        and    $0xfffffffe,%eax
        mov    %eax,-0x44(%ebp)
        movb   $0x0,-0x31(%ebp)
        movb   $0x1,-0x32(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0x48(%ebp),%edx
        mov    %edx,0x8(%esp)
 	movl   $0x0,0x4(%esp)
        mov    %eax,(%esp)
       	call   tcsetattr@plt
       	call   _Z9ResetHighv@plt
       	call   _Z16ClearInputBufferv@plt
 	movl   $0xc3500,(%esp)
       	call   usleep@plt
       	call   _Z10IsSysReadyv@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L2154
 	movl   $0x0,-0x50(%ebp)
        jmp    L2142
L2102:  call   _Z14HardResetRadiov@plt
        test   %al,%al
        je     L213E
 	movl   $0x0,-0x4c(%ebp)
        jmp    L2142
L2114:  call   _Z10IsSysReadyv@plt
        test   %al,%al
        je     L212F
       	call   _Z15GetTotalProgramv@plt
    	mov    %eax,0xe8(%ebx)
       	mov    $0x1,%eax
        jmp    L2164
L212F:  addl   $0x1,-0x4c(%ebp)
L2133:  cmpl   $0x1,-0x4c(%ebp)
        setle  %al
        test   %al,%al
        jne    L2114
L213E:  addl   $0x1,-0x50(%ebp)
L2142:  cmpl   $0x1,-0x50(%ebp)
        setle  %al
        test   %al,%al
        jne    L2102
       	mov    $0x0,%eax
        jmp    L2164
L2154:  call   _Z15GetTotalProgramv@plt
    	mov    %eax,0xe8(%ebx)
       	mov    $0x1,%eax
L2164:  mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L217F
        jmp    L217A
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L217A:  call   __stack_chk_fail_local
L217F:  add    $0x74,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z14CloseRadioPortv:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x14,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x568f,%ebx
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        test   %eax,%eax
        je     L21B3
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        mov    %eax,(%esp)
       	call   close@plt
L21B3:  mov    -0x48(%ebx),%eax
    	movl   $0x0,(%eax)
       	mov    $0x1,%eax
        add    $0x14,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z14HardResetRadiov:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x34,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x564a,%ebx
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0x10(%ebp),%edx
        mov    %edx,0x8(%esp)
 	movl   $0x5415,0x4(%esp)
        mov    %eax,(%esp)
       	call   ioctl@plt
        mov    -0x10(%ebp),%eax
        or     $0x2,%eax
        mov    %eax,-0x10(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0x10(%ebp),%edx
        mov    %edx,0x8(%esp)
 	movl   $0x5418,0x4(%esp)
        mov    %eax,(%esp)
       	call   ioctl@plt
 	movl   $0x186a0,(%esp)
       	call   usleep@plt
        mov    -0x10(%ebp),%eax
        and    $0xfffffffd,%eax
        mov    %eax,-0x10(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
        lea    -0x10(%ebp),%edx
        mov    %edx,0x8(%esp)
 	movl   $0x5418,0x4(%esp)
        mov    %eax,(%esp)
       	call   ioctl@plt
 	movl   $0xf4240,(%esp)
       	call   usleep@plt
    	movw   $0x0,-0x12(%ebp)
 	movl   $0x0,-0xc(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        lea    -0xc(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x1,0x8(%esp)
        lea    -0x12(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii@plt
        test   %al,%al
        je     L22B8
        movzbl -0x12(%ebp),%eax
        cmp    $0x1b,%al
        jne    L22B1
       	mov    $0x1,%eax
        jmp    L22BD
L22B1:  mov    $0x0,%eax
        jmp    L22BD
L22B8:  mov    $0x0,%eax
L22BD:  jmp    L22C7
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L22C7:  add    $0x34,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z11SetHeadroomc:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x54,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x5547,%ebx
        mov    0x8(%ebp),%eax
        mov    %al,-0x2c(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
        movb   $0xfe,-0x1c(%ebp)
        movb   $0x1,-0x1b(%ebp)
        movb   $0x20,-0x1a(%ebp)
        movb   $0x1,-0x19(%ebp)
        movb   $0x0,-0x18(%ebp)
        movb   $0x1,-0x17(%ebp)
        movb   $0x0,-0x16(%ebp)
        movb   $0xfd,-0x15(%ebp)
 	movl   $0x0,-0x14(%ebp)
 	movl   $0x0,-0x10(%ebp)
        cmpb   $0x0,-0x2c(%ebp)
        js     L232A
        cmpb   $0xc,-0x2c(%ebp)
        jle    L2334
L232A:  mov    $0x0,%eax
       	jmp    L23F3
L2334:  movzbl -0x2c(%ebp),%eax
        mov    %al,-0x16(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
        lea    -0x1c(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L2377
       	mov    $0x0,%eax
        jmp    L23F3
L2377:  mov    -0x20(%ebp),%eax
        cmp    $0x8,%eax
        je     L2386
       	mov    $0x0,%eax
        jmp    L23F3
L2386:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
        lea    -0x14(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L23C2
       	mov    $0x0,%eax
        jmp    L23F3
L23C2:  mov    -0x20(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x14(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi@plt
        test   %al,%al
        je     L23EE
        movzbl -0x12(%ebp),%eax
        cmp    $0x1,%al
        jne    L23E7
       	mov    $0x1,%eax
        jmp    L23F3
L23E7:  mov    $0x0,%eax
        jmp    L23F3
       	mov    $0x0,%eax
        mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L240E
        jmp    L2409
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L2409:  call   __stack_chk_fail_local
L240E:  add    $0x54,%esp
        pop    %ebx
        pop    %ebp
        ret    
        
_Z11GetHeadroomv:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x44,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x5400,%ebx
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
        movb   $0xfe,-0x1b(%ebp)
        movb   $0x1,-0x1a(%ebp)
        movb   $0x29,-0x19(%ebp)
        movb   $0x1,-0x18(%ebp)
        movb   $0x0,-0x17(%ebp)
        movb   $0x0,-0x16(%ebp)
        movb   $0xfd,-0x15(%ebp)
 	movl   $0x0,-0x14(%ebp)
 	movl   $0x0,-0x10(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x7,0x8(%esp)
        lea    -0x1b(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L2497
       	mov    $0xffffffff,%eax
        jmp    L2503
L2497:  mov    -0x20(%ebp),%eax
        cmp    $0x7,%eax
        je     L24A6
       	mov    $0xffffffff,%eax
        jmp    L2503
L24A6:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
        lea    -0x14(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L24E2
       	mov    $0xffffffff,%eax
        jmp    L2503
L24E2:  mov    -0x20(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x14(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi@plt
        test   %al,%al
        je     L24FE
        movzbl -0xe(%ebp),%eax
        jmp    L2503
L24FE:  mov    $0xffffffff,%eax
L2503:  mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L251E
        jmp    L2519
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L2519:  call   __stack_chk_fail_local
L251E:  add    $0x44,%esp
        pop    %ebx
        pop    %ebp
        ret    
        
_Z9SetVolumec:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x54,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x52f0,%ebx
        mov    0x8(%ebp),%eax
        mov    %al,-0x2c(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
        movb   $0xfe,-0x14(%ebp)
        movb   $0x1,-0x13(%ebp)
        movb   $0xc,-0x12(%ebp)
        movb   $0x1,-0x11(%ebp)
        movb   $0x0,-0x10(%ebp)
        movb   $0x1,-0xf(%ebp)
        movb   $0x0,-0xe(%ebp)
        movb   $0xfd,-0xd(%ebp)
 	movl   $0x0,-0x1b(%ebp)
    	movw   $0x0,-0x17(%ebp)
        movb   $0x0,-0x15(%ebp)
        cmpb   $0x0,-0x2c(%ebp)
        js     L2584
        cmpb   $0x10,-0x2c(%ebp)
        jle    L258E
L2584:  mov    $0x0,%eax
       	jmp    L2641
L258E:  movzbl -0x2c(%ebp),%eax
        mov    %al,-0xe(%ebp)
        cmpb   $0x0,-0x2c(%ebp)
        jne    L25AB
 	movzbl 0xd0(%ebx),%eax
        test   %al,%al
        je     L25AB
       	call   _Z8HardMutev@plt
L25AB:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
        lea    -0x14(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L25E7
       	mov    $0x0,%eax
        jmp    L2641
L25E7:  mov    -0x20(%ebp),%eax
        cmp    $0x8,%eax
        je     L25F6
       	mov    $0x0,%eax
        jmp    L2641
L25F6:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x7,0x8(%esp)
        lea    -0x1b(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L2632
       	mov    $0x0,%eax
        jmp    L2641
L2632:  movzbl -0x2c(%ebp),%eax
    	mov    %al,0xee(%ebx)
       	mov    $0x1,%eax
L2641:  mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L265C
        jmp    L2657
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L2657:  call   __stack_chk_fail_local
L265C:  add    $0x54,%esp
        pop    %ebx
        pop    %ebp
        ret


_Z13SetStereoModec:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x54,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x51b2,%ebx
        mov    0x8(%ebp),%eax
        mov    %al,-0x2c(%ebp)
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
        movb   $0xfe,-0x14(%ebp)
        movb   $0x1,-0x13(%ebp)
        movb   $0x9,-0x12(%ebp)
        movb   $0x1,-0x11(%ebp)
        movb   $0x0,-0x10(%ebp)
        movb   $0x1,-0xf(%ebp)
        movb   $0x1,-0xe(%ebp)
        movb   $0xfd,-0xd(%ebp)
 	movl   $0x0,-0x1b(%ebp)
    	movw   $0x0,-0x17(%ebp)
        movb   $0x0,-0x15(%ebp)
        cmpb   $0x0,-0x2c(%ebp)
        js     L26C2
        cmpb   $0x1,-0x2c(%ebp)
        jle    L26CC
L26C2:  mov    $0x0,%eax
       	jmp    L275F
L26CC:  movzbl -0x2c(%ebp),%eax
        mov    %al,-0xe(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
        lea    -0x14(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L270F
       	mov    $0x0,%eax
        jmp    L275F
L270F:  mov    -0x20(%ebp),%eax
        cmp    $0x8,%eax
        je     L271E
       	mov    $0x0,%eax
        jmp    L275F
L271E:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x7,0x8(%esp)
        lea    -0x1b(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L275A
       	mov    $0x0,%eax
        jmp    L275F
L275A:  mov    $0x1,%eax
L275F:  mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L277A
        jmp    L2775
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L2775:  call   __stack_chk_fail_local
L277A:  add    $0x54,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z9GetVolumev:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x44,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x5094,%ebx
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
        movb   $0xfe,-0x1b(%ebp)
        movb   $0x1,-0x1a(%ebp)
        movb   $0xd,-0x19(%ebp)
        movb   $0x1,-0x18(%ebp)
        movb   $0x0,-0x17(%ebp)
        movb   $0x0,-0x16(%ebp)
        movb   $0xfd,-0x15(%ebp)
 	movl   $0x0,-0x14(%ebp)
 	movl   $0x0,-0x10(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x7,0x8(%esp)
        lea    -0x1b(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L2803
       	mov    $0xffffffff,%eax
        jmp    L2879
L2803:  mov    -0x20(%ebp),%eax
        cmp    $0x7,%eax
        je     L2812
       	mov    $0xffffffff,%eax
        jmp    L2879
L2812:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        lea    -0x20(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
        lea    -0x14(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L284E
       	mov    $0xffffffff,%eax
        jmp    L2879
L284E:  mov    -0x20(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x14(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi@plt
        test   %al,%al
        je     L2874
        movzbl -0xe(%ebp),%eax
    	mov    %al,0xee(%ebx)
        movzbl -0xe(%ebp),%eax
        jmp    L2879
L2874:  mov    $0xffffffff,%eax
L2879:  mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L2894
        jmp    L288F
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L288F:  call   __stack_chk_fail_local
L2894:  add    $0x44,%esp
        pop    %ebx
        pop    %ebp
        ret    


_Z12GetFrequencyv:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x44,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x4f7a,%ebx
    	mov    %gs:0x14,%eax
        mov    %eax,-0xc(%ebp)
        xor    %eax,%eax
        movb   $0xfe,-0x17(%ebp)
        movb   $0x1,-0x16(%ebp)
        movb   $0x14,-0x15(%ebp)
        movb   $0x1,-0x14(%ebp)
        movb   $0x0,-0x13(%ebp)
        movb   $0x4,-0x12(%ebp)
        movb   $0x0,-0x11(%ebp)
        movb   $0x0,-0x10(%ebp)
        movb   $0x0,-0xf(%ebp)
        movb   $0x0,-0xe(%ebp)
        movb   $0xfd,-0xd(%ebp)
 	movl   $0x0,-0x1f(%ebp)
 	movl   $0x0,-0x1b(%ebp)
    	mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x0,0x10(%esp)
        lea    -0x24(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0xb,0x8(%esp)
        lea    -0x17(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z16WriteSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L2930
       	mov    $0xffffffff,%eax
       	jmp    L29B3
L2930:  mov    -0x24(%ebp),%eax
        cmp    $0xb,%eax
        je     L293F
       	mov    $0xffffffff,%eax
        jmp    L29B3
L293F:  mov    -0x48(%ebx),%eax
        mov    (%eax),%eax
 	movl   $0x1,0x10(%esp)
        lea    -0x24(%ebp),%edx
        mov    %edx,0xc(%esp)
 	movl   $0x8,0x8(%esp)
        lea    -0x1f(%ebp),%edx
        mov    %edx,0x4(%esp)
        mov    %eax,(%esp)
       	call   _Z15ReadSerialBytesiPhiPii@plt
        xor    $0x1,%eax
        test   %al,%al
        je     L297B
       	mov    $0xffffffff,%eax
        jmp    L29B3
L297B:  mov    -0x24(%ebp),%eax
        mov    %eax,0x4(%esp)
        lea    -0x1f(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z10GoodHeaderPhi@plt
        test   %al,%al
        je     L29AE
        movzbl -0x1e(%ebp),%eax
        cmp    $0x1,%al
        jne    L29A7
        movzbl -0x1d(%ebp),%eax
        cmp    $0x14,%al
        jne    L29A7
        movzbl -0x19(%ebp),%eax
        jmp    L29B3
L29A7:  mov    $0xffffffff,%eax
        jmp    L29B3
L29AE:  mov    $0xffffffff,%eax
L29B3:  mov    -0xc(%ebp),%edx
 	xor    %gs:0x14,%edx
        je     L29CE
        jmp    L29C9
        mov    %eax,(%esp)
       	call   _Unwind_Resume@plt
L29C9:  call   __stack_chk_fail_local
L29CE:  add    $0x44,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z10VolumePlusv:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x24,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x4e40,%ebx
       	call   _Z9GetVolumev@plt
        mov    %al,-0x9(%ebp)
        cmpb   $0xf,-0x9(%ebp)
        jg     L29F8
        addb   $0x1,-0x9(%ebp)
L29F8:  movsbl -0x9(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z9SetVolumec@plt
        test   %al,%al
        je     L2A0E
        movzbl -0x9(%ebp),%eax
        jmp    L2A13
L2A0E:  mov    $0xffffffff,%eax
L2A13:  add    $0x24,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z11VolumeMinusv:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x24,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x4dfb,%ebx
       	call   _Z9GetVolumev@plt
        mov    %al,-0x9(%ebp)
        cmpb   $0x0,-0x9(%ebp)
        jle    L2A3D
        subb   $0x1,-0x9(%ebp)
L2A3D:  movsbl -0x9(%ebp),%eax
        mov    %eax,(%esp)
       	call   _Z9SetVolumec@plt
        test   %al,%al
        je     L2A53
        movzbl -0x9(%ebp),%eax
        jmp    L2A58
L2A53:  mov    $0xffffffff,%eax
L2A58:  add    $0x24,%esp
        pop    %ebx
        pop    %ebp
        ret    

_Z10VolumeMutev:
        push   %ebp
        mov    %esp,%ebp
        push   %ebx
        sub    $0x24,%esp
       	call   __x86.get_pc_thunk.bx
    	add    $0x4db6,%ebx
       	call   _Z9GetVolumev@plt
        mov    %al,-0x9(%ebp)
        cmpb   $0x0,-0x9(%ebp)
        jne    L2A92
 	movzbl 0xec(%ebx),%eax
        movsbl %al,%eax
        mov    %eax,(%esp)
       	call   _Z9SetVolumec@plt
        jmp    L2AA8
L2A92:  movzbl -0x9(%ebp),%eax
    	mov    %al,0xec(%ebx)
 	movl   $0x0,(%esp)
        call   _Z9SetVolumec@plt
L2AA8:  add    $0x24,%esp
        pop    %ebx
        pop    %ebp
        ret    


        
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,054h
		call	  L10000011B
		add	EBX,04D66h
		mov	EAX,8[EBP]
		mov	-02Ch[EBP],AL
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	byte ptr -01Ch[EBP],0FEh
		mov	byte ptr -01Bh[EBP],1
		mov	byte ptr -01Ah[EBP],2
		mov	byte ptr -019h[EBP],1
		mov	byte ptr -018h[EBP],0
		mov	byte ptr -017h[EBP],1
		mov	byte ptr -016h[EBP],0
		mov	byte ptr -015h[EBP],0FDh
		mov	dword ptr -014h[EBP],0
		mov	dword ptr -010h[EBP],0
		movzx	EAX,byte ptr -02Ch[EBP]
		mov	-016h[EBP],AL
		movzx	EAX,byte ptr 0D0h[EBX]
		test	AL,AL
		je	L2B16
		call	  LFFFFFF30
L2B16:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-01Ch[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L2B52
		mov	EAX,0
		jmp short	L2BBF
L2B52:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-014h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L2B8E
		mov	EAX,0
		jmp short	L2BBF
L2B8E:		mov	EAX,-020h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-014h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		test	AL,AL
		je	L2BBA
		movzx	EAX,byte ptr -012h[EBP]
		cmp	AL,1
		jne	L2BB3
		mov	EAX,1
		jmp short	L2BBF
L2BB3:		mov	EAX,0
		jmp short	L2BBF
L2BBA:		mov	EAX,0
L2BBF:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L2BDA
		jmp short	L2BD5
		mov	[ESP],EAX
		call	  LFFFFFFA0
L2BD5:		call	  L5550
L2BDA:		add	ESP,054h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,054h
		call	  L10000011B
		add	EBX,04C34h
		mov	EDX,8[EBP]
		mov	EAX,0Ch[EBP]
		mov	-02Ch[EBP],DL
		mov	-030h[EBP],AL
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	byte ptr -015h[EBP],0FEh
		mov	byte ptr -014h[EBP],1
		mov	byte ptr -013h[EBP],3
		mov	byte ptr -012h[EBP],1
		mov	byte ptr -011h[EBP],0
		mov	byte ptr -010h[EBP],2
		mov	byte ptr -0Fh[EBP],0
		mov	byte ptr -0Eh[EBP],0
		mov	byte ptr -0Dh[EBP],0FDh
		mov	dword ptr -01Dh[EBP],0
		mov	dword ptr -019h[EBP],0
		movzx	EAX,byte ptr 0D0h[EBX]
		test	AL,AL
		je	L2C4B
		call	  LFFFFFF30
L2C4B:		call	  LFFFFFF60
		movzx	EAX,byte ptr -02Ch[EBP]
		mov	-0Fh[EBP],AL
		movzx	EAX,byte ptr -030h[EBP]
		mov	-0Eh[EBP],AL
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-024h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],9
		lea	EDX,-015h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L2C9A
		mov	EAX,0
		jmp short	L2D07
L2C9A:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-024h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-01Dh[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L2CD6
		mov	EAX,0
		jmp short	L2D07
L2CD6:		mov	EAX,-024h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-01Dh[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		test	AL,AL
		je	L2D02
		movzx	EAX,byte ptr -01Bh[EBP]
		cmp	AL,1
		jne	L2CFB
		mov	EAX,1
		jmp short	L2D07
L2CFB:		mov	EAX,0
		jmp short	L2D07
L2D02:		mov	EAX,0
L2D07:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L2D22
		jmp short	L2D1D
		mov	[ESP],EAX
		call	  LFFFFFFA0
L2D1D:		call	  L5550
L2D22:		add	ESP,054h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,054h
		call	  L10000011B
		add	EBX,04AECh
		mov	EDX,8[EBP]
		mov	EAX,0Ch[EBP]
		mov	-02Ch[EBP],DL
		mov	-030h[EBP],AL
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	byte ptr -015h[EBP],0FEh
		mov	byte ptr -014h[EBP],1
		mov	byte ptr -013h[EBP],3
		mov	byte ptr -012h[EBP],1
		mov	byte ptr -011h[EBP],0
		mov	byte ptr -010h[EBP],2
		mov	byte ptr -0Fh[EBP],0
		mov	byte ptr -0Eh[EBP],0
		mov	byte ptr -0Dh[EBP],0FDh
		mov	dword ptr -01Dh[EBP],0
		mov	dword ptr -019h[EBP],0
		movzx	EAX,byte ptr 0D0h[EBX]
		test	AL,AL
		je	L2D93
		call	  LFFFFFF30
L2D93:		movzx	EAX,byte ptr -02Ch[EBP]
		mov	-0Fh[EBP],AL
		movzx	EAX,byte ptr -030h[EBP]
		mov	-0Eh[EBP],AL
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-024h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],9
		lea	EDX,-015h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L2DDD
		mov	EAX,0
		jmp short	L2E4A
L2DDD:		mov	EAX,0FFFFFFB8h[EBX]
_Z14GetProgramNameclcPw:
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-024h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-01Dh[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L2E19
		mov	EAX,0
		jmp short	L2E4A
L2E19:		mov	EAX,-024h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-01Dh[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		test	AL,AL
		je	L2E45
		movzx	EAX,byte ptr -01Bh[EBP]
		cmp	AL,1
		jne	L2E3E
		mov	EAX,1
		jmp short	L2E4A
L2E3E:		mov	EAX,0
		jmp short	L2E4A
L2E45:		mov	EAX,0
L2E4A:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L2E65
		jmp short	L2E60
		mov	[ESP],EAX
		call	  LFFFFFFA0
L2E60:		call	  L5550
L2E65:		add	ESP,054h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,044h
		call	  L10000011B
		add	EBX,049A9h
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	byte ptr -01Eh[EBP],0FEh
		mov	byte ptr -01Dh[EBP],1
		mov	byte ptr -01Ch[EBP],7
		mov	byte ptr -01Bh[EBP],1
		mov	byte ptr -01Ah[EBP],0
		mov	byte ptr -019h[EBP],0
		mov	byte ptr -018h[EBP],0FDh
		mov	dword ptr -017h[EBP],0
		mov	dword ptr -013h[EBP],0
		mov	word ptr -0Fh[EBP],0
		mov	byte ptr -0Dh[EBP],0
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-028h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],7
		lea	EDX,-01Eh[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L2EFB
		mov	EAX,0FFFFFFFFh
		jmp	  L2F87
L2EFB:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-028h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],0Bh
		lea	EDX,-017h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L2F37
		mov	EAX,0FFFFFFFFh
		jmp short	L2F87
L2F37:		mov	EAX,-028h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-017h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		test	AL,AL
		je	L2F82
		movzx	EAX,byte ptr -011h[EBP]
		movzx	EAX,AL
		mov	EDX,EAX
		shl	EDX,018h
		movzx	EAX,byte ptr -010h[EBP]
		movzx	EAX,AL
		shl	EAX,010h
		or	EDX,EAX
		movzx	EAX,byte ptr -0Fh[EBP]
		movzx	EAX,AL
		shl	EAX,8
		or	EDX,EAX
		movzx	EAX,byte ptr -0Eh[EBP]
		movzx	EAX,AL
		or	EAX,EDX
		mov	-024h[EBP],EAX
		mov	EAX,-024h[EBP]
		jmp short	L2F87
L2F82:		mov	EAX,0FFFFFFFFh
L2F87:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L2FA2
		jmp short	L2F9D
		mov	[ESP],EAX
		call	  LFFFFFFA0
L2F9D:		call	  L5550
L2FA2:		add	ESP,044h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,064h
		call	  L10000011B
		add	EBX,0486Ch
		mov	EDX,8[EBP]
		mov	EAX,0Ch[EBP]
		mov	-03Ch[EBP],DL
		mov	-040h[EBP],AL
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	byte ptr -019h[EBP],0FEh
		mov	byte ptr -018h[EBP],1
		mov	byte ptr -017h[EBP],021h
		mov	byte ptr -016h[EBP],1
		mov	byte ptr -015h[EBP],0
		mov	byte ptr -014h[EBP],6
		mov	byte ptr -013h[EBP],0
		mov	byte ptr -012h[EBP],0
		mov	byte ptr -011h[EBP],0
		mov	byte ptr -010h[EBP],0
		mov	byte ptr -0Fh[EBP],0
		mov	byte ptr -0Eh[EBP],0
		mov	byte ptr -0Dh[EBP],0FDh
		mov	dword ptr -021h[EBP],0
		mov	dword ptr -01Dh[EBP],0
		cmp	byte ptr -03Ch[EBP],0
		je	L301F
		cmp	byte ptr -03Ch[EBP],1
		jne	L302E
L301F:		movzx	EAX,byte ptr -03Ch[EBP]
		mov	-013h[EBP],AL
		cmp	byte ptr -040h[EBP],0
		jns	L3038
		jmp short	L3051
L302E:		mov	EAX,0
		jmp	  L314C
L3038:		cmp	byte ptr -040h[EBP],9
		jg	L3051
		movzx	EAX,byte ptr -040h[EBP]
		mov	-012h[EBP],AL
		mov	EAX,010h[EBP]
		cmp	EAX,030D3Fh
		jbe	L305B
		jmp short	L30B4
L3051:		mov	EAX,0
		jmp	  L314C
L305B:		mov	EAX,010h[EBP]
		mov	-025h[EBP],EAX
		movzx	EAX,byte ptr -022h[EBP]
		mov	-011h[EBP],AL
		movzx	EAX,byte ptr -023h[EBP]
		mov	-010h[EBP],AL
		movzx	EAX,byte ptr -024h[EBP]
		mov	-0Fh[EBP],AL
		movzx	EAX,byte ptr -025h[EBP]
		mov	-0Eh[EBP],AL
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-02Ch[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],0Dh
		lea	EDX,-019h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L30C8
		jmp short	L30BE
L30B4:		mov	EAX,0
		jmp	  L314C
L30BE:		mov	EAX,0
		jmp	  L314C
L30C8:		mov	EAX,-02Ch[EBP]
		cmp	EAX,0Dh
		je	L30D7
		mov	EAX,0
		jmp short	L314C
L30D7:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-02Ch[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-021h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L3113
		mov	EAX,0
		jmp short	L314C
L3113:		mov	EAX,-02Ch[EBP]
		mov	4[ESP],EAX
		lea	EAX,-021h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		test	AL,AL
		je	L3147
		movzx	EAX,byte ptr -020h[EBP]
		test	AL,AL
		jne	L3140
		movzx	EAX,byte ptr -01Fh[EBP]
		cmp	AL,1
		jne	L3140
		mov	EAX,1
		jmp short	L314C
L3140:		mov	EAX,0
		jmp short	L314C
L3147:		mov	EAX,0
L314C:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L3167
		jmp short	L3162
		mov	[ESP],EAX
		call	  LFFFFFFA0
L3162:		call	  L5550
L3167:		add	ESP,064h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,054h
		call	  L10000011B
		add	EBX,046A7h
		mov	EDX,8[EBP]
		mov	EAX,0Ch[EBP]
		mov	-02Ch[EBP],DL
		mov	-030h[EBP],AL
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	byte ptr -020h[EBP],0FEh
		mov	byte ptr -01Fh[EBP],1
		mov	byte ptr -01Eh[EBP],022h
		mov	byte ptr -01Dh[EBP],1
		mov	byte ptr -01Ch[EBP],0
		mov	byte ptr -01Bh[EBP],2
		mov	byte ptr -01Ah[EBP],0
		mov	byte ptr -019h[EBP],0
		mov	byte ptr -018h[EBP],0FDh
		mov	dword ptr -017h[EBP],0
		mov	dword ptr -013h[EBP],0
		mov	word ptr -0Fh[EBP],0
		mov	byte ptr -0Dh[EBP],0
		cmp	byte ptr -02Ch[EBP],0
		je	L31DE
		cmp	byte ptr -02Ch[EBP],1
		jne	L31ED
L31DE:		movzx	EAX,byte ptr -02Ch[EBP]
		mov	-01Ah[EBP],AL
		cmp	byte ptr -030h[EBP],0
		jns	L31F7
		jmp short	L323B
L31ED:		mov	EAX,0FFFFFFFFh
		jmp	  L3304
L31F7:		cmp	byte ptr -030h[EBP],9
		jg	L323B
		movzx	EAX,byte ptr -030h[EBP]
		mov	-019h[EBP],AL
		mov	EAX,0FFFFFFB8h[EBX]
_Z17GetSignalStrengthPi:
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-028h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],9
		lea	EDX,-020h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L324F
		jmp short	L3245
L323B:		mov	EAX,0FFFFFFFFh
		jmp	  L3304
L3245:		mov	EAX,0FFFFFFFFh
		jmp	  L3304
L324F:		mov	EAX,-028h[EBP]
		cmp	EAX,9
		je	L3261
		mov	EAX,0FFFFFFFFh
		jmp	  L3304
L3261:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-028h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],0Bh
		lea	EDX,-017h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L329D
		mov	EAX,0FFFFFFFFh
		jmp short	L3304
L329D:		mov	EAX,-028h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-017h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		test	AL,AL
		je	L32FF
		movzx	EAX,byte ptr -015h[EBP]
		cmp	AL,022h
		jne	L32F8
		movzx	EAX,byte ptr -012h[EBP]
		cmp	AL,4
		jne	L32F8
		movzx	EAX,byte ptr -011h[EBP]
		movzx	EAX,AL
		mov	EDX,EAX
		shl	EDX,018h
		movzx	EAX,byte ptr -010h[EBP]
		movzx	EAX,AL
		shl	EAX,010h
		or	EDX,EAX
		movzx	EAX,byte ptr -0Fh[EBP]
		movzx	EAX,AL
		shl	EAX,8
		or	EDX,EAX
		movzx	EAX,byte ptr -0Eh[EBP]
		movzx	EAX,AL
		or	EAX,EDX
		mov	-024h[EBP],EAX
		mov	EAX,-024h[EBP]
		jmp short	L3304
L32F8:		mov	EAX,0FFFFFFFFh
		jmp short	L3304
L32FF:		mov	EAX,0FFFFFFFFh
L3304:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L331F
		jmp short	L331A
		mov	[ESP],EAX
		call	  LFFFFFFA0
L331A:		call	  L5550
L331F:		add	ESP,054h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,044h
		call	  L10000011B
		add	EBX,044EFh
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	byte ptr -01Eh[EBP],0FEh
		mov	byte ptr -01Dh[EBP],1
		mov	byte ptr -01Ch[EBP],016h
		mov	byte ptr -01Bh[EBP],1
		mov	byte ptr -01Ah[EBP],0
		mov	byte ptr -019h[EBP],0
		mov	byte ptr -018h[EBP],0FDh
		mov	dword ptr -017h[EBP],0
		mov	dword ptr -013h[EBP],0
		mov	word ptr -0Fh[EBP],0
		mov	byte ptr -0Dh[EBP],0
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-028h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],7
		lea	EDX,-01Eh[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L33B5
		mov	EAX,0
		jmp	  L3459
L33B5:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-028h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],0Bh
		lea	EDX,-017h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L33F1
		mov	EAX,0
		jmp short	L3459
L33F1:		mov	EAX,-028h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-017h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		test	AL,AL
		je	L3454
		movzx	EAX,byte ptr -016h[EBP]
		cmp	AL,1
		jne	L344D
		movzx	EAX,byte ptr -011h[EBP]
		movzx	EAX,AL
		mov	EDX,EAX
		shl	EDX,018h
		movzx	EAX,byte ptr -010h[EBP]
		movzx	EAX,AL
		shl	EAX,010h
		or	EDX,EAX
		movzx	EAX,byte ptr -0Fh[EBP]
		movzx	EAX,AL
		shl	EAX,8
		or	EDX,EAX
		movzx	EAX,byte ptr -0Eh[EBP]
		movzx	EAX,AL
		or	EAX,EDX
		mov	-024h[EBP],EAX
		mov	EAX,-024h[EBP]
		mov	0E8h[EBX],EAX
		mov	EAX,-024h[EBP]
		jmp short	L3459
L344D:		mov	EAX,0
		jmp short	L3459
L3454:		mov	EAX,0
L3459:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L3474
		jmp short	L346F
		mov	[ESP],EAX
		call	  LFFFFFFA0
L346F:		call	  L5550
L3474:		add	ESP,044h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,024h
		call	  L10000011B
		add	EBX,0439Ah
		mov	dword ptr -0Ch[EBP],0
		call	  LFFFFFF90
		mov	-0Dh[EBP],AL
		cmp	byte ptr -0Dh[EBP],0
		jne	L34DE
		call	  LFFFFFDB0
		mov	-0Ch[EBP],EAX
		mov	EAX,0E8h[EBX]
		sub	EAX,1
		cmp	EAX,-0Ch[EBP]
		jle	L34BD
		add	dword ptr -0Ch[EBP],1
		jmp short	L34C4
L34BD:		mov	dword ptr -0Ch[EBP],0
L34C4:		mov	EAX,-0Ch[EBP]
		mov	4[ESP],EAX
		mov	[ESP],0
		call	  LFFFFFF20
		mov	EAX,1
		jmp short	L34FC
L34DE:		cmp	byte ptr -0Dh[EBP],1
		jne	L34F7
		mov	[ESP],1
		call	  LFFFFFE70
		mov	EAX,1
		jmp short	L34FC
L34F7:		mov	EAX,0
L34FC:		add	ESP,024h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,024h
		call	  L10000011B
		add	EBX,04312h
		mov	dword ptr -0Ch[EBP],0
		call	  LFFFFFF90
		mov	-0Dh[EBP],AL
		cmp	byte ptr -0Dh[EBP],0
		jne	L3563
		call	  LFFFFFDB0
		mov	-0Ch[EBP],EAX
		cmp	dword ptr -0Ch[EBP],0
		jle	L353D
		sub	dword ptr -0Ch[EBP],1
		jmp short	L3549
L353D:		mov	EAX,0E8h[EBX]
		sub	EAX,1
		mov	-0Ch[EBP],EAX
L3549:		mov	EAX,-0Ch[EBP]
		mov	4[ESP],EAX
		mov	[ESP],0
		call	  LFFFFFF20
		mov	EAX,1
		jmp short	L3581
L3563:		cmp	byte ptr -0Dh[EBP],1
		jne	L357C
		mov	[ESP],0
		call	  LFFFFFE70
		mov	EAX,1
		jmp short	L3581
L357C:		mov	EAX,0
L3581:		add	ESP,024h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,044h
		call	  L10000011B
		add	EBX,0428Dh
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	byte ptr -01Bh[EBP],0FEh
		mov	byte ptr -01Ah[EBP],1
		mov	byte ptr -019h[EBP],1
		mov	byte ptr -018h[EBP],1
		mov	byte ptr -017h[EBP],0
		mov	byte ptr -016h[EBP],0
		mov	byte ptr -015h[EBP],0FDh
		mov	dword ptr -014h[EBP],0
		mov	dword ptr -010h[EBP],0
		movzx	EAX,byte ptr 0D0h[EBX]
		test	AL,AL
		je	L35DE
		call	  LFFFFFF30
L35DE:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],7
		lea	EDX,-01Bh[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L361A
		mov	EAX,0
		jmp short	L3696
L361A:		mov	EAX,-020h[EBP]
		cmp	EAX,7
		je	L3629
		mov	EAX,0
		jmp short	L3696
L3629:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-014h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
_Z8HardMutev:
		test	AL,AL
		je	L3665
		mov	EAX,0
		jmp short	L3696
L3665:		mov	EAX,-020h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-014h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		test	AL,AL
		je	L3691
		movzx	EAX,byte ptr -012h[EBP]
		cmp	AL,1
		jne	L368A
		mov	EAX,1
		jmp short	L3696
L368A:		mov	EAX,0
		jmp short	L3696
L3691:		mov	EAX,0
L3696:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L36B1
		jmp short	L36AC
		mov	[ESP],EAX
		call	  LFFFFFFA0
L36AC:		call	  L5550
L36B1:		add	ESP,044h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,054h
		call	  L10000011B
		add	EBX,0415Dh
		mov	EAX,8[EBP]
		mov	-02Ch[EBP],AL
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	dword ptr -020h[EBP],0
		mov	dword ptr -01Ch[EBP],0
		mov	byte ptr -018h[EBP],0FEh
		mov	byte ptr -017h[EBP],1
		mov	byte ptr -016h[EBP],0
		mov	byte ptr -015h[EBP],1
		mov	byte ptr -014h[EBP],0
		mov	byte ptr -013h[EBP],5
		mov	byte ptr -012h[EBP],0
		mov	byte ptr -011h[EBP],0
		mov	byte ptr -010h[EBP],0
		mov	byte ptr -0Fh[EBP],0
		mov	byte ptr -0Eh[EBP],0
		mov	byte ptr -0Dh[EBP],0FDh
		cmp	byte ptr -02Ch[EBP],0
		jne	L372E
		movzx	EAX,byte ptr 0D0h[EBX]
		test	AL,AL
		je	L372E
		call	  LFFFFFF30
L372E:		cmp	byte ptr -02Ch[EBP],0
		js	L373A
		cmp	byte ptr -02Ch[EBP],1
		jle	L3744
L373A:		mov	EAX,0
		jmp	  L381D
L3744:		movzx	EAX,byte ptr -02Ch[EBP]
		mov	-012h[EBP],AL
		cmp	byte ptr -02Ch[EBP],0
		jne	L3759
		mov	EAX,0Ch[EBP]
		mov	-0Eh[EBP],AL
		jmp short	L3791
L3759:		mov	EAX,0Ch[EBP]
		cmp	EAX,030D3Fh
		ja	L3787
		mov	EAX,0Ch[EBP]
		mov	-024h[EBP],EAX
		movzx	EAX,byte ptr -021h[EBP]
		mov	-011h[EBP],AL
		movzx	EAX,byte ptr -022h[EBP]
		mov	-010h[EBP],AL
		movzx	EAX,byte ptr -023h[EBP]
		mov	-0Fh[EBP],AL
		movzx	EAX,byte ptr -024h[EBP]
		mov	-0Eh[EBP],AL
		jmp short	L3791
L3787:		mov	EAX,0
		jmp	  L381D
L3791:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-028h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],0Ch
		lea	EDX,-018h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L37CD
		mov	EAX,0
		jmp short	L381D
L37CD:		mov	EAX,-028h[EBP]
		cmp	EAX,0Ch
		je	L37DC
		mov	EAX,0
		jmp short	L381D
L37DC:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-028h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-020h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L3818
		mov	EAX,0
		jmp short	L381D
L3818:		mov	EAX,1
L381D:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L3838
		jmp short	L3833
		mov	[ESP],EAX
		call	  LFFFFFFA0
L3833:		call	  L5550
L3838:		add	ESP,054h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,044h
		call	  L10000011B
		add	EBX,03FD6h
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	dword ptr -014h[EBP],0
		mov	dword ptr -010h[EBP],0
		mov	byte ptr -01Bh[EBP],0FEh
		mov	byte ptr -01Ah[EBP],1
		mov	byte ptr -019h[EBP],6
		mov	byte ptr -018h[EBP],1
		mov	byte ptr -017h[EBP],0
		mov	byte ptr -016h[EBP],0
		mov	byte ptr -015h[EBP],0FDh
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],7
		lea	EDX,-01Bh[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L38C4
		mov	EAX,0FFFFFFFFh
		jmp	  L394A
L38C4:		mov	EAX,-020h[EBP]
		cmp	EAX,7
		je	L38D3
		mov	EAX,0FFFFFFFFh
		jmp short	L394A
L38D3:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-014h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L390F
		mov	EAX,0FFFFFFFFh
		jmp short	L394A
L390F:		mov	EAX,-020h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-014h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		xor	EAX,1
		test	AL,AL
		je	L392F
		mov	EAX,0FFFFFFFFh
		jmp short	L394A
L392F:		movzx	EAX,byte ptr -013h[EBP]
		cmp	AL,1
		jne	L3945
		movzx	EAX,byte ptr -012h[EBP]
		cmp	AL,6
		jne	L3945
		movzx	EAX,byte ptr -0Eh[EBP]
		jmp short	L394A
L3945:		mov	EAX,0FFFFFFFFh
L394A:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	_Z14CloseRadioPortv
		jmp short	L3960
		mov	[ESP],EAX
		call	  LFFFFFFA0
L3960:		call	  L5550
_Z14CloseRadioPortv:
		add	ESP,044h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,044h
		call	  L10000011B
		add	EBX,03EA9h
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	dword ptr -014h[EBP],0
		mov	dword ptr -010h[EBP],0
		mov	byte ptr -01Bh[EBP],0FEh
		mov	byte ptr -01Ah[EBP],1
		mov	byte ptr -019h[EBP],0Bh
		mov	byte ptr -018h[EBP],1
		mov	byte ptr -017h[EBP],0
_Z14HardResetRadiov:
		mov	byte ptr -016h[EBP],0
		mov	byte ptr -015h[EBP],0FDh
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],7
		lea	EDX,-01Bh[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L39F1
		mov	EAX,0FFFFFFFFh
		jmp	  L3A77
L39F1:		mov	EAX,-020h[EBP]
		cmp	EAX,7
		je	L3A00
		mov	EAX,0FFFFFFFFh
		jmp short	L3A77
L3A00:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-014h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L3A3C
		mov	EAX,0FFFFFFFFh
		jmp short	L3A77
L3A3C:		mov	EAX,-020h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-014h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		xor	EAX,1
		test	AL,AL
		je	L3A5C
		mov	EAX,0FFFFFFFFh
		jmp short	L3A77
L3A5C:		movzx	EAX,byte ptr -013h[EBP]
		cmp	AL,1
		jne	L3A72
		movzx	EAX,byte ptr -012h[EBP]
		cmp	AL,0Bh
		jne	L3A72
		movzx	EAX,byte ptr -0Eh[EBP]
		jmp short	L3A77
L3A72:		mov	EAX,0FFFFFFFFh
L3A77:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L3A92
		jmp short	L3A8D
		mov	[ESP],EAX
		call	  LFFFFFFA0
L3A8D:		call	  L5550
L3A92:		add	ESP,044h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,044h
		call	  L10000011B
		add	EBX,03D7Ch
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	dword ptr -014h[EBP],0
		mov	dword ptr -010h[EBP],0
		mov	byte ptr -01Bh[EBP],0FEh
		mov	byte ptr -01Ah[EBP],1
		mov	byte ptr -019h[EBP],0Ah
		mov	byte ptr -018h[EBP],1
		mov	byte ptr -017h[EBP],0
		mov	byte ptr -016h[EBP],0
		mov	byte ptr -015h[EBP],0FDh
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],7
		lea	EDX,-01Bh[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L3B1E
		mov	EAX,0FFFFFFFFh
		jmp	  L3BA4
L3B1E:		mov	EAX,-020h[EBP]
		cmp	EAX,7
		je	L3B2D
		mov	EAX,0FFFFFFFFh
		jmp short	L3BA4
L3B2D:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-014h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L3B69
		mov	EAX,0FFFFFFFFh
		jmp short	L3BA4
L3B69:		mov	EAX,-020h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-014h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		xor	EAX,1
		test	AL,AL
		je	L3B89
		mov	EAX,0FFFFFFFFh
		jmp short	L3BA4
L3B89:		movzx	EAX,byte ptr -013h[EBP]
		cmp	AL,1
		jne	L3B9F
		movzx	EAX,byte ptr -012h[EBP]
		cmp	AL,0Ah
		jne	L3B9F
		movzx	EAX,byte ptr -0Eh[EBP]
		jmp short	L3BA4
L3B9F:		mov	EAX,0FFFFFFFFh
L3BA4:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L3BBF
		jmp short	L3BBA
		mov	[ESP],EAX
		call	  LFFFFFFA0
L3BBA:		call	  L5550
L3BBF:		add	ESP,044h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,044h
		call	  L10000011B
		add	EBX,03C4Fh
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	dword ptr -014h[EBP],0
		mov	dword ptr -010h[EBP],0
		mov	byte ptr -01Bh[EBP],0FEh
_Z11GetHeadroomv:
		mov	byte ptr -01Ah[EBP],1
		mov	byte ptr -019h[EBP],5
		mov	byte ptr -018h[EBP],1
		mov	byte ptr -017h[EBP],0
		mov	byte ptr -016h[EBP],0
		mov	byte ptr -015h[EBP],0FDh
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],7
		lea	EDX,-01Bh[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L3C4B
		mov	EAX,0FFFFFFFFh
		jmp	  L3CF7
L3C4B:		mov	EAX,-020h[EBP]
		cmp	EAX,7
		je	L3C5D
		mov	EAX,0FFFFFFFFh
		jmp	  L3CF7
L3C5D:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-020h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,-014h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L3C99
		mov	EAX,0
		jmp short	L3CF7
L3C99:		mov	EAX,-020h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-014h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		xor	EAX,1
		test	AL,AL
		je	L3CB9
		mov	EAX,0FFFFFFFFh
		jmp short	L3CF7
L3CB9:		movzx	EAX,byte ptr -013h[EBP]
		cmp	AL,1
		jne	L3CF2
		movzx	EAX,byte ptr -012h[EBP]
		cmp	AL,5
		jne	L3CF2
		movzx	EAX,byte ptr -0Eh[EBP]
		test	AL,AL
		jne	L3CEC
		movzx	EAX,byte ptr 0EDh[EBX]
		test	AL,AL
		je	L3CEC
		movzx	EAX,byte ptr 0EEh[EBX]
		test	AL,AL
		jle	L3CEC
		call	  LFFFFFFC0
L3CEC:		movzx	EAX,byte ptr -0Eh[EBP]
		jmp short	L3CF7
L3CF2:		mov	EAX,0FFFFFFFFh
L3CF7:		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L3D12
		jmp short	L3D0D
		mov	[ESP],EAX
		call	  LFFFFFFA0
L3D0D:		call	  L5550
L3D12:		add	ESP,044h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,044h
		call	  L10000011B
		add	EBX,03AFCh
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		mov	dword ptr -015h[EBP],0
		mov	dword ptr -011h[EBP],0
		mov	byte ptr -0Dh[EBP],0
		mov	byte ptr -01Ch[EBP],0FEh
		mov	byte ptr -01Bh[EBP],1
		mov	byte ptr -01Ah[EBP],012h
		mov	byte ptr -019h[EBP],1
		mov	byte ptr -018h[EBP],0
		mov	byte ptr -017h[EBP],0
		mov	byte ptr -016h[EBP],0FDh
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,-024h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],7
		lea	EDX,-01Ch[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L3DA2
		mov	EAX,0FFFFFFFFh
		jmp	  _Z13SetStereoModec
L3DA2:		mov	EAX,-024h[EBP]
		cmp	EAX,7
		je	L3DB4
		mov	EAX,0FFFFFFFFh
		jmp	  _Z13SetStereoModec
L3DB4:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],1
		lea	EDX,-024h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],9
		lea	EDX,-015h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L3DF0
		mov	EAX,0
		jmp short	_Z13SetStereoModec
L3DF0:		mov	EAX,-024h[EBP]
		mov	4[ESP],EAX
		lea	EAX,-015h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		xor	EAX,1
		test	AL,AL
		je	L3E10
		mov	EAX,0FFFFFFFFh
		jmp short	_Z13SetStereoModec
L3E10:		movzx	EAX,byte ptr -014h[EBP]
		cmp	AL,1
		jne	L3E3D
		movzx	EAX,byte ptr -013h[EBP]
		cmp	AL,012h
		jne	L3E3D
		movzx	EAX,byte ptr -0Fh[EBP]
		movzx	EAX,AL
		mov	EDX,EAX
		shl	EDX,8
		movzx	EAX,byte ptr -0Eh[EBP]
		movzx	EAX,AL
		or	EAX,EDX
		mov	-020h[EBP],EAX
		mov	EAX,-020h[EBP]
		jmp short	_Z13SetStereoModec
L3E3D:		mov	EAX,0FFFFFFFFh
_Z13SetStereoModec:
		mov	EDX,-0Ch[EBP]
		xor	EDX,GS:[014h]
		je	L3E5D
		jmp short	L3E58
		mov	[ESP],EAX
		call	  LFFFFFFA0
L3E58:		call	  L5550
L3E5D:		add	ESP,044h
		pop	EBX
		pop	EBP
		ret
		nop
L3E64:		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,024h
		call	  L10000011B
		add	EBX,039B0h
		mov	EAX,8[EBP]
		mov	word ptr [EAX],0FFFFh
		mov	EAX,8[EBP]
		mov	word ptr 2[EAX],0
		mov	EAX,8[EBP]
		mov	dword ptr 4[EAX],0
		mov	EAX,8[EBP]
		add	EAX,8
		mov	dword ptr 8[ESP],050h
		mov	dword ptr 4[ESP],0
		mov	[ESP],EAX
		call	  LFFFFFD90
		mov	EAX,8[EBP]
		add	EAX,058h
		mov	dword ptr 8[ESP],0Ah
		mov	dword ptr 4[ESP],0
		mov	[ESP],EAX
		call	  LFFFFFD90
		mov	byte ptr -9[EBP],0
		jmp short	L3F08
L3ED3:		movzx	EDX,byte ptr -9[EBP]
		mov	EAX,EDX
		shl	EAX,3
		add	EAX,EDX
		shl	EAX,3
		lea	EDX,060h[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		add	EAX,2
		mov	dword ptr 8[ESP],048h
		mov	dword ptr 4[ESP],0FFh
		mov	[ESP],EAX
		call	  LFFFFFD90
		add	byte ptr -9[EBP],1
L3F08:		cmp	byte ptr -9[EBP],04Fh
		setbe	AL
		test	AL,AL
		jne	L3ED3
		add	ESP,024h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,024h
		call	  L10000011B
		add	EBX,038FBh
		mov	EAX,0FFFFFFF4h[EBX]
		mov	word ptr [EAX],0FFFFh
		mov	EAX,0FFFFFFB4h[EBX]
		mov	byte ptr [EAX],0
		mov	EAX,0FFFFFFDCh[EBX]
		mov	word ptr [EAX],0
		cmp	dword ptr 8[EBP],0
		jne	L3F6B
		mov	EAX,0FFFFFFC0h[EBX]
		mov	word ptr [EAX],1
		mov	EAX,0FFFFFFBCh[EBX]
		mov	[ESP],EAX
		call	  L100003E64
		jmp short	L3F84
L3F6B:		mov	EAX,0FFFFFFC0h[EBX]
		mov	word ptr [EAX],064h
		mov	EAX,0FFFFFFCCh[EBX]
		mov	[ESP],EAX
		call	  L100003E64
L3F84:		mov	byte ptr -9[EBP],0
		jmp short	L3FA8
L3F8A:		movzx	EAX,byte ptr -9[EBP]
		imul	EDX,EAX,016E4h
		mov	EAX,0FFFFFFE8h[EBX]
		add	EAX,EDX
		mov	[ESP],EAX
		call	  L100003E64
		add	byte ptr -9[EBP],1
L3FA8:		movzx	EDX,byte ptr -9[EBP]
		mov	EAX,0FFFFFFC0h[EBX]
		movzx	EAX,word ptr [EAX]
		cmp	DX,AX
		setb	AL
		test	AL,AL
		jne	L3F8A
		mov	EAX,0FFFFFFC0h[EBX]
		movzx	EAX,word ptr [EAX]
		movzx	EAX,AX
		add	EAX,7
		lea	EDX,7[EAX]
		test	EAX,EAX
		cmovs	EAX,DL
		sar	EAX,3
		mov	8[ESP],EAX
		mov	dword ptr 4[ESP],0
		mov	EAX,0FFFFFFD0h[EBX]
		mov	[ESP],EAX
		call	  LFFFFFD90
		mov	EAX,0FFFFFFE4h[EBX]
		mov	EDX,8[EBP]
		mov	[EAX],EDX
		add	ESP,024h
		pop	EBX
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EDI
		push	ESI
		push	EBX
		sub	ESP,015Ch
		call	  L10000011B
		add	EBX,0380Bh
		mov	EAX,GS:[014h]
		mov	-01Ch[EBP],EAX
		xor	EAX,EAX
		mov	word ptr 0FFFFFED4h[EBP],0FFFFh
		mov	dword ptr 0FFFFFEE0h[EBP],0
		mov	byte ptr 0FFFFFECEh[EBP],0
		mov	byte ptr 0FFFFFEE9h[EBP],0FEh
		mov	byte ptr 0FFFFFEEAh[EBP],3
		mov	byte ptr 0FFFFFEEBh[EBP],0
		mov	byte ptr 0FFFFFEECh[EBP],1
		mov	byte ptr 0FFFFFEEDh[EBP],0
		mov	byte ptr 0FFFFFEEEh[EBP],1
		mov	byte ptr 0FFFFFEEFh[EBP],1
		mov	byte ptr 0FFFFFEF0h[EBP],0FDh
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		test	EAX,EAX
		je	L4150
		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,0FFFFFEDCh[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],8
		lea	EDX,0FFFFFEE9h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFE00
		xor	EAX,1
		test	AL,AL
		je	L40CD
		mov	EAX,0
		jmp	  L4C09
L40CD:		mov	EAX,0FFFFFFB8h[EBX]
		mov	EAX,[EAX]
		mov	dword ptr 010h[ESP],0
		lea	EDX,0FFFFFEDCh[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],0F3h
		lea	EDX,0FFFFFEF1h[EBP]
		mov	4[ESP],EDX
		mov	[ESP],EAX
		call	  LFFFFFD30
		xor	EAX,1
		test	AL,AL
		je	L4112
		mov	EAX,0
		jmp	  L4C09
L4112:		mov	EAX,0FFFFFEDCh[EBP]
		cmp	EAX,6
		jg	L4127
		mov	EAX,0
		jmp	  L4C09
L4127:		mov	EAX,0FFFFFEDCh[EBP]
		mov	4[ESP],EAX
		lea	EAX,0FFFFFEF1h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFEE0
		xor	EAX,1
		test	AL,AL
		je	L415A
		mov	EAX,0
		jmp	  L4C09
L4150:		mov	EAX,0
		jmp	  L4C09
L415A:		mov	EAX,0FFFFFEDCh[EBP]
		mov	0FFFFFED6h[EBP],AX
		movzx	EAX,byte ptr 0FFFFFEF2h[EBP]
		test	AL,AL
		jne	L43C9
		movzx	EAX,byte ptr 0FFFFFEF3h[EBP]
		cmp	AL,2
		jne	L43C9
		movzx	EAX,byte ptr 0FFFFFEF6h[EBP]
		cmp	AL,1
		jne	L421C
		movzx	EAX,byte ptr 0FFFFFEF7h[EBP]
		test	AL,AL
		jne	L421C
		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		and	EAX,4
		test	EAX,EAX
		je	L43C9
		mov	EAX,0FFFFFFE4h[EBX]
		mov	EAX,[EAX]
		test	EAX,EAX
		jne	L41FA
		mov	EDX,0FFFFFFE8h[EBX]
		mov	EAX,0FFFFFFE8h[EBX]
		lea	EDI,016E4h[EDX]
		mov	EDX,EAX
		mov	EAX,05B9h
		mov	ESI,EDX
		mov	ECX,EAX
		rep
		movsd
		mov	EDX,0FFFFFFD4h[EBX]
		mov	EAX,0FFFFFFBCh[EBX]
		mov	ESI,EAX
		mov	EAX,05B9h
		mov	EDI,EDX
		mov	ECX,EAX
		rep
_Z11VolumeMinusv:
		movsd
L41FA:		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		mov	EDX,EAX
		and	EDX,0FFFFFFFFFFFFFFFBh
		mov	EAX,0FFFFFFB4h[EBX]
		mov	[EAX],DL
		mov	byte ptr 0FFFFFECEh[EBP],1
		jmp	  L43C9
L421C:		movzx	EAX,byte ptr 0FFFFFEF6h[EBP]
		cmp	AL,5
		jne	L43C9
		lea	EAX,0FFFFFEF1h[EBP]
		add	EAX,6
		mov	0FFFFFEE4h[EBP],EAX
		mov	byte ptr 0FFFFFECCh[EBP],0
		jmp	  L42FB
L4246:		movzx	EAX,byte ptr 0FFFFFECCh[EBP]
		mov	EDX,EAX
		sar	EDX,3
		mov	EAX,4
		sub	EAX,EDX
		mov	EDX,EAX
		mov	EAX,0FFFFFEE4h[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EDX,AL
		movzx	EAX,byte ptr 0FFFFFECCh[EBP]
		and	EAX,7
		mov	ESI,EDX
		mov	ECX,EAX
		sar	ESI,CL
		mov	EAX,ESI
		and	EAX,1
		test	EAX,EAX
		je	L42F4
		mov	EAX,02F5AF0h[EBX]
		test	EAX,EAX
		je	L42F4
		mov	ECX,02F5AF0h[EBX]
		movzx	EAX,word ptr 02F5AF4h[EBX]
		movzx	EDX,AX
		movzx	ESI,byte ptr 0FFFFFECCh[EBP]
		mov	EAX,EDX
		shl	EAX,3
		add	EAX,EDX
		shl	EAX,2
		add	EAX,ESI
		add	EAX,030h
		mov	word ptr 2[EAX*2][ECX],0FFFFh
		movzx	ECX,byte ptr 0FFFFFECCh[EBP]
		mov	EDX,02F5AF0h[EBX]
		movzx	EAX,word ptr 02F5AF4h[EBX]
		movzx	EAX,AX
		movzx	EAX,byte ptr 8[EAX][EDX]
		movzx	EAX,AL
		sub	EAX,1
		cmp	ECX,EAX
		jne	L42F4
		mov	EDX,02F5AF0h[EBX]
		movzx	EAX,word ptr 02F5AF4h[EBX]
		movzx	EAX,AX
		mov	byte ptr 8[EAX][EDX],0
L42F4:		add	byte ptr 0FFFFFECCh[EBP],1
L42FB:		cmp	byte ptr 0FFFFFECCh[EBP],023h
		setbe	AL
		test	AL,AL
		jne	L100004246
		mov	EAX,02F5AF0h[EBX]
		movzx	EDX,word ptr 02F5AF4h[EBX]
		movzx	EDX,DX
		mov	ESI,EDX
		sar	ESI,3
		mov	EDX,02F5AF0h[EBX]
		movzx	ECX,word ptr 02F5AF4h[EBX]
		movzx	ECX,CX
		sar	ECX,3
		movzx	EDX,byte ptr 058h[ECX][EDX]
		movzx	ECX,word ptr 02F5AF4h[EBX]
		movzx	ECX,CX
		and	ECX,7
		mov	dword ptr 0FFFFFEBCh[EBP],1
		mov	EDI,0FFFFFEBCh[EBP]
		shl	EDI,CL
		mov	ECX,EDI
		not	ECX
		and	EDX,ECX
		mov	058h[ESI][EAX],DL
		mov	EDX,02F5AF0h[EBX]
		mov	EAX,0FFFFFFBCh[EBX]
		cmp	EDX,EAX
		jne	L438B
		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		mov	EDX,EAX
		and	EDX,0FFFFFFFFFFFFFFFEh
		mov	EAX,0FFFFFFB4h[EBX]
		mov	[EAX],DL
		jmp short	L43C9
L438B:		mov	EDX,02F5AF0h[EBX]
		mov	EAX,0FFFFFFCCh[EBX]
		cmp	EDX,EAX
		jne	L43B3
		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		mov	EDX,EAX
		and	EDX,0FFFFFFFFFFFFFFFDh
		mov	EAX,0FFFFFFB4h[EBX]
		mov	[EAX],DL
		jmp short	L43C9
L43B3:		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		mov	EDX,EAX
		and	EDX,0FFFFFFFFFFFFFFFBh
		mov	EAX,0FFFFFFB4h[EBX]
		mov	[EAX],DL
L43C9:		movzx	EAX,byte ptr 0FFFFFEF2h[EBP]
		cmp	AL,3
		jne	L4BF4
		movzx	EAX,byte ptr 0FFFFFEF3h[EBP]
		test	AL,AL
		jne	L4BF4
		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		and	EAX,4
		test	EAX,EAX
		je	L445B
		mov	EAX,0FFFFFFE4h[EBX]
		mov	EAX,[EAX]
		test	EAX,EAX
		jne	L443E
		mov	EDX,0FFFFFFE8h[EBX]
		mov	EAX,0FFFFFFE8h[EBX]
		lea	EDI,016E4h[EDX]
		mov	EDX,EAX
		mov	EAX,05B9h
		mov	ESI,EDX
		mov	ECX,EAX
		rep
		movsd
		mov	EDX,0FFFFFFD4h[EBX]
		mov	EAX,0FFFFFFBCh[EBX]
		mov	ESI,EAX
		mov	EAX,05B9h
		mov	EDI,EDX
		mov	ECX,EAX
		rep
		movsd
L443E:		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		mov	EDX,EAX
		and	EDX,0FFFFFFFFFFFFFFFBh
		mov	EAX,0FFFFFFB4h[EBX]
		mov	[EAX],DL
		mov	byte ptr 0FFFFFECEh[EBP],1
L445B:		movzx	EAX,byte ptr 0FFFFFEF7h[EBP]
		mov	0FFFFFECFh[EBP],AL
		movzx	EAX,byte ptr 0FFFFFEF8h[EBP]
		mov	0FFFFFED0h[EBP],AL
		movzx	EAX,byte ptr 0FFFFFEF9h[EBP]
		mov	0FFFFFED1h[EBP],AL
		movzx	EAX,byte ptr 0FFFFFEFCh[EBP]
		movzx	EAX,AL
		shl	EAX,8
		mov	EDX,EAX
		movzx	EAX,byte ptr 0FFFFFEFDh[EBP]
		movzx	EAX,AL
		or	EAX,EDX
		mov	0FFFFFED8h[EBP],AX
		movzx	EAX,byte ptr 0FFFFFEFAh[EBP]
		movzx	EAX,AL
		shl	EAX,8
		mov	EDX,EAX
		movzx	EAX,byte ptr 0FFFFFEFBh[EBP]
		movzx	EAX,AL
		or	EAX,EDX
		and	AX,07FFFh
		mov	0FFFFFEDAh[EBP],AX
		cmp	word ptr 0FFFFFEDAh[EBP],04Fh
		jbe	L44DE
		mov	EAX,0
		jmp	  L4C09
L44DE:		movzx	EAX,word ptr 0FFFFFEDAh[EBP]
		mov	02F5AF4h[EBX],AX
		movzx	EAX,byte ptr 0FFFFFEFEh[EBP]
		and	EAX,07Fh
		mov	0FFFFFED2h[EBP],AL
		cmp	byte ptr 0FFFFFED2h[EBP],023h
		jbe	L451D
		lea	EAX,0FFFFDD90h[EBX]
		mov	[ESP],EAX
		call	  LFFFFFF40
		mov	EAX,0
		jmp	  L4C09
L451D:		mov	EAX,0FFFFFFE4h[EBX]
		mov	EAX,[EAX]
		test	EAX,EAX
		jne	L4557
		mov	EAX,0FFFFFFBCh[EBX]
		movzx	EAX,word ptr [EAX]
		cmp	AX,0FFFFFED8h[EBP]
		je	L4557
		mov	[ESP],0
		call	  LFFFFFE60
		mov	EAX,0FFFFFFBCh[EBX]
		movzx	EDX,word ptr 0FFFFFED8h[EBP]
		mov	[EAX],DX
L4557:		cmp	byte ptr 0FFFFFED1h[EBP],3
		jne	L4595
		mov	EAX,0FFFFFFE4h[EBX]
		mov	EAX,[EAX]
		cmp	EAX,1
		jne	L4589
		mov	[ESP],0
		call	  LFFFFFE60
		mov	EAX,0FFFFFFBCh[EBX]
		movzx	EDX,word ptr 0FFFFFED8h[EBP]
		mov	[EAX],DX
L4589:		mov	EAX,0FFFFFFBCh[EBX]
		mov	02F5AF0h[EBX],EAX
L4595:		cmp	byte ptr 0FFFFFED1h[EBP],6
		jne	L468C
		mov	EAX,0FFFFFFE4h[EBX]
		mov	EAX,[EAX]
		test	EAX,EAX
		je	L45CF
		mov	EAX,0FFFFFFCCh[EBX]
		movzx	EAX,word ptr [EAX]
		cmp	AX,0FFFFFED8h[EBP]
		je	L45EB
		mov	EAX,0FFFFFFCCh[EBX]
		movzx	EAX,word ptr [EAX]
		cmp	AX,0FFFFFFFFFFFFFFFFh
		je	L45EB
L45CF:		mov	[ESP],1
		call	  LFFFFFE60
		mov	EAX,0FFFFFFCCh[EBX]
		movzx	EDX,word ptr 0FFFFFED8h[EBP]
		mov	[EAX],DX
L45EB:		movzx	EAX,word ptr 02F5AF4h[EBX]
		test	AX,AX
		jne	L4680
		cmp	byte ptr 0FFFFFED2h[EBP],0
		jne	L4680
		movzx	EAX,byte ptr 0FFFFFEFFh[EBP]
		test	AL,AL
		jns	L4616
		mov	EAX,012h
		jmp short	L461B
L4616:		mov	EAX,010h
L461B:		mov	0FFFFFED3h[EBP],AL
		movzx	EAX,byte ptr 0FFFFFED3h[EBP]
		movzx	EAX,byte ptr 0FFFFFEF1h[EAX][EBP]
		mov	EDX,EAX
		and	EDX,0Fh
		movzx	EAX,byte ptr 0FFFFFED3h[EBP]
		add	EAX,EDX
		add	EAX,7
		mov	0FFFFFED3h[EBP],AL
		movzx	EAX,byte ptr 0FFFFFED3h[EBP]
		movzx	EAX,byte ptr 0FFFFFEF1h[EAX][EBP]
		movzx	EAX,AL
		shl	EAX,8
		mov	EDX,EAX
		movzx	EAX,byte ptr 0FFFFFED3h[EBP]
		add	EAX,1
		movzx	EAX,byte ptr 0FFFFFEF1h[EAX][EBP]
		movzx	EAX,AL
		or	EAX,EDX
		mov	EDX,EAX
		mov	EAX,0FFFFFFC0h[EBX]
		mov	[EAX],DX
L4680:		mov	EAX,0FFFFFFCCh[EBX]
		mov	02F5AF0h[EBX],EAX
L468C:		cmp	byte ptr 0FFFFFED1h[EBP],4
		jne	L4773
		mov	byte ptr 0FFFFFECDh[EBP],0
		mov	EAX,0FFFFFFE4h[EBX]
		mov	EAX,[EAX]
		cmp	EAX,1
		jne	L4706
		jmp short	L46F5
L46AF:		movzx	EAX,byte ptr 0FFFFFECDh[EBP]
		mov	EDX,0FFFFFFE8h[EBX]
		imul	EAX,EAX,016E4h
		add	EAX,EDX
		movzx	EAX,word ptr [EAX]
		cmp	AX,0FFFFFED8h[EBP]
		je	L4705
		movzx	EAX,byte ptr 0FFFFFECDh[EBP]
		mov	EDX,0FFFFFFE8h[EBX]
		imul	EAX,EAX,016E4h
		add	EAX,EDX
		movzx	EAX,word ptr [EAX]
		cmp	AX,0FFFFFFFFFFFFFFFFh
		je	L4705
		add	byte ptr 0FFFFFECDh[EBP],1
L46F5:		cmp	byte ptr 0FFFFFECDh[EBP],063h
		setbe	AL
		test	AL,AL
		jne	L46AF
		jmp short	L4706
L4705:		nop
L4706:		movzx	EAX,byte ptr 0FFFFFECDh[EBP]
		mov	EDX,0FFFFFFE8h[EBX]
		imul	EAX,EAX,016E4h
		add	EAX,EDX
		movzx	EAX,word ptr [EAX]
		cmp	AX,0FFFFFFFFFFFFFFFFh
		jne	L4758
		movzx	EAX,byte ptr 0FFFFFECDh[EBP]
		mov	EDX,0FFFFFFE8h[EBX]
		imul	EAX,EAX,016E4h
		add	EDX,EAX
		movzx	EAX,word ptr 0FFFFFED8h[EBP]
		mov	[EDX],AX
		mov	EAX,0FFFFFFDCh[EBX]
		movzx	EAX,word ptr [EAX]
		lea	EDX,1[EAX]
		mov	EAX,0FFFFFFDCh[EBX]
		mov	[EAX],DX
L4758:		movzx	EAX,byte ptr 0FFFFFECDh[EBP]
		imul	EDX,EAX,016E4h
		mov	EAX,0FFFFFFE8h[EBX]
		add	EAX,EDX
		mov	02F5AF0h[EBX],EAX
L4773:		mov	EAX,02F5AF0h[EBX]
		test	EAX,EAX
		je	L4BF4
		movzx	EAX,byte ptr 0FFFFFEFAh[EBP]
_Z9SetPresetccm:
		test	AL,AL
		jns	L47A0
		mov	EAX,02F5AF0h[EBX]
		movzx	EDX,word ptr 02F5AF4h[EBX]
		add	EDX,1
		mov	2[EAX],DX
L47A0:		movzx	EAX,byte ptr 0FFFFFEFEh[EBP]
		test	AL,AL
		jns	L47C9
		mov	EDX,02F5AF0h[EBX]
		movzx	EAX,word ptr 02F5AF4h[EBX]
		movzx	EAX,AX
		movzx	ECX,byte ptr 0FFFFFED2h[EBP]
		add	ECX,1
		mov	8[EAX][EDX],CL
L47C9:		mov	ECX,02F5AF0h[EBX]
		movzx	EAX,word ptr 02F5AF4h[EBX]
		movzx	EDX,AX
		movzx	ESI,byte ptr 0FFFFFED2h[EBP]
		mov	EAX,EDX
		shl	EAX,3
		add	EAX,EDX
		shl	EAX,2
		add	EAX,ESI
		add	EAX,030h
		movzx	EAX,word ptr 2[EAX*2][ECX]
		cmp	AX,0FFFFFFFFFFFFFFFFh
		jne	L486A
		mov	EAX,0FFFFFFF4h[EBX]
		movzx	EAX,word ptr [EAX]
		lea	EDX,1[EAX]
		mov	EAX,0FFFFFFF4h[EBX]
		mov	[EAX],DX
		mov	EAX,0FFFFFFF4h[EBX]
		movzx	EAX,word ptr [EAX]
		cmp	AX,027FFh
		jbe	L4836
		lea	EAX,0FFFFDDB4h[EBX]
		mov	[ESP],EAX
		call	  LFFFFFF40
		mov	EAX,0
		jmp	  L4C09
L4836:		mov	ECX,02F5AF0h[EBX]
		movzx	EAX,word ptr 02F5AF4h[EBX]
		movzx	EDX,AX
		movzx	EDI,byte ptr 0FFFFFED2h[EBP]
		mov	EAX,0FFFFFFF4h[EBX]
		movzx	ESI,word ptr [EAX]
		mov	EAX,EDX
		shl	EAX,3
		add	EAX,EDX
		shl	EAX,2
		add	EAX,EDI
		add	EAX,030h
		mov	2[EAX*2][ECX],SI
L486A:		mov	ECX,02F5AF0h[EBX]
		movzx	EAX,word ptr 02F5AF4h[EBX]
		movzx	EDX,AX
		movzx	ESI,byte ptr 0FFFFFED2h[EBP]
		mov	EAX,EDX
		shl	EAX,3
		add	EAX,EDX
		shl	EAX,2
		add	EAX,ESI
		add	EAX,030h
		movzx	EAX,word ptr 2[EAX*2][ECX]
		mov	0FFFFFED4h[EBP],AX
		movzx	EAX,word ptr 0FFFFFED4h[EBP]
		imul	EDX,EAX,0F3h
		mov	EAX,0FFFFFFFCh[EBX]
		add	EAX,EDX
		mov	0FFFFFEE0h[EBP],EAX
		movzx	EDX,byte ptr 0FFFFFEF5h[EBP]
		mov	EAX,0FFFFFEE0h[EBP]
		mov	[EAX],DL
		mov	EAX,0FFFFFEE0h[EBP]
		add	EAX,1
		movzx	EDX,byte ptr 0FFFFFEF6h[EBP]
		sub	EDX,2
		mov	[EAX],DL
		mov	byte ptr 0FFFFFECCh[EBP],2
		jmp short	L490E
L48E4:		movzx	EDX,byte ptr 0FFFFFECCh[EBP]
		mov	EAX,0FFFFFEE0h[EBP]
		add	EDX,EAX
		movzx	EAX,byte ptr 0FFFFFECCh[EBP]
		add	EAX,6
		movzx	EAX,byte ptr 0FFFFFEF1h[EAX][EBP]
		mov	[EDX],AL
		add	byte ptr 0FFFFFECCh[EBP],1
L490E:		movzx	EAX,byte ptr 0FFFFFECCh[EBP]
		movzx	EDX,word ptr 0FFFFFED6h[EBP]
		sub	EDX,7
		cmp	EAX,EDX
		setl	AL
		test	AL,AL
		jne	L48E4
		mov	EDX,02F5AF0h[EBX]
		movzx	EAX,word ptr 02F5AF4h[EBX]
		movzx	EAX,AX
		movzx	EAX,byte ptr 8[EAX][EDX]
		test	AL,AL
		jne	L494B
		mov	EAX,0
		jmp	  L4C09
L494B:		mov	byte ptr 0FFFFFECCh[EBP],0
		jmp short	L4996
L4954:		mov	ECX,02F5AF0h[EBX]
		movzx	EAX,word ptr 02F5AF4h[EBX]
		movzx	EDX,AX
		movzx	ESI,byte ptr 0FFFFFECCh[EBP]
		mov	EAX,EDX
		shl	EAX,3
		add	EAX,EDX
		shl	EAX,2
		add	EAX,ESI
		add	EAX,030h
		movzx	EAX,word ptr 2[EAX*2][ECX]
		cmp	AX,0FFFFFFFFFFFFFFFFh
		jne	L498F
		mov	EAX,0
		jmp	  L4C09
L498F:		add	byte ptr 0FFFFFECCh[EBP],1
L4996:		mov	EDX,02F5AF0h[EBX]
		movzx	EAX,word ptr 02F5AF4h[EBX]
		movzx	EAX,AX
		movzx	EAX,byte ptr 8[EAX][EDX]
		cmp	AL,0FFFFFECCh[EBP]
		setnbe	AL
		test	AL,AL
		jne	L4954
		mov	EAX,02F5AF0h[EBX]
		mov	0FFFFFEC0h[EBP],EAX
		movzx	EDX,word ptr 02F5AF4h[EBX]
		movzx	EDX,DX
		mov	ESI,EDX
		sar	ESI,3
		mov	EDX,02F5AF0h[EBX]
		movzx	ECX,word ptr 02F5AF4h[EBX]
		movzx	ECX,CX
		sar	ECX,3
		movzx	EDX,byte ptr 058h[ECX][EDX]
		mov	EDI,EDX
		movzx	EDX,word ptr 02F5AF4h[EBX]
		movzx	EDX,DX
		and	EDX,7
		mov	dword ptr 0FFFFFEC4h[EBP],1
		mov	EAX,0FFFFFEC4h[EBP]
		mov	ECX,EDX
		shl	EAX,CL
		mov	EDX,EAX
		or	EDX,EDI
		mov	EDI,0FFFFFEC0h[EBP]
		mov	058h[ESI][EDI],DL
		mov	EAX,02F5AF0h[EBX]
		movzx	EAX,word ptr 2[EAX]
		test	AX,AX
		jne	L4A35
		mov	EAX,0
		jmp	  L4C09
L4A35:		mov	byte ptr 0FFFFFECCh[EBP],0
		jmp short	L4A80
L4A3E:		mov	EAX,02F5AF0h[EBX]
		movzx	EDX,byte ptr 0FFFFFECCh[EBP]
		sar	EDX,3
		movzx	EAX,byte ptr 058h[EDX][EAX]
		movzx	EDX,AL
		movzx	EAX,byte ptr 0FFFFFECCh[EBP]
		and	EAX,7
		mov	ESI,EDX
		mov	ECX,EAX
		sar	ESI,CL
		mov	EAX,ESI
		and	EAX,1
		test	EAX,EAX
		jne	L4A79
		mov	EAX,0
		jmp	  L4C09
L4A79:		add	byte ptr 0FFFFFECCh[EBP],1
L4A80:		movzx	EDX,byte ptr 0FFFFFECCh[EBP]
		mov	EAX,02F5AF0h[EBX]
		movzx	EAX,word ptr 2[EAX]
		cmp	DX,AX
		setb	AL
		test	AL,AL
		jne	L4A3E
		cmp	byte ptr 0FFFFFED1h[EBP],3
		jne	L4ACD
		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		mov	EDX,EAX
		or	EDX,1
		mov	EAX,0FFFFFFB4h[EBX]
		mov	[EAX],DL
		lea	EAX,0FFFFDDD6h[EBX]
		mov	[ESP],EAX
		call	  LFFFFFF40
		jmp	  L4BF4
L4ACD:		cmp	byte ptr 0FFFFFED1h[EBP],6
		jne	L4AFF
		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		mov	EDX,EAX
		or	EDX,2
		mov	EAX,0FFFFFFB4h[EBX]
		mov	[EAX],DL
		lea	EAX,0FFFFDDE8h[EBX]
		mov	[ESP],EAX
		call	  LFFFFFF40
		jmp	  L4BF4
L4AFF:		cmp	byte ptr 0FFFFFED1h[EBP],4
		jne	L4BF4
		movzx	EAX,byte ptr 0FFFFFECDh[EBP]
		mov	ESI,EAX
		sar	ESI,3
		movzx	EAX,byte ptr 0FFFFFECDh[EBP]
		mov	EDX,EAX
		sar	EDX,3
		mov	EAX,0FFFFFFD0h[EBX]
		movzx	EAX,[EDX][EAX]
		mov	EDX,EAX
		movzx	EAX,byte ptr 0FFFFFECDh[EBP]
		and	EAX,7
		mov	dword ptr 0FFFFFEBCh[EBP],1
		mov	EDI,0FFFFFEBCh[EBP]
		mov	ECX,EAX
		shl	EDI,CL
		mov	EAX,EDI
		or	EAX,EDX
		mov	EDX,EAX
		mov	EAX,0FFFFFFD0h[EBX]
		mov	[ESI][EAX],DL
		mov	byte ptr 0FFFFFECCh[EBP],0
		jmp short	L4BA6
L4B66:		movzx	EAX,byte ptr 0FFFFFECCh[EBP]
		mov	EDX,EAX
		sar	EDX,3
		mov	EAX,0FFFFFFD0h[EBX]
		movzx	EAX,[EDX][EAX]
		movzx	EDX,AL
		movzx	EAX,byte ptr 0FFFFFECCh[EBP]
		and	EAX,7
		mov	ESI,EDX
		mov	ECX,EAX
		sar	ESI,CL
		mov	EAX,ESI
		and	EAX,1
		test	EAX,EAX
		jne	L4B9F
		mov	EAX,0
		jmp short	L4C09
L4B9F:		add	byte ptr 0FFFFFECCh[EBP],1
L4BA6:		movzx	EDX,byte ptr 0FFFFFECCh[EBP]
		mov	EAX,0FFFFFFC0h[EBX]
		movzx	EAX,word ptr [EAX]
		cmp	DX,AX
		setb	AL
		test	AL,AL
		jne	L4B66
		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		mov	EDX,EAX
		or	EDX,4
		mov	EAX,0FFFFFFB4h[EBX]
		mov	[EAX],DL
		mov	EAX,0FFFFFFB4h[EBX]
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		mov	4[ESP],EAX
		lea	EAX,0FFFFDE00h[EBX]
		mov	[ESP],EAX
		call	  LFFFFFEB0
L4BF4:		cmp	byte ptr 0FFFFFECEh[EBP],0
		je	L4C04
		mov	EAX,1
		jmp short	L4C09
L4C04:		mov	EAX,0
L4C09:		mov	EDI,-01Ch[EBP]
		xor	EDI,GS:[014h]
		je	L4C24
		jmp short	L4C1F
		mov	[ESP],EAX
		call	  LFFFFFFA0
L4C1F:		call	  L5550
L4C24:		add	ESP,015Ch
		pop	EBX
		pop	ESI
		pop	EDI
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	ESI
		push	EBX
		sub	ESP,010h
		call	  L10000011B
		add	EBX,02BE4h
		mov	dword ptr -010h[EBP],0
		mov	dword ptr -0Ch[EBP],0
		mov	byte ptr -018h[EBP],0
		jmp	  L4E00
L4C59:		mov	byte ptr -017h[EBP],0
		jmp	  L4DE2
L4C62:		mov	byte ptr -015h[EBP],8
		movzx	EDX,byte ptr -018h[EBP]
		movzx	ESI,byte ptr -017h[EBP]
		mov	ECX,8[EBP]
		mov	EAX,EDX
		shl	EAX,3
		add	EAX,EDX
		shl	EAX,2
		add	EAX,ESI
		add	EAX,030h
		movzx	EAX,word ptr 2[EAX*2][ECX]
		movzx	EAX,AX
		imul	EDX,EAX,0F3h
		mov	EAX,0FFFFFFFCh[EBX]
		add	EAX,EDX
		mov	-0Ch[EBP],EAX
		mov	EAX,-0Ch[EBP]
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		shl	EAX,8
		mov	EDX,EAX
		mov	EAX,-0Ch[EBP]
		add	EAX,1
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		or	EAX,EDX
		mov	-014h[EBP],AX
		cmp	byte ptr -017h[EBP],0
		jne	L4D01
		movzx	EDX,byte ptr -015h[EBP]
		mov	EAX,-0Ch[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		test	AL,AL
		jns	L4CD6
		mov	EAX,6
		jmp short	L4CDB
L4CD6:		mov	EAX,4
L4CDB:		add	-015h[EBP],AL
		movzx	EDX,byte ptr -015h[EBP]
_Z10PrevStreamv:
		mov	EAX,-0Ch[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		mov	EDX,EAX
		and	EDX,0Fh
		movzx	EAX,byte ptr -015h[EBP]
		add	EAX,EDX
		add	EAX,1
		mov	-015h[EBP],AL
		add	byte ptr -015h[EBP],2
		jmp short	L4D77
L4D01:		cmp	word ptr -014h[EBP],7
		jne	L4D2D
		mov	EAX,-010h[EBP]
		mov	EDX,0Ch[EBP]
		add	EDX,EAX
		movzx	EAX,byte ptr -012h[EBP]
		mov	[EDX],AL
		add	dword ptr -010h[EBP],1
		cmp	dword ptr -010h[EBP],0C7FFh
		jbe	L4D77
		mov	EAX,0
		jmp	  L4E1C
L4D2D:		mov	EAX,-010h[EBP]
		mov	EDX,0Ch[EBP]
		add	EDX,EAX
		movzx	EAX,byte ptr -012h[EBP]
		mov	[EDX],AL
		add	dword ptr -010h[EBP],1
		cmp	dword ptr -010h[EBP],0C7FFh
		jbe	L4D52
		mov	EAX,0
		jmp	  L4E1C
L4D52:		mov	EAX,-010h[EBP]
		mov	EDX,0Ch[EBP]
		add	EDX,EAX
		movzx	EAX,byte ptr -011h[EBP]
		mov	[EDX],AL
		add	dword ptr -010h[EBP],1
		cmp	dword ptr -010h[EBP],0C7FFh
		jbe	L4D77
		mov	EAX,0
		jmp	  L4E1C
L4D77:		movzx	EAX,byte ptr -015h[EBP]
		mov	-016h[EBP],AL
		jmp short	L4DAE
L4D80:		mov	EAX,-010h[EBP]
		mov	EDX,0Ch[EBP]
		add	EDX,EAX
		movzx	ECX,byte ptr -016h[EBP]
		mov	EAX,-0Ch[EBP]
		add	EAX,ECX
		movzx	EAX,byte ptr [EAX]
		mov	[EDX],AL
		add	dword ptr -010h[EBP],1
		cmp	dword ptr -010h[EBP],0C7FFh
		jbe	L4DAA
		mov	EAX,0
		jmp short	L4E1C
L4DAA:		add	byte ptr -016h[EBP],1
L4DAE:		movzx	EAX,byte ptr -016h[EBP]
		cmp	AX,-014h[EBP]
		setb	AL
		test	AL,AL
		jne	L4D80
		movzx	EDX,word ptr -014h[EBP]
		mov	EAX,-0Ch[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		mov	-012h[EBP],AL
		movzx	EAX,word ptr -014h[EBP]
		lea	EDX,1[EAX]
		mov	EAX,-0Ch[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		mov	-011h[EBP],AL
		add	byte ptr -017h[EBP],1
L4DE2:		movzx	EAX,byte ptr -018h[EBP]
		mov	EDX,8[EBP]
		movzx	EAX,byte ptr 8[EAX][EDX]
		cmp	AL,-017h[EBP]
		setnbe	AL
		test	AL,AL
		jne	L100004C62
		add	byte ptr -018h[EBP],1
L4E00:		movzx	EDX,byte ptr -018h[EBP]
		mov	EAX,8[EBP]
		movzx	EAX,word ptr 2[EAX]
		cmp	DX,AX
		setb	AL
		test	AL,AL
		jne	L100004C59
		mov	EAX,-010h[EBP]
L4E1C:		add	ESP,010h
		pop	EBX
		pop	ESI
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,034h
		call	  L10000011B
		add	EBX,029F1h
		mov	EAX,0Ch[EBP]
		mov	-01Ch[EBP],AX
		mov	word ptr -0Ch[EBP],7
		mov	byte ptr -010h[EBP],0
		jmp	  L5121
L4E4B:		movzx	EDX,word ptr -0Ch[EBP]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		sar	EAX,6
		mov	-0Eh[EBP],AL
		movzx	EDX,word ptr -0Ch[EBP]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		and	EAX,03Fh
		mov	-0Dh[EBP],AL
		movzx	EAX,byte ptr -0Eh[EBP]
		cmp	EAX,1
		je	L4EA7
		cmp	EAX,1
		jg	L4E89
		test	EAX,EAX
		je	L4E98
		jmp	  L4F41
L4E89:		cmp	EAX,2
		je	L4EB6
		cmp	EAX,3
		je	L4EC2
		jmp	  L4F41
L4E98:		mov	byte ptr -011h[EBP],1
		mov	word ptr -0Ah[EBP],0
		jmp	  L4F41
L4EA7:		mov	byte ptr -011h[EBP],1
		mov	word ptr -0Ah[EBP],1
		jmp	  L4F41
L4EB6:		mov	byte ptr -011h[EBP],1
		mov	word ptr -0Ah[EBP],4
		jmp short	L4F41
L4EC2:		movzx	EAX,word ptr -0Ch[EBP]
		lea	EDX,1[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		test	AL,AL
		jns	L4EDC
		mov	EAX,3
		jmp short	L4EE1
L4EDC:		mov	EAX,2
L4EE1:		mov	-011h[EBP],AL
		movzx	EAX,word ptr -0Ch[EBP]
		lea	EDX,1[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		test	AL,AL
		jns	L4F27
		movzx	EAX,word ptr -0Ch[EBP]
		lea	EDX,1[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		and	EAX,07Fh
		shl	EAX,8
		mov	EDX,EAX
		movzx	EAX,word ptr -0Ch[EBP]
		lea	ECX,2[EAX]
		mov	EAX,8[EBP]
		add	EAX,ECX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		or	EAX,EDX
		jmp short	L4F3C
L4F27:		movzx	EAX,word ptr -0Ch[EBP]
		lea	EDX,1[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		and	EAX,07Fh
L4F3C:		mov	-0Ah[EBP],AX
		nop
L4F41:		movzx	EDX,word ptr -0Ch[EBP]
		movzx	EAX,byte ptr -011h[EBP]
		add	EDX,EAX
		movzx	EAX,word ptr -0Ah[EBP]
		add	EDX,EAX
		movzx	EAX,word ptr -01Ch[EBP]
		cmp	EDX,EAX
		jle	L4F6C
		lea	EAX,0FFFFDE20h[EBX]
		mov	[ESP],EAX
		call	  LFFFFFF40
		jmp	  L5134
L4F6C:		movzx	EAX,byte ptr -011h[EBP]
		add	-0Ch[EBP],AX
		movzx	EAX,byte ptr -0Dh[EBP]
		cmp	EAX,011h
		je	L4FE0
		cmp	EAX,027h
		je	L4FE9
		cmp	EAX,0Ch
		jne	L5119
		mov	byte ptr -0Fh[EBP],0
		jmp short	L4FB7
L4F91:		movzx	EAX,byte ptr -0Fh[EBP]
		movzx	ECX,word ptr -0Ch[EBP]
		movzx	EDX,byte ptr -0Fh[EBP]
		add	EDX,ECX
		lea	ECX,1[EDX]
		mov	EDX,8[EBP]
		add	EDX,ECX
		movzx	EDX,byte ptr [EDX]
		mov	ECX,EDX
		mov	EDX,010h[EBP]
		mov	1[EAX][EDX],CL
		add	byte ptr -0Fh[EBP],1
L4FB7:		movzx	EAX,byte ptr -0Fh[EBP]
		movzx	EDX,word ptr -0Ah[EBP]
		sub	EDX,1
		cmp	EAX,EDX
		setl	AL
		test	AL,AL
		jne	L4F91
		movzx	EAX,byte ptr -0Fh[EBP]
		mov	EDX,010h[EBP]
		mov	byte ptr 1[EAX][EDX],0
		or	byte ptr -010h[EBP],1
		jmp	  L5119
L4FE0:		or	byte ptr -010h[EBP],4
		jmp	  L5119
L4FE9:		movzx	EDX,word ptr -0Ch[EBP]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		and	EAX,040h
		test	EAX,EAX
		je	L5039
		mov	byte ptr -011h[EBP],4
		movzx	EAX,word ptr -0Ch[EBP]
		lea	EDX,2[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		shl	EAX,8
		mov	EDX,EAX
		movzx	EAX,word ptr -0Ch[EBP]
_Z11GetPlayModev:
		lea	ECX,3[EAX]
		mov	EAX,8[EBP]
		add	EAX,ECX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		or	EAX,EDX
		mov	EDX,EAX
		mov	EAX,010h[EBP]
		mov	066h[EAX],DX
		jmp short	L5046
L5039:		mov	byte ptr -011h[EBP],1
		mov	EAX,010h[EBP]
		mov	word ptr 066h[EAX],0FFFFh
L5046:		movzx	EDX,word ptr -0Ch[EBP]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		and	EAX,010h
		test	EAX,EAX
		je	L50D6
		movzx	EDX,word ptr -0Ch[EBP]
		movzx	EAX,byte ptr -011h[EBP]
		add	EAX,EDX
		mov	EDX,EAX
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		mov	ECX,EAX
		shl	ECX,018h
		movzx	EDX,word ptr -0Ch[EBP]
		movzx	EAX,byte ptr -011h[EBP]
		add	EAX,EDX
		lea	EDX,1[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		shl	EAX,010h
		or	ECX,EAX
		movzx	EDX,word ptr -0Ch[EBP]
		movzx	EAX,byte ptr -011h[EBP]
		add	EAX,EDX
		lea	EDX,2[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		shl	EAX,8
		or	ECX,EAX
		movzx	EDX,word ptr -0Ch[EBP]
		movzx	EAX,byte ptr -011h[EBP]
		add	EAX,EDX
		lea	EDX,3[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		or	EAX,ECX
		mov	EDX,EAX
		mov	EAX,010h[EBP]
		mov	068h[EAX],EDX
		jmp short	L5114
L50D6:		movzx	EDX,word ptr -0Ch[EBP]
		movzx	EAX,byte ptr -011h[EBP]
		add	EAX,EDX
		mov	EDX,EAX
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		mov	ECX,EAX
		shl	ECX,8
		movzx	EDX,word ptr -0Ch[EBP]
		movzx	EAX,byte ptr -011h[EBP]
		add	EAX,EDX
		lea	EDX,1[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		or	EAX,ECX
		mov	EDX,EAX
		mov	EAX,010h[EBP]
		mov	068h[EAX],EDX
L5114:		or	byte ptr -010h[EBP],2
		nop
L5119:		movzx	EAX,word ptr -0Ah[EBP]
		add	-0Ch[EBP],AX
L5121:		movzx	EAX,word ptr -0Ch[EBP]
		cmp	AX,-01Ch[EBP]
		setb	AL
		test	AL,AL
		jne	L100004E4B
L5134:		mov	EAX,010h[EBP]
		movzx	EAX,byte ptr [EAX]
		mov	EDX,EAX
		or	DL,-010h[EBP]
		mov	EAX,010h[EBP]
		mov	[EAX],DL
		nop
		add	ESP,034h
		pop	EBX
		pop	EBP
		ret
_Z9GetStereov:
		push	EBP
		mov	EBP,ESP
		push	ESI
		push	EBX
		sub	ESP,020h
		call	  L10000011B
		add	EBX,026C8h
		mov	dword ptr -0Ch[EBP],0Bh
		mov	EAX,-0Ch[EBP]
		mov	EDX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		mov	EDX,EAX
		shl	EDX,8
		mov	EAX,-0Ch[EBP]
		lea	ECX,1[EAX]
		mov	EAX,8[EBP]
		add	EAX,ECX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		or	EAX,EDX
		mov	EDX,EAX
		mov	EAX,-0Ch[EBP]
		add	EAX,EDX
		add	EAX,2
		mov	-0Ch[EBP],EAX
		mov	word ptr -012h[EBP],0
		jmp	  L5325
L51A3:		mov	EAX,-0Ch[EBP]
		mov	EDX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		shl	EAX,8
		mov	EDX,EAX
		mov	EAX,-0Ch[EBP]
		lea	ECX,1[EAX]
		mov	EAX,8[EBP]
		add	EAX,ECX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		or	EAX,EDX
		mov	-010h[EBP],AX
		mov	word ptr -014h[EBP],0
		jmp short	L51F5
L51D5:		movzx	EAX,word ptr -014h[EBP]
		mov	EDX,0FFFFFFE8h[EBX]
		imul	EAX,EAX,016E4h
		add	EAX,EDX
		movzx	EAX,word ptr [EAX]
		cmp	AX,-010h[EBP]
		je	L520B
		add	word ptr -014h[EBP],1
L51F5:		mov	EAX,0FFFFFFC0h[EBX]
		movzx	EAX,word ptr [EAX]
		cmp	-014h[EBP],AX
		setb	AL
		test	AL,AL
		jne	L51D5
		jmp short	L520C
L520B:		nop
L520C:		add	dword ptr -0Ch[EBP],2
		mov	EAX,-0Ch[EBP]
		lea	EDX,3[EAX]
		mov	EAX,8[EBP]
		add	EAX,EDX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		and	EAX,0Fh
		shl	EAX,9
		mov	EDX,EAX
		mov	EAX,-0Ch[EBP]
		lea	ECX,4[EAX]
		mov	EAX,8[EBP]
		add	EAX,ECX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		add	EAX,EAX
		or	EDX,EAX
		mov	EAX,-0Ch[EBP]
		lea	ECX,5[EAX]
		mov	EAX,8[EBP]
		add	EAX,ECX
		movzx	EAX,byte ptr [EAX]
		movzx	EAX,AL
		sar	EAX,7
		or	EAX,EDX
		mov	-0Eh[EBP],AX
		mov	EAX,0FFFFFFC0h[EBX]
		movzx	EAX,word ptr [EAX]
		cmp	-014h[EBP],AX
		jae	L531E
		movzx	ESI,word ptr -014h[EBP]
		movzx	EAX,word ptr -012h[EBP]
		shl	EAX,4
		lea	EDX,[00h][EAX*8]
		sub	EDX,EAX
		mov	EAX,0FFFFFFF0h[EBX]
		add	EDX,EAX
		mov	ECX,0FFFFFFE8h[EBX]
		imul	EAX,ESI,016E4h
		add	EAX,ECX
		mov	4[EAX],EDX
		movzx	EAX,word ptr -014h[EBP]
		mov	EDX,0FFFFFFE8h[EBX]
		imul	EAX,EAX,016E4h
		add	EAX,EDX
		mov	EAX,4[EAX]
		mov	word ptr 066h[EAX],0
		movzx	EAX,word ptr -014h[EBP]
		mov	EDX,0FFFFFFE8h[EBX]
		imul	EAX,EAX,016E4h
		add	EAX,EDX
		mov	EAX,4[EAX]
		mov	dword ptr 068h[EAX],0
		movzx	EAX,word ptr -014h[EBP]
		mov	EDX,0FFFFFFE8h[EBX]
		imul	EAX,EAX,016E4h
		add	EAX,EDX
		mov	EAX,4[EAX]
		mov	byte ptr 06Ch[EAX],0
		movzx	EAX,word ptr -014h[EBP]
		mov	EDX,0FFFFFFE8h[EBX]
		imul	EAX,EAX,016E4h
		add	EAX,EDX
		mov	EDX,4[EAX]
		movzx	EAX,word ptr -0Eh[EBP]
		mov	ECX,-0Ch[EBP]
		mov	ESI,8[EBP]
		add	ECX,ESI
		mov	8[ESP],EDX
		mov	4[ESP],EAX
		mov	[ESP],ECX
		call	  LFFFFFD50
		add	word ptr -012h[EBP],1
L531E:		movzx	EAX,word ptr -0Eh[EBP]
		add	-0Ch[EBP],EAX
L5325:		mov	EAX,-0Ch[EBP]
		cmp	EAX,0Ch[EBP]
		setb	AL
		test	AL,AL
		jne	L1000051A3
		add	ESP,020h
		pop	EBX
		pop	ESI
		pop	EBP
		ret
		push	EBP
		mov	EBP,ESP
		push	EBX
		sub	ESP,0C834h
		call	  L10000011B
		add	EBX,024D4h
		mov	EAX,8[EBP]
		mov	0FFFF37E4h[EBP],EAX
		mov	EAX,GS:[014h]
		mov	-0Ch[EBP],EAX
		xor	EAX,EAX
		lea	EAX,0FFFF37F4h[EBP]
		mov	4[ESP],EAX
		mov	EAX,0FFFFFFD4h[EBX]
		mov	[ESP],EAX
		call	  LFFFFFEC0
		mov	0FFFF37EEh[EBP],AX
		cmp	word ptr 0FFFF37EEh[EBP],0
		je	L5529
		movzx	EAX,word ptr 0FFFF37EEh[EBP]
		mov	EDX,0FFFFFFF0h[EBX]
		lea	EDX,070h[EDX]
		mov	8[ESP],EDX
		mov	4[ESP],EAX
		lea	EAX,0FFFF37F4h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFD50
		lea	EAX,0FFFF37F4h[EBP]
		mov	4[ESP],EAX
		mov	EAX,0FFFFFFE8h[EBX]
		lea	EAX,016E4h[EAX]
		mov	[ESP],EAX
		call	  LFFFFFEC0
		mov	0FFFF37EEh[EBP],AX
		cmp	word ptr 0FFFF37EEh[EBP],0
		je	L5529
		movzx	EAX,byte ptr 0FFFF37F4h[EBP]
		cmp	AL,0FFh
		jne	L5433
		movzx	EAX,byte ptr 0FFFF37F5h[EBP]
		cmp	AL,0D8h
		jne	L5433
		mov	EAX,0FFFFFFE8h[EBX]
		movzx	EAX,word ptr 016E4h[EAX]
		movzx	EAX,AX
		mov	8[ESP],EAX
		lea	EAX,0FFFFDE2Fh[EBX]
		mov	4[ESP],EAX
		mov	EAX,0FFFFFFF0h[EBX]
		lea	EAX,071h[EAX]
		mov	[ESP],EAX
		call	  LFFFFFD10
		jmp short	L5462
L5433:		mov	EAX,0FFFFFFE8h[EBX]
		movzx	EAX,word ptr 016E4h[EAX]
		movzx	EAX,AX
		mov	8[ESP],EAX
		lea	EAX,0FFFFDE36h[EBX]
		mov	4[ESP],EAX
		mov	EAX,0FFFFFFF0h[EBX]
		lea	EAX,071h[EAX]
		mov	[ESP],EAX
		call	  LFFFFFD10
L5462:		lea	EAX,0FFFFDE3Dh[EBX]
		mov	4[ESP],EAX
		mov	EAX,0FFFFFFF0h[EBX]
		lea	EAX,071h[EAX]
		mov	[ESP],EAX
		call	  LFFFFFEA0
		mov	0FFFF37F0h[EBP],EAX
		cmp	dword ptr 0FFFF37F0h[EBP],0
		je	L5529
		movzx	EAX,word ptr 0FFFF37EEh[EBP]
		mov	EDX,0FFFF37F0h[EBP]
		mov	0Ch[ESP],EDX
		mov	dword ptr 8[ESP],1
		mov	4[ESP],EAX
		lea	EAX,0FFFF37F4h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFF00
		mov	EAX,0FFFF37F0h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFE40
		mov	EAX,0FFFFFFF0h[EBX]
		lea	EAX,071h[EAX]
		mov	[ESP],EAX
		call	  LFFFFFE90
		mov	8[ESP],EAX
		mov	EAX,0FFFFFFF0h[EBX]
		lea	EAX,071h[EAX]
		mov	4[ESP],EAX
		mov	EAX,0FFFF37E4h[EBP]
		mov	[ESP],EAX
		call	  LFFFFFE50
		mov	EAX,0FFFFFFF0h[EBX]
		lea	EAX,071h[EAX]
		mov	[ESP],EAX
		call	  LFFFFFE90
		lea	EDX,[00h][EAX*4]
		mov	EAX,0FFFF37E4h[EBP]
		add	EAX,EDX
		mov	dword ptr [EAX],0
		jmp short	L5529
		mov	[ESP],EAX
		call	  LFFFFFFA0
L5529:		mov	EAX,-0Ch[EBP]
		xor	EAX,GS:[014h]
		je	L553A
		call	  L5550
L553A:		add	ESP,0C834h
		pop	EBX
		pop	EBP
		ret
		nop
		nop
		nop
		nop
		nop
		nop
		nop
L5550:		push	EBX
		call	  L5564
		add	EBX,022CAh
		sub	ESP,8
		call	  LFFFFFF10
L5564:		mov	EBX,[ESP]
		ret
.text	ends
.fini	segment
	assume	CS:.fini
		push	EBX
		sub	ESP,8
		call	  L9
L9:		pop	EBX
		add	EBX,022AFh
		add	ESP,8
		pop	EBX
		ret
.fini	ends
.rodata	segment
	db	06fh,070h,065h,06eh,05fh,070h,06fh,072h	;open_por
	db	074h,03ah,020h,055h,06eh,061h,062h,06ch	;t: Unabl
	db	065h,020h,074h,06fh,020h,06fh,070h,065h	;e to ope
	db	06eh,020h,072h,061h,064h,069h,06fh,020h	;n radio 
	db	070h,06fh,072h,074h,00ah,000h,000h,000h	;port....
	db	0ffffff8eh,0ffffffe3h,038h,0ffffff8eh,0ffffffe3h,038h,016h,040h	;..8..8.@
	db	054h,068h,065h,020h,070h,061h,063h,06bh	;The pack
	db	065h,074h,020h,06eh,075h,06dh,062h,065h	;et numbe
	db	072h,020h,069h,073h,020h,06fh,075h,074h	;r is out
	db	020h,06fh,066h,020h,072h,061h,06eh,067h	; of rang
	db	065h,000h,000h,000h,074h,068h,065h,020h	;e...the 
	db	070h,061h,063h,06bh,065h,074h,020h,06eh	;packet n
	db	075h,06dh,062h,065h,072h,020h,069h,073h	;umber is
	db	020h,06fh,075h,074h,020h,06fh,066h,020h	; out of 
	db	072h,061h,06eh,067h,065h,000h,048h,065h	;range.He
	db	061h,064h,065h,072h,020h,063h,06fh,06dh	;ader com
	db	070h,06ch,065h,074h,065h,02eh,020h,000h	;plete. .
	db	044h,069h,072h,065h,063h,074h,06fh,072h	;Director
	db	079h,020h,063h,06fh,06dh,070h,06ch,065h	;y comple
	db	074h,065h,02eh,020h,000h,000h,000h,000h	;te. ....
	db	041h,06ch,06ch,020h,06fh,062h,06ah,065h	;All obje
	db	063h,074h,020h,062h,06fh,064h,069h,065h	;ct bodie
	db	073h,020h,063h,06fh,06dh,070h,06ch,065h	;s comple
	db	074h,065h,02eh,020h,025h,064h,00ah,000h	;te. %d..
	db	048h,065h,061h,064h,065h,072h,020h,045h	;Header E
	db	072h,072h,06fh,072h,02eh,020h,000h,025h	;rror. .%
	db	064h,02eh,06ah,070h,067h,000h,025h,064h	;d.jpg.%d
	db	02eh,070h,06eh,067h,000h,077h,062h,000h	;.png.wb.
.rodata	ends
.jcr	segment
	db	000h,000h,000h,000h	;....
.jcr	ends
.got	segment
	db	000h,000h,000h,000h,000h,000h,000h,000h	;........
	db	000h,000h,000h,000h,000h,000h,000h,000h	;........
	db	000h,000h,000h,000h,000h,000h,000h,000h	;........
	db	000h,000h,000h,000h,000h,000h,000h,000h	;........
	db	000h,000h,000h,000h,000h,000h,000h,000h	;........
	db	000h,000h,000h,000h,000h,000h,000h,000h	;........
	db	000h,000h,000h,000h,000h,000h,000h,000h	;........
	db	000h,000h,000h,000h,000h,000h,000h,000h	;........
	db	000h,000h,000h,000h,000h,000h,000h,000h	;........
	db	000h,000h,000h,000h	;....
.got	ends
.got.plt	segment
	db	0ffffffbch,0ffffff8eh,000h,000h,000h,000h,000h,000h	;........
	db	000h,000h,000h,000h,0ffffffe6h,014h,000h,000h	;........
	db	0fffffff6h,014h,000h,000h,006h,015h,000h,000h	;........
	db	016h,015h,000h,000h,026h,015h,000h,000h	;....&...
	db	036h,015h,000h,000h,046h,015h,000h,000h	;6...F...
	db	056h,015h,000h,000h,066h,015h,000h,000h	;V...f...
	db	076h,015h,000h,000h,0ffffff86h,015h,000h,000h	;v.......
	db	0ffffff96h,015h,000h,000h,0ffffffa6h,015h,000h,000h	;........
	db	0ffffffb6h,015h,000h,000h,0ffffffc6h,015h,000h,000h	;........
	db	0ffffffd6h,015h,000h,000h,0ffffffe6h,015h,000h,000h	;........
	db	0fffffff6h,015h,000h,000h,006h,016h,000h,000h	;........
	db	016h,016h,000h,000h,026h,016h,000h,000h	;....&...
	db	036h,016h,000h,000h,046h,016h,000h,000h	;6...F...
	db	056h,016h,000h,000h,066h,016h,000h,000h	;V...f...
	db	076h,016h,000h,000h,0ffffff86h,016h,000h,000h	;v.......
	db	0ffffff96h,016h,000h,000h,0ffffffa6h,016h,000h,000h	;........
	db	0ffffffb6h,016h,000h,000h,0ffffffc6h,016h,000h,000h	;........
	db	0ffffffd6h,016h,000h,000h,0ffffffe6h,016h,000h,000h	;........
	db	0fffffff6h,016h,000h,000h,006h,017h,000h,000h	;........
	db	016h,017h,000h,000h,026h,017h,000h,000h	;....&...
	db	036h,017h,000h,000h,046h,017h,000h,000h	;6...F...
	db	056h,017h,000h,000h,066h,017h,000h,000h	;V...f...
	db	076h,017h,000h,000h,0ffffff86h,017h,000h,000h	;v.......
	db	0ffffff96h,017h,000h,000h,0ffffffa6h,017h,000h,000h	;........
	db	0ffffffb6h,017h,000h,000h,0ffffffc6h,017h,000h,000h	;........
	db	0ffffffd6h,017h,000h,000h	;....
.got.plt	ends
.data	segment
	db	0ffffffcch,0ffffff90h,000h,000h,001h,000h,000h,000h	;........
	db	000h,000h,000h,000h	;....
.data	ends
.bss	segment
.bss	ends
	end
