contract main {


// =======================  Init code  ======================


address stor0;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[2940 len 20]
    return code.data[188 len 2740]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_60ac0b71;
mapping of uint8 stor2;
address tokenAddress;

function sub_60ac0b71(?) {
    return sub_60ac0b71[arg1]
}

function sub_62329ff0(?) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function sub_b4032517(?) {
    return sub_60ac0b71[address(arg1)]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_97569767(?) {
    require msg.sender == owner
    stor2[address(arg1)] = 1
}

function sub_8fea3077(?) {
    if bool(stor2[address(arg1)]) != 1:
        return 0
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_cae50003(?) {
    require bool(stor2[address(msg.sender)]) == 1
    if not sub_60ac0b71[address(arg1)]:
        sub_60ac0b71[address(arg1)] = arg2
    require sub_60ac0b71[address(arg1)] + arg2 >= sub_60ac0b71[address(arg1)]
}

function payout(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require sub_60ac0b71[address(arg1)]
    require arg3 >= sub_60ac0b71[address(arg1)]
    require arg3 <= sub_60ac0b71[address(arg1)]
    sub_60ac0b71[address(arg1)] -= arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}



}
