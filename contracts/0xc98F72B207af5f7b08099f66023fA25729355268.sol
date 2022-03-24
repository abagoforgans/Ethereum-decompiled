contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 144]




// =====================  Runtime code  =====================


function kill(address arg1) payable {
    selfdestruct(arg1)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(address(msg.sender), msg.value);
}



}
