contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[1524 len 2546]
    require create.new_address
    stor2 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x537870330ed90512ae44ff74961baffc088b7523
    stor6 = code.data[4070 len 32]
    stor3 = 417432 * 24 * 3600
    stor4 = 30
    stor5 = 2000 * 10^18
    return code.data[236 len 1288]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address tokenAddress;
uint256 stor3;
uint256 stor4;
uint256 hardcap;
uint256 rate;

function rate() {
    return rate
}

function owner() {
    return owner
}

function hardcap() {
    return hardcap
}

function token() {
    return tokenAddress
}

function setRate(uint256 arg1) {
    require owner == msg.sender
    rate = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function getDays() {
    if not stor4:
        return (stor3 + (24 * 3600 * stor4) - block.timestamp / 24 * 3600)
    require stor4
    require 24 * 3600 * stor4 / stor4 == 24 * 3600
    return (stor3 + (24 * 3600 * stor4) - block.timestamp / 24 * 3600)
}

function sub_e12c1c8a(?) {
    if not stor4:
        return (stor3 + (24 * 3600 * stor4) - block.timestamp / 168 * 24 * 3600)
    require stor4
    require 24 * 3600 * stor4 / stor4 == 24 * 3600
    return (stor3 + (24 * 3600 * stor4) - block.timestamp / 168 * 24 * 3600)
}

function _fallback() payable {
    require block.timestamp > stor3
    require block.timestamp < stor3 + (24 * 3600 * stor4)
    require eth.balance(stor1) <= hardcap
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if rate:
        require rate
        require msg.value * rate / rate == msg.value
    require ext_code.size(tokenAddress)
    if stor3 < block.timestamp + (240 * 24 * 3600):
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 2 * msg.value * rate / 10^18
    else:
        if block.timestamp < stor3 + (240 * 24 * 3600):
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * rate / 10^18
        else:
            if block.timestamp >= stor3 + (480 * 24 * 3600):
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * rate / 10^18
            else:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * rate / 10^18 / 2) + (msg.value * rate / 10^18)
    require ext_call.success
}

function createTokens() payable {
    require block.timestamp > stor3
    require block.timestamp < stor3 + (24 * 3600 * stor4)
    require eth.balance(stor1) <= hardcap
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if rate:
        require rate
        require msg.value * rate / rate == msg.value
    require ext_code.size(tokenAddress)
    if stor3 < block.timestamp + (240 * 24 * 3600):
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 2 * msg.value * rate / 10^18
    else:
        if block.timestamp < stor3 + (240 * 24 * 3600):
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * rate / 10^18
        else:
            if block.timestamp >= stor3 + (480 * 24 * 3600):
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * rate / 10^18
            else:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * rate / 10^18 / 2) + (msg.value * rate / 10^18)
    require ext_call.success
}



}
