contract main {




// =====================  Runtime code  =====================


address owner;
uint256 balance;
mapping of uint256 donations;
uint256 sub_af92c6a4;

function owner() {
    return owner
}

function sub_af92c6a4(?) {
    return sub_af92c6a4
}

function balance() {
    return balance
}

function donations(address arg1) {
    require calldata.size - 4 >= 32
    return donations[arg1]
}

function kill() payable {
    require owner == msg.sender
    emit ContractDestroyed(this.address);
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    require owner == msg.sender
    emit OwnerChanged(owner, arg1);
    owner = arg1
    return 0
}

function withdraw() {
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit() payable {
    require msg.value > 0
    require sub_af92c6a4 + 1 >= sub_af92c6a4
    sub_af92c6a4++
    require donations[address(msg.sender)] + msg.value >= donations[address(msg.sender)]
    donations[address(msg.sender)] += msg.value
    balance += msg.value
    balance += msg.value
    emit LogDonation(msg.value, sub_af92c6a4, msg.sender);
}



}
