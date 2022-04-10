contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 1883]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct investor;
address stor2;

function investors(address arg1) {
    return investor[arg1].field_0, bool(investor[arg1].field_256), investor[arg1].field_512
}

function owner() {
    return owner
}

function getInvestor(address arg1) {
    require owner == msg.sender
    return investor[address(arg1)].field_0, bool(investor[address(arg1)].field_256)
}

function _fallback() payable {
    revert
}

function setTokenContract(address arg1) {
    require owner == msg.sender
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_15031f90(?) {
    require owner == msg.sender
    require ext_code.size(stor2)
    call stor2.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function addInvestor(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    investor[address(arg1)].field_0 = arg2
    investor[address(arg1)].field_512 = arg3
    investor[address(arg1)].field_256 = 0
}

function deleteInvestor(address arg1) {
    require owner == msg.sender
    require not investor[address(arg1)].field_256
    investor[address(arg1)].field_0 = 0
    investor[address(arg1)].field_256 = 0
    investor[address(arg1)].field_512 = 0
}

function sendTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    investor[address(arg1)].field_0 += arg2
    investor[address(arg1)].field_256 = 1
    require ext_code.size(stor2)
    call stor2.0xa0712d68 with:
         gas gas_remaining - 710 wei
        args investor[address(arg1)].field_0
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), investor[address(arg1)].field_0
    require ext_call.success
}

function invest() payable {
    require stor2
    require not investor[address(msg.sender)].field_256
    require msg.value >= investor[address(msg.sender)].field_0 * investor[address(msg.sender)].field_512
    investor[address(msg.sender)].field_256 = 1
    require ext_code.size(stor2)
    call stor2.0xa0712d68 with:
         gas gas_remaining - 710 wei
        args investor[address(msg.sender)].field_0
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, investor[address(msg.sender)].field_0
    require ext_call.success
}



}
