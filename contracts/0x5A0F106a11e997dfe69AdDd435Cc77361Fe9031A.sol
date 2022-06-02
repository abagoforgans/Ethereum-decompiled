contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
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
    if block.timestamp <= 428296 * 3600:
        revert with 0, 'Date has not come yet'
    if msg.sender == owner:
        if not msg.value:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdraw(eth.balance(this.address), msg.sender);
}



}
