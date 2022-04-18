contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 886]




// =====================  Runtime code  =====================


mapping of uint256 balance;
address stor1;

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function kill() {
    require msg.sender == stor1
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_1803334e(?) {
    stor1 = msg.sender
}

function topup() payable {
    require msg.value
    balance[address(msg.sender)] += msg.value
}

function withdraw(uint256 arg1) {
    require balance[address(msg.sender)]
    balance[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
