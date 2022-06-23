contract main {




// =====================  Runtime code  =====================


const amountInContract = eth.balance(this.address)

const sub_d92c20e3(?) = 0x4a6bc4e803c62081ffebcc8d227b5a87a58f1f8f


address companyAddress;
address sub_2abcf060Address;
address developerAddress;
uint32 stor3;
address WETHAddress;
address DAIAddress;
uint256 sub_415deffa;

function sub_2abcf060(?) {
    return sub_2abcf060Address
}

function sub_415deffa(?) {
    return sub_415deffa
}

function company() {
    return companyAddress
}

function WETH() {
    return address(WETHAddress)
}

function developer() {
    return developerAddress
}

function DAI() {
    return DAIAddress
}

function killContract() {
    if companyAddress != msg.sender:
        if sub_2abcf060Address != msg.sender:
            revert with 0, 'Only admin can do this'
    selfdestruct(sub_2abcf060Address)
}

function _fallback() payable {
    require not calldata.size
    emit LogDepositReceived(msg.sender);
}

function sub_89d27dbd(?) {
    if companyAddress != msg.sender:
        if sub_2abcf060Address != msg.sender:
            revert with 0, 'Only admin can do this'
    sub_415deffa++
}

function payout() payable {
    if companyAddress != msg.sender:
        if sub_2abcf060Address != msg.sender:
            revert with 0, 'Only admin can do this'
    call developerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6c4237f0(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(0x4a6bc4e803c62081ffebcc8d227b5a87a58f1f8f)
    call 0x4a6bc4e803c62081ffebcc8d227b5a87a58f1f8f.buyAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor3), arg1, DAIAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return arg2
}

function sub_d247dd62(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(0x4a6bc4e803c62081ffebcc8d227b5a87a58f1f8f)
    call 0x4a6bc4e803c62081ffebcc8d227b5a87a58f1f8f.buyAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor3), arg1, DAIAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return arg2
}

function exchange(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(0x4a6bc4e803c62081ffebcc8d227b5a87a58f1f8f)
    call 0x4a6bc4e803c62081ffebcc8d227b5a87a58f1f8f.sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg3, address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
