contract main {




// =====================  Runtime code  =====================


const balanceOf = eth.balance(this.address)


address owner;
address ceoAddress;
address erc721Address;
address usdtTokenAddress;
uint256 eTHFee;
uint256 sub_1029997b;
mapping of struct prices;
mapping of struct sub_f766297b;

function ceoAddress() {
    return ceoAddress
}

function sub_1029997b(?) {
    return sub_1029997b
}

function erc721Address() {
    return erc721Address
}

function ETHFee() {
    return eTHFee
}

function owner() {
    return owner
}

function usdtToken() {
    return usdtTokenAddress
}

function prices(uint256 arg1) {
    return prices[arg1].field_0, prices[arg1].field_256, prices[arg1].field_512
}

function sub_f766297b(?) {
    return sub_f766297b[arg1].field_0, sub_f766297b[arg1].field_256, sub_f766297b[arg1].field_512
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 > 0
    require arg2 > 0
    return arg1, arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == ceoAddress
    require arg1
    require arg2 > 0
    require eth.balance(this.address) > arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getApproved(uint256 arg1) {
    require ext_code.size(erc721Address)
    call erc721Address.getApproved(uint256 arg1) with:
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
    prices[arg1].field_512 = 0
    sub_f766297b[arg1].field_0 = msg.sender
    sub_f766297b[arg1].field_256 = arg3
    sub_f766297b[arg1].field_512 = 0
}

function sub_9ed7a068(?) payable {
    require prices[arg1].field_256 > 0
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
    prices[arg1].field_512 = 0
    sub_f766297b[arg1].field_0 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_512 = 0
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
        prices[arg1].field_512 = 0
        sub_f766297b[arg1].field_0 = 0
        sub_f766297b[arg1].field_256 = 0
        sub_f766297b[arg1].field_256 = 0
        sub_f766297b[arg1].field_512 = 0
    return address(ext_call.return_data[0]), prices[arg1].field_0, prices[arg1].field_256, sub_f766297b[arg1].field_256
}

function sub_9c06561b(?) payable {
    require ext_code.size(erc721Address)
    call erc721Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require prices[arg1].field_256 != arg2
    if prices[arg1].field_256 >= arg2:
        prices[arg1].field_0 = msg.sender
        prices[arg1].field_256 = arg2
        prices[arg1].field_512 = arg2 * eTHFee / 100
    else:
        require msg.value == (arg2 * eTHFee) - (prices[arg1].field_256 * eTHFee) / 100
        prices[arg1].field_0 = msg.sender
        prices[arg1].field_256 = arg2
        prices[arg1].field_512 += (arg2 * eTHFee) - (prices[arg1].field_256 * eTHFee) / 100
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
    if prices[arg1].field_512 > 0:
        call msg.sender with:
           value prices[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    prices[arg1].field_0 = 0
    prices[arg1].field_256 = 0
    prices[arg1].field_256 = 0
    prices[arg1].field_512 = 0
    sub_f766297b[arg1].field_0 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_512 = 0
    return prices[arg1].field_256
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
    require prices[arg1].field_256 > 0
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
    prices[arg1].field_512 = 0
    sub_f766297b[arg1].field_0 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_512 = 0
}

function buyByUsdt(uint256 arg1) {
    require sub_f766297b[arg1].field_256 > 0
    require ext_code.size(erc721Address)
    call erc721Address.getApproved(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(usdtTokenAddress)
    call usdtTokenAddress.0x23b872dd with:
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
    prices[arg1].field_0 = 0
    prices[arg1].field_256 = 0
    prices[arg1].field_256 = 0
    prices[arg1].field_512 = 0
    sub_f766297b[arg1].field_0 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_256 = 0
    sub_f766297b[arg1].field_512 = 0
}



}
