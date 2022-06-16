contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 deposits;
address k1Address;
address k2Address;

function k1() {
    return k1Address
}

function owner() {
    return owner
}

function k2() {
    return k2Address
}

function deposits(address arg1) {
    return deposits[arg1]
}

function sub_1c113973(?) {
    require msg.sender == owner
    k1Address = arg1
}

function changeAddress2(address arg1) {
    require msg.sender == owner
    k2Address = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    deposits[address(msg.sender)] = msg.value
    call k1Address with:
       value 3 * msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call k2Address with:
       value 2 * msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Accepted(msg.sender, msg.value);
}



}
