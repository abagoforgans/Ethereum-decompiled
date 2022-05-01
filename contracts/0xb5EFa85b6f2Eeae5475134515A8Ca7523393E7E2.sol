contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    mem[96 len -872] = code.data[1110 len -872]
    mem[64] = -776
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[238 len 872]
}



// =====================  Runtime code  =====================


array of struct status;

function getStatus() {
    return status[0 len status.length].field_0
}

function _fallback() payable {
    revert
}

function setStatus(string arg1) {
    status[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 192] = uint256(status.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + status.length + 160 > idx:
        mem[idx + 32] = status[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=status.length, data=mem[ceil32(arg1.length) + 192 len status.length])
}



}
