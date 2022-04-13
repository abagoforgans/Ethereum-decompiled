contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[1069 len 2546]
    require create.new_address
    stor4 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x76716a81d701dcbec2ae24f52f63a762465e6f8f
    stor9 = 40
    stor8 = 100 * 10^18
    stor5 = 416772 * 3600
    stor6 = 350
    stor7 = 20000
    return code.data[220 len 849]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address tokenAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function _fallback() payable {
    require eth.balance(stor1) <= stor7
    require block.timestamp > stor5
    require block.timestamp < stor5 + (24 * 3600 * stor6)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor8:
        require stor8
        require msg.value * stor8 / stor8 == msg.value
    if msg.value * stor8 / 10^18:
        require msg.value * stor8 / 10^18
        require stor9 * msg.value * stor8 / 10^18 / msg.value * stor8 / 10^18 == stor9
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, stor9 * msg.value * stor8 / 10^18 / 100
    require ext_call.success
}

function createTokens() payable {
    require eth.balance(stor1) <= stor7
    require block.timestamp > stor5
    require block.timestamp < stor5 + (24 * 3600 * stor6)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor8:
        require stor8
        require msg.value * stor8 / stor8 == msg.value
    if msg.value * stor8 / 10^18:
        require msg.value * stor8 / 10^18
        require stor9 * msg.value * stor8 / 10^18 / msg.value * stor8 / 10^18 == stor9
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, stor9 * msg.value * stor8 / 10^18 / 100
    require ext_call.success
}



}
