contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[1451 len 20]
    return code.data[72 len 1367]
}



// =====================  Runtime code  =====================


address owner;
address targetAddress;
mapping of uint32 sub_206bd362;
mapping of address sub_0a671152;
mapping of uint256 sub_3407bf11;
uint8 stor5;

function sub_0a671152(?) {
    return sub_0a671152[arg1]
}

function sub_206bd362(?) {
    return sub_206bd362[Mask(32, 224, arg1)]
}

function sub_3407bf11(?) {
    return sub_3407bf11[arg1]
}

function owner() {
    return owner
}

function target() {
    return targetAddress
}

function _fallback() payable {
    revert 
}

function sub_bea27e7c(?) {
    if targetAddress == msg.sender:
        sub_206bd362[Mask(32, 224, arg1)] = arg2
}

function replaceOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
        emit NewOwner(arg1);
}

function sub_08fb3b0d(?) {
    if owner == msg.sender:
        sub_3407bf11[arg1] = arg2
        emit 0x762ffd58: arg1, arg2
    else:
        if stor5:
            sub_3407bf11[arg1] = arg2
            emit 0x762ffd58: arg1, arg2
}

function sub_18cf4469(?) {
    if owner == msg.sender:
        sub_0a671152[arg1] = arg2
        emit 0x918f8b70: arg1, arg2
    else:
        if stor5:
            sub_0a671152[arg1] = arg2
            emit 0x918f8b70: arg1, arg2
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    if owner == msg.sender:
        targetAddress = address(arg1)
        stor5 = 1
        call address(arg1) with:
           funct Mask(32, 224, sha3('initialize(address)')) >> 224
             gas gas_remaining - 25050 wei
            args this.address
        stor5 = 0
        require ext_call.success
        emit 0xffc52759: targetAddress
}



}
