contract main {




// =====================  Runtime code  =====================


const ETH = 0


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function approved(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function addBorrower(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function removeBorrower(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
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

function totalSupplyOf(address arg1) {
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function repay(address arg1, uint256 arg2) payable {
    if arg1:
        require not msg.value
    else:
        if arg2 != msg.value:
            require not msg.value
    if arg1:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function deposit(address arg1, uint256 arg2) payable {
    require msg.sender == owner
    if arg1:
        require not msg.value
    else:
        if arg2 != msg.value:
            require not msg.value
    if arg1:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function borrowFor(address arg1, address arg2, uint256 arg3) {
    require bool(stor1[address(msg.sender)]) == 1
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function borrow(address arg1, uint256 arg2) {
    require bool(stor1[address(msg.sender)]) == 1
    require bool(stor1[address(msg.sender)]) == 1
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}



}
