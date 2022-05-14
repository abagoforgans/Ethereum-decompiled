contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 2604]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function sub_1fa8ee9d(?) {
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_143a2e31(?) {
    require stor1[address(msg.sender)]
    emit 0xd59b683d: arg2, arg1
}

function sub_7a911479(?) {
    require stor1[address(msg.sender)]
    emit 0x5c08b88b: arg2, arg1
}

function sub_de297a88(?) {
    require stor1[address(msg.sender)]
    emit 0x78bc6ae4: arg2, arg1
}

function sub_901945c3(?) {
    require stor1[address(msg.sender)]
    emit 0xe2d51347: arg2, arg3, arg1
}

function sub_fcfde0e0(?) {
    require stor1[address(msg.sender)]
    emit 0xcc30dd0d: address(arg2), arg3, arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function authorize(address arg1) {
    require msg.sender == owner
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        emit 0x312e560d: arg1
}



}
