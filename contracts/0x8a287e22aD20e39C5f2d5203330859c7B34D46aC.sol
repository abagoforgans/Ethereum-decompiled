contract main {




// =====================  Runtime code  =====================


const icoHashedPass = 0x5d26626a83a2e04be8eab07b75694b6534206d3a4672e8233deea56d00190471


function _fallback() payable {
    revert
}

function buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = mem[ceil32(arg3.length) + floor32(arg3.length) + 128] and 256^(-(arg3.length % 32) + 32) - 1 or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    require sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) == 0x5d26626a83a2e04be8eab07b75694b6534206d3a4672e8233deea56d00190471
    return 0
}



}
