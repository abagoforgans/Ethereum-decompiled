contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
uint256 sub_42b1dc58;

function sub_42b1dc58(?) {
    return sub_42b1dc58
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function isUnlocked() {
    return (block.timestamp > sub_42b1dc58)
}

function deposit() payable {
    require msg.sender == owner
    emit depositMade(msg.value);
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    if block.timestamp <= sub_42b1dc58:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The time hasen't come yet to unlock the tokens'
    emit withdrawn(eth.balance(this.address));
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
