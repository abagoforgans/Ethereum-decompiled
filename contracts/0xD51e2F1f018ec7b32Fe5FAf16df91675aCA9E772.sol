contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 897]
}



// =====================  Runtime code  =====================


address creatorAddress;
array of uint256 certificates;

function certificates(address arg1) {
    return certificates[arg1][0 len certificates[arg1].length]
}

function creator() {
    return creatorAddress
}

function _fallback() payable {
    revert 
}

function sub_7c5a1bdb(?) {
    mem[128 len arg1.length] = arg1[all]
    certificates[address(arg2)][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    emit 0x9521cbfd: arg2, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
}



}
