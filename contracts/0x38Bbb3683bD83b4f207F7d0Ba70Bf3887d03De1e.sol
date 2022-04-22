contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[1462 len 2546]
    require create.new_address
    stor4 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0xeebbd0927a046ffc9392200a208d4a990f9fc001
    stor3 = 0x498b783854432a2a87213f89b14b1faf0677edc2
    stor2 = 25
    stor8 = 600 * 10^18
    stor5 = 419625 * 3600
    stor6 = 7
    stor7 = 3000 * 10^18
    return code.data[261 len 1201]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;
address stor3;
address tokenAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

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
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * stor8 / 10^18
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
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * stor8 / 10^18
    require ext_call.success
}

function finishMinting() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require stor2 * ext_call.return_data[0] / ext_call.return_data[0] == stor2
    require -stor2 + 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor3, stor2 * ext_call.return_data[0] / -stor2 + 100
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
