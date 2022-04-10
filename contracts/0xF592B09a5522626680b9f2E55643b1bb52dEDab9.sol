contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    mem[96 len 96] = code.data[884 len 96]
    s = 0
    idx = 0
    while idx < 3:
        mem[0] = mem[(32 * idx) + 108 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 108 len 20]] = idx + 1
        s = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
    return code.data[109 len 775]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint8 stor1;

function sub_753334dd(?) payable {
    require bool(stor1[arg2]) != 1
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if arg3.length != 65:
        if stor0 != 0:
            if 65 == arg4.length:
                if mem[ceil32(arg3.length) + 224 len 1] >= 27:
                    signer = erecover(arg2, mem[ceil32(arg3.length) + 193] << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
                else:
                    signer = erecover(arg2, mem[ceil32(arg3.length) + 224 len 1] + 27 << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
                if erecover.result:
                    if stor0[address(signer)] != 0:
                        if address(signer) != 0:
                            selfdestruct(arg1)
    else:
        _7 = mem[161]
        if mem[192 len 1] >= 27:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = mem[192 len 1]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = mem[128]
            signer = erecover(arg2, _7 << 248, mem[128], mem[160]) 
        else:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = uint8(mem[192 len 1] + 27)
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = mem[128]
            signer = erecover(arg2, uint8(_7) + 27 << 248, mem[128], mem[160]) 
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = signer
        if erecover.result:
            if stor0[address(signer)] != 0:
                if arg4.length != 65:
                    if stor0 != 0:
                        if address(signer):
                            selfdestruct(arg1)
                else:
                    if mem[ceil32(arg3.length) + 224 len 1] >= 27:
                        signer = erecover(arg2, mem[ceil32(arg3.length) + 193] << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
                    else:
                        signer = erecover(arg2, mem[ceil32(arg3.length) + 224 len 1] + 27 << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
                    if erecover.result:
                        if stor0[address(signer)] != 0:
                            if address(signer) != address(signer):
                                selfdestruct(arg1)
    revert 
}

function _fallback() payable {
  stop
}

function sub_90a54997(?) payable {
    require bool(stor1[arg5]) != 1
    mem[128 len arg6.length] = arg6[all]
    mem[ceil32(arg6.length) + 128] = arg7.length
    mem[ceil32(arg6.length) + 160 len arg7.length] = arg7[all]
    if arg6.length != 65:
        require stor0 != 0
        require 65 == arg7.length
        if mem[ceil32(arg6.length) + 224 len 1] >= 27:
            signer = erecover(arg5, mem[ceil32(arg6.length) + 193] << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
        else:
            signer = erecover(arg5, mem[ceil32(arg6.length) + 224 len 1] + 27 << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
        require erecover.result
        require stor0[address(signer)] != 0
        require address(signer) != 0
    else:
        _7 = mem[161]
        if mem[192 len 1] >= 27:
            mem[ceil32(arg6.length) + ceil32(arg7.length) + 192] = mem[192 len 1]
            mem[ceil32(arg6.length) + ceil32(arg7.length) + 224] = mem[128]
            signer = erecover(arg5, _7 << 248, mem[128], mem[160]) 
        else:
            mem[ceil32(arg6.length) + ceil32(arg7.length) + 192] = uint8(mem[192 len 1] + 27)
            mem[ceil32(arg6.length) + ceil32(arg7.length) + 224] = mem[128]
            signer = erecover(arg5, uint8(_7) + 27 << 248, mem[128], mem[160]) 
        mem[ceil32(arg6.length) + ceil32(arg7.length) + 160] = signer
        require erecover.result
        require stor0[address(signer)] != 0
        if arg7.length != 65:
            require stor0 != 0
            require address(signer)
        else:
            if mem[ceil32(arg6.length) + 224 len 1] >= 27:
                signer = erecover(arg5, mem[ceil32(arg6.length) + 193] << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
            else:
                signer = erecover(arg5, mem[ceil32(arg6.length) + 224 len 1] + 27 << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
            require erecover.result
            require stor0[address(signer)] != 0
            require address(signer) != address(signer)
    call arg2 with:
       value arg1 wei
         gas 0 wei
    call arg4 with:
       value arg3 wei
         gas 0 wei
    stor1[arg5] = 1
}



}
