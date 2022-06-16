contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of struct history;
array of uint256 stor99;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function history(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < history.length
    mem[128] = stor[sha3((4 * arg1) + ('name', 'history', 1) + 3)].field_0
    idx = 128
    s = 0
    while stor[(4 * arg1) + ('name', 'history', 1) + 3].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'history', 1) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return history[arg1].field_0, 
           history[arg1].field_256,
           address(history[arg1].field_512),
           Array(len=stor[(4 * arg1) + ('name', 'history', 1) + 3].length, data=mem[128 len stor[(4 * arg1) + ('name', 'history', 1) + 3].length])
}

function _fallback() payable {
    revert
}

function sub_1dede496(?) payable {
    require calldata.size - 4 >= 32
    return arg1
}

function sub_3306739c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == 0x4769d2d7ddf8e75ba0fb09544fd0528498558fba
    mem[ceil32(arg1.length) + 160] = block.timestamp
    mem[ceil32(arg1.length) + 192] = stor0
    mem[ceil32(arg1.length) + 224] = block.hash(block.number)
    mem[ceil32(arg1.length) + 128] = 96
    stor0 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    require arg3
    history.length++
    history[history.length].field_0 = block.timestamp
    storB10E[stor1.length] = arg2 + (sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) % arg3) + 1
    storB10E[stor1.length] = msg.sender
    stor[sha3((4 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f307)][] = Array(len=arg1.length, data=arg1[all])
    emit 0x61a22a9e: block.timestamp, arg2 + (sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) % arg3) + 1, msg.sender
    return (arg2 + (sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) % arg3) + 1)
}



}
