contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 10^18
    require not msg.value
    return code.data[52 len 12417]
}



// =====================  Runtime code  =====================


const platform = 0x709a0a8deb88a2d19dab2492f669ef26fd176f6c

const isPlatform = (msg.sender == 0x709a0a8deb88a2d19dab2492f669ef26fd176f6c)


uint8 stor0;
uint256 price;

function stopped() {
    return bool(stor0)
}

function price() {
    return price
}

function _fallback() payable {
    revert
}

function emergencyStop() {
    require 0x709a0a8deb88a2d19dab2492f669ef26fd176f6c == msg.sender
    stor0 = 1
}

function setPrice(uint256 arg1) {
    require 0x709a0a8deb88a2d19dab2492f669ef26fd176f6c == msg.sender
    price = arg1
}

function createContract() payable {
    require not stor0
    require msg.value >= price
    create contract with 0 wei
                    code: code.data[872 len 11502], tx.origin
    require create.new_address
    return address(create.new_address)
}

function withdrawProfit(address arg1) {
    require 0x709a0a8deb88a2d19dab2492f669ef26fd176f6c == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 0
}

function sub_5520e9ad(?) {
    require not stor0
    require 0x709a0a8deb88a2d19dab2492f669ef26fd176f6c == tx.origin
    create contract with 0 wei
                    code: code.data[872 len 11502], address(arg1)
    require create.new_address
    return address(create.new_address)
}



}
