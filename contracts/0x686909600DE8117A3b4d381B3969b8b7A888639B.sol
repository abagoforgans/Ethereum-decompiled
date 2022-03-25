contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;

function _fallback() payable {
    mem[96 len -909] = code.data[1105 len -909]
    mem[64] = -813
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1 = 0
    return code.data[196 len 909]
}



// =====================  Runtime code  =====================


array of uint256 name;
uint256 stor1;

function name() {
    return name[0 len name.length]
}

function _fallback() payable {
    revert 
}

function sub_b065b2a9(?) {
    mem[ceil32(arg2.length) + 320 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        emit 0x9d760e4f: 96, arg1, 160, 6, 'update', arg2.length, arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
        emit 0x9d760e4f: 96, arg1, 160, 6, 'update', arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 320 len -(arg2.length % 32) + 32]
}

function createItem(string arg1) {
    stor1++
    mem[ceil32(arg1.length) + 320 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        emit 0x9d760e4f: 96, stor1, 160, 6, 'create', arg1.length, arg1[all]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
        emit 0x9d760e4f: 96, stor1, 160, 6, 'create', arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 320 len -(arg1.length % 32) + 32]
}



}
