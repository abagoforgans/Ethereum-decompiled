contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 937]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
address authorityAddress;

function sub_77582e6c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    return bool(stor0[hash])
}

function authority() {
    return authorityAddress
}

function checkHash(bytes32 arg1) {
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function notarizeHash(bytes32 arg1) {
    require authorityAddress == msg.sender
    stor0[arg1] = 1
}

function sub_67306660(?) {
    mem[128 len arg1.length] = arg1[all]
    require authorityAddress == msg.sender
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    stor0[hash] = 1
}



}
