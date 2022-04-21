contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
uint8 stor8; offset 8

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 16
    stor1.length.field_8 = 'AgileBank PreICO' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor8 = 0
    if not msg.value:
        stor0 = msg.sender
        if code.data[3610 len 20]:
            if code.data[3642 len 20]:
                stor5 = code.data[3642 len 20]
                stor6 = code.data[3610 len 20]
    revert
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const onApprove(address arg1, address arg2, uint256 arg3) = 1


address owner;
array of uint256 name;
uint256 totalCollected;
uint256 totalSold;
uint256 sub_ea2909c9;
uint8 stor5; offset 160
uint128 stor5; offset 160
address tokenContractAddress;
address stor6;
uint256 stor7;
bool stor8; offset 256
uint8 stor8;
uint8 icoState; offset 8
mapping of uint256 sub_5c374cf1;

function name() {
    return name[0 len name.length]
}

function icoState() {
    require icoState <= 4
    return icoState
}

function tokenContract() {
    return tokenContractAddress
}

function sub_5c374cf1(?) {
    return sub_5c374cf1[arg1]
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function totalCollected() {
    return totalCollected
}

function sub_ea2909c9(?) {
    return sub_ea2909c9
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setTeamVault(address arg1) {
    require owner == msg.sender
    stor6 = arg1
}

function pauseSale() {
    require owner == msg.sender
    require icoState <= 4
    require icoState == 2
    icoState = 3
}

function StartSale() {
    require owner == msg.sender
    require icoState <= 4
    require icoState != 2
    require uint8(stor8.field_0)
    icoState = 2
}

function withdrawETH(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    call stor6 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_6391cef1(?) {
    require owner == msg.sender
    require arg1 > 10
    require arg2 > 0
    sub_ea2909c9 = 100000000 * 10^18 * arg1
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg3)
    stor7 = arg2
    uint8(stor8.field_0) = 1
    uint8(stor8.field_0) = 1
    icoState = 1
    stor8.field_256 % 1 = 0
}

function sub_0adb2ac3(?) {
    require owner == msg.sender
    require icoState <= 4
    require icoState == 2
    icoState = 4
    uint8(stor8.field_0) = 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xf41e60c5 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
}

function _fallback() payable {
    require icoState <= 4
    require icoState == 2
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.value
    totalCollected += msg.value
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * stor7
    require ext_call.success
    require ext_call.return_data[0]
    totalSold += msg.value * stor7
    if uint8(stor5.field_160):
        require 5 * msg.value * stor7 / 10 > 0
        require (5 * msg.value * stor7 / 10) + totalSold <= sub_ea2909c9
        totalSold += 5 * msg.value * stor7 / 10
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args msg.sender, 5 * msg.value * stor7 / 10
        require ext_call.success
        require ext_call.return_data[0]
    emit Invested(msg.sender, msg.value);
}

function proxyPayment(address arg1) payable {
    require icoState <= 4
    require icoState == 2
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.value
    totalCollected += msg.value
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * stor7
    require ext_call.success
    require ext_call.return_data[0]
    totalSold += msg.value * stor7
    if uint8(stor5.field_160):
        require 5 * msg.value * stor7 / 10 > 0
        require (5 * msg.value * stor7 / 10) + totalSold <= sub_ea2909c9
        totalSold += 5 * msg.value * stor7 / 10
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args address(arg1), 5 * msg.value * stor7 / 10
        require ext_call.success
        require ext_call.return_data[0]
    emit Invested(address(arg1), msg.value);
    return 1
}



}
