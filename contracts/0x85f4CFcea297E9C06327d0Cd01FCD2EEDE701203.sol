contract main {


// =======================  Init code  ======================


uint8 stor0;
uint128 stor0; offset 168
address stor0; offset 8
address stor1;
address stor2;
address stor5;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    require not msg.value
    address(stor0.field_8) = msg.sender
    Mask(88, 0, stor0.field_168) = 0
    stor1 = msg.sender
    stor2 = msg.sender
    stor5 = code.data[5980 len 20]
    return code.data[151 len 5817]
}



// =====================  Runtime code  =====================


uint8 stor0;
address addrAdmin; offset 8
address addrService;
address addrFinance;
address auctionContractAddress;
address equipContractAddress;
address tokenContractAddress;

function auctionContract() {
    return auctionContractAddress
}

function tokenContract() {
    return tokenContractAddress
}

function addrFinance() {
    return addrFinance
}

function isPaused() {
    return bool(stor0)
}

function addrAdmin() {
    return addrAdmin
}

function equipContract() {
    return equipContractAddress
}

function addrService() {
    return addrService
}

function _fallback() payable {
    revert
}

function doUnpause() {
    require addrAdmin == msg.sender
    require stor0
    stor0 = 0
}

function doPause() {
    require addrAdmin == msg.sender
    require not stor0
    stor0 = 1
}

function setDataEquip(address arg1) {
    require addrAdmin == msg.sender
    require arg1
    equipContractAddress = arg1
}

function setDataAuction(address arg1) {
    require addrAdmin == msg.sender
    require arg1
    auctionContractAddress = arg1
}

function setFinance(address arg1) {
    if addrFinance != msg.sender:
        require addrAdmin == msg.sender
    require arg1
    addrFinance = arg1
}

function setService(address arg1) {
    if addrService != msg.sender:
        require addrAdmin == msg.sender
    require arg1
    addrService = arg1
}

function setAdmin(address arg1) {
    require addrAdmin == msg.sender
    require arg1
    emit AdminTransferred(addrAdmin, arg1);
    addrAdmin = arg1
}

function withdraw(address arg1, uint256 arg2) {
    if addrFinance != msg.sender:
        require addrAdmin == msg.sender
    require arg2 > 0
    if not arg1:
        if arg2 >= eth.balance(this.address):
            call addrFinance with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call addrFinance with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    else:
        if arg2 >= eth.balance(this.address):
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    require ext_call.success
}

function starUpZero(uint256 arg1, uint256 arg2, uint256 arg3) {
    require not stor0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg3
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require ext_code.size(equipContractAddress)
    call equipContractAddress.isEquipedAny2(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, arg2, arg3
    require ext_call.success
    require not ext_call.return_data[0]
    if auctionContractAddress:
        require ext_code.size(auctionContractAddress)
        call auctionContractAddress.0xa5c464b3 with:
             gas gas_remaining wei
            args arg2, arg3
        require ext_call.success
        require not ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.getFashion(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require 5 == ext_call.return_data[62 len 2]
    require ext_call.return_data[94 len 2] <= 5
    require not ext_call.return_data[318 len 2]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.getFashion(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    require 5 == ext_call.return_data[62 len 2]
    require ext_call.return_data[94 len 2] == ext_call.return_data[94 len 2]
    require not ext_call.return_data[318 len 2]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.getFashion(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    require ext_call.success
    require 5 == ext_call.return_data[62 len 2]
    require ext_call.return_data[94 len 2] == ext_call.return_data[94 len 2]
    require not ext_call.return_data[318 len 2]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.destroyFashion(uint256 arg1, uint16 arg2) with:
         gas gas_remaining wei
        args arg2, 2
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.destroyFashion(uint256 arg1, uint16 arg2) with:
         gas gas_remaining wei
        args arg3, 2
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.changeFashionAttr(uint256 arg1, uint16[4] arg2, uint16[4] arg3, uint16 arg4) with:
         gas gas_remaining wei
        args arg1, 9, 0, 0, 0 >> 768, 1, 0, 0, 0 >> 768, 2
    require ext_call.success
    emit StarUpSuccess(arg1, 1, msg.sender);
}

function starUp(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require not stor0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg3
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x6352211e with:
         gas gas_remaining wei
        args arg4
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require ext_code.size(equipContractAddress)
    call equipContractAddress.isEquipedAny3(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, arg3, arg4
    require ext_call.success
    require not ext_call.return_data[0]
    if auctionContractAddress:
        require ext_code.size(auctionContractAddress)
        call auctionContractAddress.0xf3b42c40 with:
             gas gas_remaining wei
            args arg2, arg3, arg4
        require ext_call.success
        require not ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.getFashion(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require 5 == ext_call.return_data[62 len 2]
    require ext_call.return_data[94 len 2] <= 5
    require ext_call.return_data[318 len 2] > 0
    require ext_call.return_data[318 len 2] < 5
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.getFashion(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    require 5 == ext_call.return_data[62 len 2]
    require ext_call.return_data[94 len 2] == ext_call.return_data[94 len 2]
    require ext_call.return_data[318 len 2] == uint16(ext_call.return_data[288] - 1)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.getFashion(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    require ext_call.success
    require 5 == ext_call.return_data[62 len 2]
    require ext_call.return_data[94 len 2] == ext_call.return_data[94 len 2]
    require ext_call.return_data[318 len 2] == uint16(ext_call.return_data[288] - 1)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.getFashion(uint256 arg1) with:
         gas gas_remaining wei
        args arg4
    require ext_call.success
    require 5 == ext_call.return_data[62 len 2]
    require ext_call.return_data[94 len 2] == ext_call.return_data[94 len 2]
    require ext_call.return_data[318 len 2] == uint16(ext_call.return_data[288] - 1)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.destroyFashion(uint256 arg1, uint16 arg2) with:
         gas gas_remaining wei
        args arg2, 2
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.destroyFashion(uint256 arg1, uint16 arg2) with:
         gas gas_remaining wei
        args arg3, 2
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.destroyFashion(uint256 arg1, uint16 arg2) with:
         gas gas_remaining wei
        args arg4, 2
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.changeFashionAttr(uint256 arg1, uint16[4] arg2, uint16[4] arg3, uint16 arg4) with:
         gas gas_remaining wei
        args arg1, 9, 0, 0, 0 >> 768, ext_call.return_data[288] + 1 << 240, 0, 0, 0 >> 768, 2
    require ext_call.success
    emit StarUpSuccess(arg1, 1, msg.sender);
}



}
