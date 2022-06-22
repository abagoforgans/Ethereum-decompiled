contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    mem[96 len -506] = code.data[744 len -506]
    mem[64] = -410
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[238 len 506]
}



// =====================  Runtime code  =====================


array of uint256 message;

function message() {
    return message[0 len message.length]
}

function setMessage(string arg1) {
  stop
}

function _fallback() payable {
    revert
}



}
