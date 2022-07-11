contract main {




// =====================  Runtime code  =====================


address owner;
uint32 stor1; offset 160
address sub_b068b7adAddress;
uint256 holdings;
mapping of uint256 investor;

function investor(address arg1) {
    require calldata.size - 4 >= 32
    return investor[address(arg1)]
}

function owner() {
    return owner
}

function sub_b068b7ad(?) {
    return sub_b068b7adAddress
}

function holdings() {
    return holdings
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function withdrawEther(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if block.timestamp > stor1:
        if investor[msg.sender]:
            require ext_code.size(sub_b068b7adAddress)
            call sub_b068b7adAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, investor[msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            investor[msg.sender] = 0
    if msg.value:
        emit Donate(msg.value, msg.sender);
}

function sub_5b482ea7(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg2 + holdings >= holdings
    holdings += arg2
    require ext_code.size(sub_b068b7adAddress)
    staticcall sub_b068b7adAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require holdings <= ext_call.return_data[0]
    require arg2 + investor[address(arg1)] >= investor[address(arg1)]
    investor[address(arg1)] += arg2
    emit 0x49a4c683: arg2, arg1
}

function rescueTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require sub_b068b7adAddress != arg1
    require arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
