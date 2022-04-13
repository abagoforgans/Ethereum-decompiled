contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    mem[96 len -1017] = code.data[1262 len -1017]
    mem[64] = -921
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[245 len 1017]
}



// =====================  Runtime code  =====================


array of uint256 greeting;

function say() {
    return greeting[0 len greeting.length]
}

function greeting() {
    return greeting[0 len greeting.length]
}

function _fallback() payable {
    revert
}

function setGreeting(string arg1) {
    greeting[] = Array(len=arg1.length, data=arg1[all])
}



}
