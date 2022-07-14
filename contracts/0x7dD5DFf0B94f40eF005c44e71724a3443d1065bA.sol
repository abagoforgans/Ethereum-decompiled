contract main {




// =====================  Runtime code  =====================


address primaryAddress;
mapping of uint256 depositsOf;

function primary() {
    return primaryAddress
}

function depositsOf(address arg1) {
    require calldata.size - 4 >= 32
    return depositsOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function transferPrimary(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == primaryAddress
    require arg1
    primaryAddress = arg1
}

function deposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == primaryAddress
    require depositsOf[address(arg1)] + msg.value >= depositsOf[address(arg1)]
    depositsOf[address(arg1)] += msg.value
    emit Deposited(msg.value, arg1);
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == primaryAddress
    depositsOf[address(arg1)] = 0
    call arg1 with:
       value depositsOf[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(depositsOf[address(arg1)], arg1);
}



}
