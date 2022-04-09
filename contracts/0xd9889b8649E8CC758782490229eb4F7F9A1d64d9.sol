contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1247]




// =====================  Runtime code  =====================


array of uint256 stor99;

function sub_d246d0b9(?) {
    return stor[_33][0 len stor[_33].length]
}

function _fallback() payable {
    revert
}

function store(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 192] = sha3(address(msg.sender), 0)
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg2.length
    if arg2.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = mem[ceil32(arg1.length) + 160]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
    return Array(len=arg2.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len arg2.length])
}



}
