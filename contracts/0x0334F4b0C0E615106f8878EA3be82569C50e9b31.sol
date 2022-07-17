contract main {




// =====================  Runtime code  =====================


array of uint256 sub_1595ee32;

function sub_1595ee32(?) {
    return sub_1595ee32[arg1][0 len sub_1595ee32[arg1].length]
}

function getHash(address arg1) {
    return sub_1595ee32[address(arg1)][0 len sub_1595ee32[address(arg1)].length]
}

function _fallback() payable {
    revert
}

function sub_f22ce1de(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    _3 = mem[ceil32(arg1.length) + 160]
    _4 = mem[ceil32(arg1.length) + 192]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    signer = erecover(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), 0, _3, _4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    sub_1595ee32[address(signer)][] = Array(len=arg1.length, data=arg1[all])
    return 1
}



}
