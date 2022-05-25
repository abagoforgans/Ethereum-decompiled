contract main {




// =====================  Runtime code  =====================


address creatorAddress;
array of uint256 stor1;

function creator() {
    return creatorAddress
}

function _fallback() payable {
    revert
}

function getEntry(address arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 224] = sha3(address(arg1), 1)
    _47 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 32])
    mem[ceil32(arg2.length) + 224] = stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]
    mem[ceil32(arg2.length) + 352] = stor[sha3(_47 + 2)]
    idx = ceil32(arg2.length) + 352
    s = 0
    while ceil32(arg2.length) + stor[_47 + 2].length + 320 > idx:
        mem[idx + 32] = stor[s + sha3(_47 + 2) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[_47 + 2].length, data=mem[ceil32(arg2.length) + 352 len stor[_47 + 2].length]), 
           stor1[_47],
           mem[ceil32(arg2.length) + 224]
}

function addEntry(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 352 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 320] = sha3(address(msg.sender), 1)
    require stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 320 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] <= 0
    mem[ceil32(arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 352 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 320] = sha3(address(msg.sender), 1)
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 320 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = block.timestamp
    stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = block.number
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 320 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][2][] = Array(len=arg1.length, data=arg1[all])
}



}
