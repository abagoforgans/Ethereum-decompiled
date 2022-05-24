contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 bal;
address pyramidAddress;
address pyramidAddress;
address owner;

function pyramid() {
    return pyramidAddress
}

function bal() {
    return bal
}

function owner() {
    return owner
}

function pyramidAddress() {
    return pyramidAddress
}

function _fallback() payable {
  stop
}

function sub_4e2753c3(?) {
    pyramidAddress = arg1
    pyramidAddress = arg1
}

function sell(uint256 arg1) {
    require ext_code.size(pyramidAddress)
    call pyramidAddress.0xe4849b32 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exit() {
    require ext_code.size(pyramidAddress)
    call pyramidAddress.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function myDividends(bool arg1) {
    require ext_code.size(pyramidAddress)
    call pyramidAddress.0x688abbf7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(pyramidAddress)
    call pyramidAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw() {
    require ext_code.size(pyramidAddress)
    call pyramidAddress.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_1c1b93c1(?) payable {
    require ext_code.size(pyramidAddress)
    call pyramidAddress.'k/F2' with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg1
    require ext_code.size(pyramidAddress)
    call pyramidAddress.0xd30ecd53 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(uint256 arg1) payable {
    require ext_code.size(pyramidAddress)
    call pyramidAddress.'k/F2' with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg1
    require ext_code.size(pyramidAddress)
    call pyramidAddress.0xf088d547 with:
       value msg.value wei
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7f3d9ecc(?) payable {
    require ext_code.size(pyramidAddress)
    call pyramidAddress.0x6b2f4632 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg1
    idx = 0
    while idx < arg2:
        require arg2
        mem[96] = 0xd30ecd5300000000000000000000000000000000000000000000000000000000
        require ext_code.size(pyramidAddress)
        call pyramidAddress.0xd30ecd53 with:
           value msg.value / arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
