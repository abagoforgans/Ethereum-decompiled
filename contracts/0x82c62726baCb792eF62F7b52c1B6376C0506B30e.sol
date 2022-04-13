contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[1351 len 2546]
    require create.new_address
    stor2 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x537870330ed90512ae44ff74961baffc088b7523
    stor7 = 40
    stor6 = 100 * 10^18
    stor3 = 416772 * 3600
    stor4 = 350
    stor5 = 20000 * 10^18
    return code.data[228 len 1123]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address tokenAddress;
uint256 stor3;
uint256 stor4;
uint256 hardcap;
uint256 rate;
uint256 bonus;

function rate() {
    return rate
}

function bonus() {
    return bonus
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

function setBonus(uint256 arg1) {
    require owner == msg.sender
    bonus = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function _fallback() payable {
    require block.timestamp > stor3
    require block.timestamp < stor3 + (24 * 3600 * stor4)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if rate:
        require rate
        require msg.value * rate / rate == msg.value
    if msg.value * rate / 10^18:
        require msg.value * rate / 10^18
        require bonus * msg.value * rate / 10^18 / msg.value * rate / 10^18 == bonus
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, bonus * msg.value * rate / 10^18 / 100
    require ext_call.success
}

function createTokens() payable {
    require block.timestamp > stor3
    require block.timestamp < stor3 + (24 * 3600 * stor4)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if rate:
        require rate
        require msg.value * rate / rate == msg.value
    if msg.value * rate / 10^18:
        require msg.value * rate / 10^18
        require bonus * msg.value * rate / 10^18 / msg.value * rate / 10^18 == bonus
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, bonus * msg.value * rate / 10^18 / 100
    require ext_call.success
}



}
