contract main {




// =====================  Runtime code  =====================


address sub_3cb24cf8Address;
address stor1;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;

function sub_3cb24cf8(?) {
    return sub_3cb24cf8Address
}

function _fallback() payable {
  stop
}

function sub_47882240(?) {
    require address(stor2.field_0) == msg.sender
    sub_3cb24cf8Address = arg1
    stor1 = arg1
    Mask(96, 0, stor2.field_160) = 0
}

function withdrawBalance() {
    call address(stor2.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function myTokens() {
    require ext_code.size(stor1)
    call stor1.0x949e8acd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw() {
    require ext_code.size(stor1)
    call stor1.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(stor2.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function exit() {
    require address(stor2.field_0) == msg.sender
    require ext_code.size(stor1)
    call stor1.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(stor2.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function transfer(address arg1, uint256 arg2) {
    require address(stor2.field_0) == msg.sender
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sell(uint256 arg1) {
    require address(stor2.field_0) == msg.sender
    require ext_code.size(stor1)
    if arg1:
        call stor1.0xe4849b32 with:
             gas gas_remaining wei
            args arg1
    else:
        call stor1.0x949e8acd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xe4849b32 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require not uint8(stor2.field_160)
    require eth.balance(sub_3cb24cf8Address) <= arg2
    idx = 0
    while idx < arg3:
        require arg3
        mem[100] = arg1
        require ext_code.size(stor1)
        call stor1.buy(address arg1) with:
           value msg.value / arg3 wei
             gas gas_remaining wei
            args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(stor1)
    call stor1.0x949e8acd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(stor2.field_0) == msg.sender
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor2.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    Mask(96, 0, stor2.field_160) = 1
}



}
