contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 1711]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
array of uint256 colors;

function owner() {
    return owner
}

function colors(uint256 arg1) {
    require arg1 < 10^6
    return colors[arg1]
}

function controller() {
    return address(stor1.length)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setController(address arg1) {
    require msg.sender == owner
    emit ControllerChanged(address(stor1.length), arg1);
    address(stor1.length) = arg1
}

function sub_12a20f9b(?) {
    require msg.sender == address(stor1.length)
    require arg2 < 16
    require arg1 < 10^6
    colors[arg1] = arg2
    emit 0x7972cf16: arg1, arg2
}

function sub_f6aa2603(?) {
    idx = 32000096
    s = 2
    while 64000096 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return colors.length, mem[32000128 len 31999968]
}



}
