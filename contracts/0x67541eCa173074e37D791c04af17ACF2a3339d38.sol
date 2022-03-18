contract main {


// =======================  Init code  ======================


const _fallback = code.data[17 len 238]




// =====================  Runtime code  =====================


function deposit() payable {
    emit Deposit(msg.value, msg.sender);
}

function _fallback() payable {
    emit Deposit(msg.value, msg.sender);
}



}
