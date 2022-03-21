contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 98]




// =====================  Runtime code  =====================


function kill() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function test() payable {
    if gas_remaining >= 500000:
        return 1
    else:
        return 0
}



}
