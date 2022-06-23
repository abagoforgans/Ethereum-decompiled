contract main {




// =====================  Runtime code  =====================


#
#  - sub_36ae4ce4(?)
#
mapping of uint8 stor0;

function orders(address arg1, bytes32 arg2) {
    return bool(stor0[arg1][arg2])
}

function _fallback() payable {
    revert
}

function bytes32FunctionReturnsBool(bytes32 arg1) {
    if arg1.length != ('cd', 36).length:
        revert with 0, 'Arguments invalid.'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'Arguments invalid.'
    require address(cd[196]) == msg.sender
    mem[(32 * arg1.length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len floor32(('cd', 36).length)] = call.data[cd[36] + 36 len floor32(('cd', 36).length)]
    mem[(64 * ('cd', 36).length) + (64 * arg1.length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len floor32(('cd', 68).length)] = call.data[cd[68] + 36 len floor32(('cd', 68).length)]
    mem[(64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + (32 * ('cd', 100).length) + 256 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
    mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + 256] = cd[132]
    mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + 288] = cd[164]
    mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + 320] = address(cd[196])
    mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + 340 len floor32((32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(arg1.length) + 256 len floor32((32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84) - floor32(arg1.length)]
    mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + floor32((32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84) + -((32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84 % 32) + 372 len (32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84 % 32] = mem[(32 * arg1.length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32((32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84) + -((32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84 % 32) + 288 len (32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84 % 32]
    signer = erecover(sha3(mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + 340 len (32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84]), cd[228] << 248, cd[260], cd[292]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != address(cd[196]):
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, Mask(32, 224, sha3(mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + 340 len (32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84])) >> 224, Mask(192, 0, sha3(mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + 340 len (32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84])) or uint32(cd[292]) << 192), cd[228] << 248, cd[260], cd[292]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != address(cd[196]):
            revert with 0, 'Arguments hash invalid.'
    if stor0[address(cd[196])][sha3(mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + 340 len (32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84])]:
        revert with 0, 'Order already filled.'
    stor0[address(cd[196])][sha3(mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + 340 len (32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84])] = 1
    emit OrderCanceled(sha3(mem[(64 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * arg1.length) + 340 len (32 * ('cd', 100).length) + (96 * ('cd', 68).length) + (96 * ('cd', 36).length) + (96 * arg1.length) + 84]), address(cd[196]));
}



}
