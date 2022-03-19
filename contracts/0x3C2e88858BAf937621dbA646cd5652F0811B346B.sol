contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[20 len 136]
}



// =====================  Runtime code  =====================


uint256 counter;

function getCounter() payable {
    return counter
}

function _fallback() payable {
  stop
}

function increment() payable {
    counter++
    emit 0x59950fb2: address(msg.sender), counter + 1
}



}
