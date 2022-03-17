contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[29 len 4005]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint8 wasSuccessful; offset 8
uint8 sub_3edad4bc; offset 16
uint256 sub_e9bc6f61;
uint256 sub_5b38f1f2;
address sub_dd7bde1aAddress;
uint256 stor3;
uint256 sub_68409783;
array of uint256 sub_d0a31674;
uint256 sub_bb5be2f4;
uint256 sub_682436a0;
uint256 sub_b3f05a2e;
address sub_dec6bd82Address;
address sub_3fbd7255Address;
uint256 stor10;
array of uint256 sub_9aace765;

function wasSuccessful() payable {
    return wasSuccessful
}

function sub_3edad4bc(?) payable {
    return sub_3edad4bc
}

function sub_3fbd7255(?) payable {
    return address(sub_3fbd7255Address)
}

function sub_5b38f1f2(?) payable {
    return sub_5b38f1f2
}

function sub_682436a0(?) payable {
    return sub_682436a0
}

function sub_68409783(?) payable {
    return sub_68409783
}

function sub_9aace765(?) payable {
    return sub_9aace765[0 len sub_9aace765.length]
}

function sub_b3f05a2e(?) payable {
    return sub_b3f05a2e
}

function sub_bb5be2f4(?) payable {
    return sub_bb5be2f4
}

function sub_d0a31674(?) payable {
    return sub_d0a31674[0 len sub_d0a31674.length]
}

function sub_dd7bde1a(?) payable {
    return address(sub_dd7bde1aAddress)
}

function sub_dec6bd82(?) payable {
    return sub_dec6bd82Address
}

function sub_e9bc6f61(?) payable {
    return sub_e9bc6f61
}

function _fallback() payable {
  stop
}

function reset() payable {
    stor0 = 0
}

function setBool() payable {
    sub_3edad4bc = 1
}

function setInt(int256 arg1) payable {
    sub_5b38f1f2 = arg1
}

function setUInt(uint256 arg1) payable {
    sub_e9bc6f61 = arg1
}

function setBytes32(bytes32 arg1) payable {
    sub_68409783 = arg1
}

function setAddress(address arg1) payable {
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
}

function doLoops(uint256 arg1) payable {
    idx = 0
    while idx < arg1:
        call this.address with:
           value 1 wei
             gas 0 wei
        idx = idx + 1
        continue 
}

function doExecution(address arg1) payable {
    call arg1 with:
       funct Mask(32, 224, sha3('execute()')) >> 224
         gas gas_remaining - 25050 wei
    if not ext_call.success:
        wasSuccessful = 2
    else:
        wasSuccessful = 1
}

function registerData(address arg1, int256 arg2, bytes32 arg3, address arg4) payable {
    call arg1.registerData() with:
         gas gas_remaining - 25050 wei
        args arg2, arg3, arg4
    if not ext_call.success:
        stor0 = 2
    else:
        stor0 = 1
}

function setBytes(bytes arg1) payable {
    emit code.data[3973 len 32]: Array(len=arg1.length, data=arg1[all])
    emit code.data[3973 len 32]: Array(len=calldata.size, data=call.data[0 len calldata.size])
    sub_d0a31674[] = Array(len=arg1.length, data=arg1[all])
}

function registerBool(address arg1, bool arg2) payable {
    call arg1 with:
       funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
         gas gas_remaining - 25050 wei
        args arg2
    if not ext_call.success:
        stor0 = 2
    else:
        stor0 = 1
}

function registerInt(address arg1, int256 arg2) payable {
    call arg1 with:
       funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
         gas gas_remaining - 25050 wei
        args arg2
    if not ext_call.success:
        stor0 = 2
    else:
        stor0 = 1
}

function registerUInt(address arg1, uint256 arg2) payable {
    call arg1 with:
       funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
         gas gas_remaining - 25050 wei
        args arg2
    if not ext_call.success:
        stor0 = 2
    else:
        stor0 = 1
}

function registerBytes32(address arg1, bytes32 arg2) payable {
    call arg1 with:
       funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
         gas gas_remaining - 25050 wei
        args arg2
    if not ext_call.success:
        stor0 = 2
    else:
        stor0 = 1
}

function registerAddress(address arg1, address arg2) payable {
    call arg1 with:
       funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
         gas gas_remaining - 25050 wei
        args arg2
    if not ext_call.success:
        stor0 = 2
    else:
        stor0 = 1
}

function scheduleSetBool(address arg1, uint256 arg2, bool arg3) payable {
    call arg1.scheduleCall(address rg1, bytes4 rg2, uint256 rg3) with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args address(this.address), Mask(32, 224, sha3('setBool()')), arg2
    require ext_call.success
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
         gas gas_remaining - 25050 wei
        args arg3
}

function scheduleSetUInt(address arg1, uint256 arg2, uint256 arg3) payable {
    call arg1.scheduleCall(address rg1, bytes4 rg2, uint256 rg3) with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args address(this.address), Mask(32, 224, sha3('setUInt(uint256)')), arg2
    require ext_call.success
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
         gas gas_remaining - 25050 wei
        args arg3
}

function registerBytes(address arg1, bytes arg2) payable {
    mem[ceil32(arg2.length) + 164 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
             gas gas_remaining - 25050 wei
            args arg2.length, arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 164] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
             gas gas_remaining - 25050 wei
            args arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 164 len -(arg2.length % 32) + 32]
    if not ext_call.success:
        stor0 = 2
    else:
        stor0 = 1
}

function registerMany(address arg1, uint256 arg2, int256 arg3, uint256 arg4, bytes20 arg5, address arg6, bytes arg7) payable {
    mem[ceil32(arg7.length) + 324 len arg7.length] = arg7[all]
    if not arg7.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
             gas gas_remaining - 25050 wei
            args arg2, arg3, arg4, arg5, address(arg6), arg7.length, arg7[all]
    else:
        mem[floor32(arg7.length) + ceil32(arg7.length) + 324] = mem[floor32(arg7.length) + ceil32(arg7.length) + -(arg7.length % 32) + 356 len arg7.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3(Mask(112, 0, 'registerData()'))) >> 224
             gas gas_remaining - 25050 wei
            args arg2, arg3, arg4, arg5, address(arg6), arg7.length, arg7[all], mem[ceil32(arg7.length) + arg7.length + 324 len -(arg7.length % 32) + 32]
    if not ext_call.success:
        stor0 = 2
    else:
        stor0 = 1
}

function setMany(uint256 arg1, int256 arg2, uint256 arg3, bytes20 arg4, address arg5, bytes arg6) payable {
    mem[128 len arg6.length] = arg6[all]
    emit code.data[3973 len 32]: Array(len=arg6.length, data=arg6[all])
    mem[ceil32(arg6.length) + 128] = 32
    emit code.data[3973 len 32]: Array(len=calldata.size, data=call.data[0 len calldata.size])
    sub_bb5be2f4 = arg1
    sub_682436a0 = arg2
    sub_b3f05a2e = arg3
    sub_dec6bd82Address = Mask(160, 96, arg4) >> 96
    uint256(stor10) = arg5 or Mask(96, 160, uint256(stor10))
    sub_9aace765.length = (2 * arg6.length) + 1
    s = 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9
    idx = 128
    while arg6.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg6.length + 31) >> 5) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9
    while (sub_9aace765.length + 31 / 32) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}



}
