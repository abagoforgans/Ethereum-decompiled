contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    mem[96 len -914] = code.data[1107 len -914]
    mem[64] = -818
    stor1 = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        while stor1 - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            uint256(stor[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
        while stor1 - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    return code.data[193 len 914]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
array of address stor1;

function _fallback() payable {
  stop
}

function isOwner(address arg1) payable {
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor1[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function confirm(bytes32 arg1) payable {
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor1[idx]) != msg.sender:
            idx = idx + 1
            continue 
        if not address(stor0[arg1].field_0):
            return 0
        if msg.sender == address(stor0[arg1].field_768):
            return 0
        mem[96] = stor0[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 0) + 2)
        while stor0[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[96 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining - 34050 wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        address(stor0[arg1].field_0) = 0
        stor0[arg1].field_256 = 0
        stor0[arg1].field_512 = 0
        if 31 < stor0[arg1][2].length:
            idx = sha3(sha3(arg1, 0) + 2)
            while sha3(sha3(arg1, 0) + 2) + (stor0[arg1][2].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        address(stor0[arg1].field_768) = 0
        return 1
    return 0
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor1[idx]) != msg.sender:
            idx = idx + 1
            continue 
        stor0[call.data[0 len calldata.size]][block.number].field_0 = arg1 or Mask(96, 160, stor0[call.data[0 len calldata.size]][block.number].field_0)
        stor0[call.data[0 len calldata.size]][block.number].field_256 = arg2
        stor0[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
        s = sha3(sha3(sha3(call.data[0 len calldata.size], block.number), 0) + 2)
        idx = arg3 + 36
        while arg3 + arg3.length + 36 > idx:
            stor[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = sha3(sha3(sha3(call.data[0 len calldata.size], block.number), 0) + 2) + (Mask(251, 0, arg3.length + 31) >> 5)
        while sha3(sha3(sha3(call.data[0 len calldata.size], block.number), 0) + 2) + (stor0[call.data[0 len calldata.size]][block.number][2].length + 31 / 32) > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        stor0[call.data[0 len calldata.size]][block.number].field_768 = msg.sender or Mask(96, 160, stor0[call.data[0 len calldata.size]][block.number].field_768)
        return sha3(call.data[0 len calldata.size], block.number)
    return 0
}



}
