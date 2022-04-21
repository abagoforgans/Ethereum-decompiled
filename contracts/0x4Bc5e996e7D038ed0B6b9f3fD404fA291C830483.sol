contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 194]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function deposit(bytes32 arg1) payable {
    emit Deposit(msg.value, msg.sender, arg1);
}



}
