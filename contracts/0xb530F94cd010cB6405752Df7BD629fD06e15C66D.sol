contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor10;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[1143 len 2633]
    require create.new_address
    stor1 = address(create.new_address)
    stor0 = msg.sender
    stor5 = 0x5743e6f77234bb55e49cca6793724dfba79ca270
    stor6 = 1000
    stor7 = 10000 * 10^18
    stor2 = 417679 * 3600
    stor3 = 30
    stor4 = 7
    stor10 = 200
    return code.data[214 len 929]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 stor2;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;

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
    require eth.balance(stor5) <= stor6
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor7:
        require stor7
        require msg.value * stor7 / stor7 == msg.value
    require ext_code.size(tokenAddress)
    if block.timestamp >= stor2 + (24 * 3600 * stor4):
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stor7 / 10^18
    else:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * stor7 / 10^18 / 5) + (msg.value * stor7 / 10^18)
    require ext_call.success
}

function createTokens() payable {
    require eth.balance(stor5) <= stor6
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor7:
        require stor7
        require msg.value * stor7 / stor7 == msg.value
    require ext_code.size(tokenAddress)
    if block.timestamp >= stor2 + (24 * 3600 * stor4):
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stor7 / 10^18
    else:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * stor7 / 10^18 / 5) + (msg.value * stor7 / 10^18)
    require ext_call.success
}



}
