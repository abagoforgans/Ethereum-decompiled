contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor2; offset 160
address stor3;
address stor4;
address stor5;
address stor6;

function _fallback() payable {
    stor0 = 10^18
    require not msg.value
    stor6 = 0x49aec0752e68d0282db544c677f6ba407ba17ed7
    stor4 = 0
    stor2 = 5
    stor3 = this.address
    stor5 = msg.sender
    return code.data[351 len 2769]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
uint8 extra_bonus; offset 160
address stor2;
address burner_addr;
address raffle_addr;
address stor5;
address stor6;

function extra_bonus() {
    return extra_bonus
}

function raffle_addr() {
    return raffle_addr
}

function burner_addr() {
    return burner_addr
}

function _fallback() payable {
    revert
}

function dSET_XBL_ADDRESS(address arg1) {
    require msg.sender == stor5
    stor6 = arg1
    stor1 = stor6
}

function setRaffleAddress(address arg1) {
    require msg.sender == stor5
    raffle_addr = arg1
    stor2 = raffle_addr
}

function registerBurn(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, burner_addr
    require ext_call.success
    require ext_call.return_data[0] >= arg1 * stor0
    require ext_code.size(stor2)
    call stor2.getLastWeekStake(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require arg1 * stor0 <= ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args burner_addr
    require ext_call.success
    require (arg1 * stor0) + (arg1 * stor0 * extra_bonus / 100) <= ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x79cc6790 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1 * stor0
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (arg1 * stor0) + (arg1 * stor0 * extra_bonus / 100)
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.reduceLastWeekStake(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1 * stor0
    require ext_call.success
    return 0
}



}
