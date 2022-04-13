contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor12;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[1271 len 2633]
    require create.new_address
    stor1 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor7 = 0x1a74fa96a1bac3c2af3f31058f02b0471bfe71f4
    stor8 = 1000
    stor9 = 10000 * 10^18
    stor2 = 1503448000
    stor3 = 30
    stor4 = 7
    stor12 = 200
    return code.data[223 len 1048]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor7;
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

function finishMinting() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function _fallback() payable {
    require eth.balance(stor7) <= stor8
    require block.timestamp < stor2 + (24 * 3600 * stor3)
    call stor7 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor9:
        require stor9
        require msg.value * stor9 / stor9 == msg.value
    require ext_code.size(tokenAddress)
    if block.timestamp >= stor2 + (24 * 3600 * stor4):
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stor9 / 10^18
    else:
        call tokenAddress.addBonus(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (msg.value * stor9 / 10^18 / 5)
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * stor9 / 10^18 / 5) + (msg.value * stor9 / 10^18)
    require ext_call.success
}

function createTokens() payable {
    require eth.balance(stor7) <= stor8
    require block.timestamp < stor2 + (24 * 3600 * stor3)
    call stor7 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor9:
        require stor9
        require msg.value * stor9 / stor9 == msg.value
    require ext_code.size(tokenAddress)
    if block.timestamp >= stor2 + (24 * 3600 * stor4):
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stor9 / 10^18
    else:
        call tokenAddress.addBonus(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (msg.value * stor9 / 10^18 / 5)
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * stor9 / 10^18 / 5) + (msg.value * stor9 / 10^18)
    require ext_call.success
}



}
