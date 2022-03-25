contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() payable {
    mem[96 len -5680] = code.data[6012 len -5680]
    mem[64] = -5584
    mem[0] = mem[108 len 20]
    mem[32] = 0
    stor0[mem[108 len 20]] = 1
    mem[-5552] = mem[108 len 20]
    mem[-5488] = mem[mem[128] + 96]
    _7 = mem[mem[128] + 96]
    mem[-5456 len mem[mem[128] + 96]] = mem[mem[128] + 128 len mem[mem[128] + 96]]
    if not _7 % 32:
        emit 0x931288ed: msg.sender, mem[-5552], 96, mem[-5488 len _7 + 32]
    else:
        mem[floor32(_7) - 5456] = mem[floor32(_7) + -(_7 % 32) - 5424 len _7 % 32]
        emit 0x931288ed: msg.sender, mem[-5552], 96, mem[-5488 len floor32(_7) + 64]
    return code.data[332 len 5680]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;

function sub_01da0abb(?) {
    return bool(stor2[arg1[all]])
}

function sub_11dda8ba(?) {
    signer = erecover(sha3(this.address, arg1, arg2[all], arg3), arg4 << 248, arg5, arg6) 
    require erecover.result
    return bool(stor0[address(signer)])
}

function sub_e374e90f(?) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert 
}

function sub_b6d80702(?) {
    signer = erecover(sha3(this.address, arg1, arg2[all], arg3), arg4 << 248, arg5, arg6) 
    require erecover.result
    require stor0[address(signer)]
    require bool(stor1[arg3]) != 1
    stor1[arg3] = 1
    call arg1 with:
         gas 4026531839 and gas_remaining wei
        args arg2[all]
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4d4a32f2(?) {
    signer = erecover(sha3(this.address, arg1[all], arg2), arg3 << 248, arg4, arg5) 
    require erecover.result
    if not stor0[address(signer)]:
        emit 0xe2a3354b: msg.sender, 0, arg2
        return 0
    if bool(stor1[arg2]) == 1:
        emit 0xe2a3354b: msg.sender, 0, arg2
        return 0
    stor1[arg2] = 1
    stor2[arg1[all]] = 1
    emit 0xcc73cb56: address(signer), Array(len=arg1.length, data=arg1[all]), arg2
    emit 0xe2a3354b: msg.sender, 0, arg2
    return 1
}

function sub_639313cf(?) {
    signer = erecover(sha3(this.address, arg1[all], arg2[all], arg3), arg4 << 248, arg5, arg6) 
    require erecover.result
    if not stor0[address(signer)]:
        emit 0xe2a3354b: msg.sender, 0, arg3
        return 0
    if bool(stor1[arg3]) == 1:
        emit 0xe2a3354b: msg.sender, 0, arg3
        return 0
    stor1[arg3] = 1
    emit 0xdef821cc: address(signer), Array(len=arg1.length, data=arg1[all]), arg1.length + 160, arg3
    emit 0xe2a3354b: msg.sender, 0, arg3
    return 1
}

function sub_0428e035(?) {
    signer = erecover(sha3(this.address, arg1, arg2), arg4 << 248, arg5, arg6) 
    require erecover.result
    if not stor0[address(signer)]:
        emit 0xe2a3354b: msg.sender, 0, arg2
        return 0
    if bool(stor1[arg2]) == 1:
        emit 0xe2a3354b: msg.sender, 0, arg2
        return 0
    stor1[arg2] = 1
    stor0[address(arg1)] = 1
    emit 0x931288ed: address(signer), address(arg1), Array(len=arg3.length, data=arg3[all])
    emit 0xe2a3354b: msg.sender, 0, arg2
    return 1
}

function sub_0c27c6b4(?) {
    signer = erecover(sha3(this.address, arg1, arg2), arg4 << 248, arg5, arg6) 
    require erecover.result
    if not stor0[address(signer)]:
        emit 0xe2a3354b: msg.sender, 0, arg2
        return 0
    if bool(stor1[arg2]) == 1:
        emit 0xe2a3354b: msg.sender, 0, arg2
        return 0
    stor1[arg2] = 1
    stor0[address(arg1)] = 0
    emit 0x9dec7005: address(signer), address(arg1), Array(len=arg3.length, data=arg3[all])
    emit 0xe2a3354b: msg.sender, 0, arg2
    return 1
}



}
