contract main {




// =====================  Runtime code  =====================


uint256 sub_bd8dfc8e;
uint256 sub_1f00ffa8;
uint256 mintFee;
address backendAddress;
address coreContractAddress;
uint8 stor5; offset 160
address coreAddress;
address adminAddress;
address owner;
mapping of struct sub_28f521f2;

function backend() {
    return backendAddress
}

function mintFee() {
    return mintFee
}

function sub_1f00ffa8(?) {
    return sub_1f00ffa8
}

function sub_28f521f2(?) {
    require calldata.size - 4 >= 32
    return sub_28f521f2[arg1].field_0
}

function owner() {
    return owner
}

function isGameLogicContract() {
    return bool(stor5)
}

function sub_bd8dfc8e(?) {
    return sub_bd8dfc8e
}

function coreContract() {
    return coreContractAddress
}

function core() {
    return coreAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    adminAddress = arg1
}

function setBackend(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    backendAddress = arg1
}

function setCoreContract(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    coreContractAddress = arg1
    coreAddress = arg1
}

function setGasFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    require arg1 > 0
    sub_bd8dfc8e = arg1
    mintFee = sub_1f00ffa8 + arg1
}

function setMintFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    require arg1 > 0
    sub_1f00ffa8 = arg1
    mintFee = sub_bd8dfc8e + arg1
}

function withdrawBalance() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4105bb8a(?) payable {
    require calldata.size - 4 >= 32
    require not sub_28f521f2[arg1].field_0
    require msg.value == mintFee
    call backendAddress with:
       value sub_bd8dfc8e wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_28f521f2[arg1].field_0 = 1
    sub_28f521f2[arg1].field_8 = 0
    emit 0x674d278f: msg.sender, arg1, mintFee, sub_bd8dfc8e
}

function mintToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == backendAddress
    require 1 == sub_28f521f2[arg1].field_0
    sub_28f521f2[arg1].field_0 = 2
    sub_28f521f2[arg1].field_8 = 0
    require ext_code.size(coreContractAddress)
    call coreContractAddress.mintToken(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x817fb43e: arg1, arg2
}



}
