contract main {


// =======================  Init code  ======================


uint8 stor2;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    return code.data[39 len 940]
}



// =====================  Runtime code  =====================


const OWNER = 0xc8b8c34e0259c59ff2aa842fe652992323d05b07

const VERSION = '0.1.4'


uint256 total_received_amount;
mapping of uint256 balances;
uint8 stor2;

function balances(address arg1) {
    return balances[arg1]
}

function total_received_amount() {
    return total_received_amount
}

function _fallback() payable {
    require not stor2
    stor2 = 1
    balances[address(msg.sender)] += msg.value
    total_received_amount += msg.value
    stor2 = 0
}

function refund() {
    require not stor2
    stor2 = 1
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] + msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor2 = 0
}

function withdrawFunds() {
    require 0xc8b8c34e0259c59ff2aa842fe652992323d05b07 == msg.sender
    require not stor2
    stor2 = 1
    call 0xc8b8c34e0259c59ff2aa842fe652992323d05b07 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor2 = 0
}



}
