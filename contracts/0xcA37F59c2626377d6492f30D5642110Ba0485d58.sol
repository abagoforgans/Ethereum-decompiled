contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 863]




// =====================  Runtime code  =====================


array of uint256 get;

function get(bytes32 arg1) {
    return get[arg1][0 len get[arg1].length]
}

function _fallback() payable {
    revert 
}

function set(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    get[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]][] = Array(len=arg1.length, data=arg1[all])
}



}
