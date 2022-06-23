contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function getContract(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not stor0[arg1].field_0:
        return 0, 0, 0, 0, 0, 0, 0, 256, 0, None
    mem[128] = stor0[arg1][6].field_0
    idx = 128
    s = 0
    while stor0[arg1][6].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           bool(stor0[arg1].field_1280),
           bool(stor0[arg1].field_1288),
           Array(len=stor0[arg1][6].length, data=mem[128 len stor0[arg1][6].length])
}

function refund(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not stor0[arg1].field_0:
        revert with 0, 'contractId does not exist'
    if stor0[arg1].field_0 != msg.sender:
        revert with 0, 'refundable: not sender'
    if stor0[arg1].field_1288:
        revert with 0, 'refundable: already refunded'
    if stor0[arg1].field_1280:
        revert with 0, 'refundable: already withdrawn'
    if stor0[arg1].field_1024 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'refundable: timelock not yet passed'
    stor0[arg1].field_1288 = 1
    call stor0[arg1].field_0 with:
       value stor0[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogHTLCRefund(arg1);
    return 1
}

function newContract(address arg1, bytes32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.value <= 0:
        revert with 0, 'msg.value must be > 0'
    if arg3 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'timelock time must be in the future'
    hash = sha256hash(msg.sender, arg1, msg.value, arg2, Mask(192, 64, arg3) >> 64, mem[392 len 8]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not stor0[hash].field_0
    stor0[hash].field_0 = msg.sender
    stor0[hash].field_256 = arg1
    stor0[hash].field_512 = msg.value
    stor0[hash].field_768 = arg2
    stor0[hash].field_1024 = arg3
    stor0[hash].field_1280 = 0
    stor0[hash].field_1288 = 0
    stor0[hash].field_1536 = 0
    stor0[hash].field_1537 = 0
    stor0[hash].field_1544 = mem[552 len 31]
    idx = 0
    while stor0[hash][6].length + 31 / 32 > idx:
        stor0[hash][idx + 6].field_0 = 0
        idx = idx + 1
        continue 
    emit LogHTLCNew(msg.value, arg2, arg3, hash, msg.sender, arg1);
    return hash
}

function sub_06a53665(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not stor0[arg1].field_0:
        revert with 0, 'contractId does not exist'
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    if stor0[arg1].field_768 != sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]):
        revert with 0, 'hashlock hash does not match'
    if stor0[arg1].field_256 != msg.sender:
        revert with 0, 'withdrawable: not receiver'
    if stor0[arg1].field_1280:
        revert with 0, 'withdrawable: already withdrawn'
    if stor0[arg1].field_1024 <= block.timestamp:
        revert with 0, 'withdrawable: timelock time must be in the future'
    stor0[arg1][6][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[arg1].field_1280 = 1
    call stor0[arg1].field_256 with:
       value stor0[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogHTLCWithdraw(arg1);
    return 1
}



}
