contract main {




// =====================  Runtime code  =====================


address erc721Address;
address stor1;
mapping of struct prices;
mapping of struct sub_f766297b;

function erc721Address() {
    return erc721Address
}

function prices(uint256 arg1) {
    return prices[arg1].field_0, prices[arg1].field_256
}

function sub_f766297b(?) {
    return sub_f766297b[arg1].field_0, sub_f766297b[arg1].field_256
}

function _fallback() payable {
    revert
}

function ownerOf(uint256 arg1) {
    require ext_code.size(erc721Address)
    call erc721Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function setPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(erc721Address)
    call erc721Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    prices[arg1].field_0 = msg.sender
    prices[arg1].field_256 = arg2
    sub_f766297b[arg1].field_0 = msg.sender
    sub_f766297b[arg1].field_256 = arg3
}

function sub_9cd0726a(?) {
    require ext_code.size(erc721Address)
    call erc721Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    prices[arg1].field_0 = 0
    prices[arg1].field_256 = 0
    prices[arg1].field_256 = 0
    sub_f766297b[arg1].field_0 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_256 = 0
    return prices[arg1].field_256
}

function getPrice(uint256 arg1) {
    require ext_code.size(erc721Address)
    call erc721Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if prices[arg1].field_0 != address(ext_call.return_data[0]):
        prices[arg1].field_0 = 0
        prices[arg1].field_256 = 0
        prices[arg1].field_256 = 0
        sub_f766297b[arg1].field_0 = 0
        sub_f766297b[arg1].field_256 = 0
        sub_f766297b[arg1].field_256 = 0
    return address(ext_call.return_data[0]), prices[arg1].field_0, prices[arg1].field_256, sub_f766297b[arg1].field_256
}

function buy(uint256 arg1) payable {
    require ext_code.size(erc721Address)
    call erc721Address.getApproved(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require prices[arg1].field_256 == msg.value
    require ext_code.size(erc721Address)
    call erc721Address.0x23b872dd with:
         gas gas_remaining wei
        args prices[arg1].field_0, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call prices[arg1].field_0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    prices[arg1].field_0 = 0
    prices[arg1].field_256 = 0
    prices[arg1].field_256 = 0
    sub_f766297b[arg1].field_0 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_256 = 0
}

function buyByUsdt(uint256 arg1) {
    require ext_code.size(erc721Address)
    call erc721Address.getApproved(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_f766297b[arg1].field_0, sub_f766297b[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(erc721Address)
    call erc721Address.0x23b872dd with:
         gas gas_remaining wei
        args sub_f766297b[arg1].field_0, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_f766297b[arg1].field_0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    prices[arg1].field_0 = 0
    prices[arg1].field_256 = 0
    prices[arg1].field_256 = 0
    sub_f766297b[arg1].field_0 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_256 = 0
}



}
