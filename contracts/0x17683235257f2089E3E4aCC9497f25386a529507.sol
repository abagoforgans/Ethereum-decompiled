contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 619]




// =====================  Runtime code  =====================


#
#  - withdraw()
#
address meAddress;
uint256 savings_goal;

function me() {
    return meAddress
}

function savings_goal() {
    return savings_goal
}

function recovery(uint256 arg1) {
    if meAddress != msg.sender:
    require 49409376313952921 == sha3(arg1) % 10 * 10^18
    selfdestruct(meAddress)
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function set_savings_goal(uint256 arg1) {
    if meAddress == msg.sender:
        if eth.balance(this.address) >= savings_goal:
            savings_goal = arg1
}

function MyTestWallet7() {
    meAddress = msg.sender
    if meAddress == msg.sender:
        if eth.balance(this.address) >= savings_goal:
            savings_goal = 1000 * 10^18
}



}
