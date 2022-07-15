contract main {




// =====================  Runtime code  =====================


mapping of struct sub_5e13a615;
array of uint256 stor99;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function rooms(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5e13a615.length
    mem[128] = stor[sha3((4 * arg1) + ('name', 'sub_5e13a615', 1) + 1)].field_0
    idx = 128
    s = 0
    while stor[(4 * arg1) + ('name', 'sub_5e13a615', 1) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'sub_5e13a615', 1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_5e13a615[arg1].field_0), 
           Array(len=stor[(4 * arg1) + ('name', 'sub_5e13a615', 1) + 1].length, data=mem[128 len stor[(4 * arg1) + ('name', 'sub_5e13a615', 1) + 1].length]),
           sub_5e13a615[arg1].field_512
}

function sub_2ed5f28a(?) payable {
    return sub_5e13a615.length
}

function sub_5e13a615(?) payable {
    require calldata.size - 4 >= 64
    if sub_5e13a615.length < arg1:
        revert with 0, 'room dont exist'
    require arg1 < sub_5e13a615.length
    mem[320] = stor[('name', 'sub_5e13a615', 1) + (4 * arg1) + 3][arg2][1].field_0
    idx = 320
    s = 0
    while stor[('name', 'sub_5e13a615', 1) + (4 * arg1) + 3][arg2][1].length + 288 > idx:
        mem[idx + 32] = stor[('name', 'sub_5e13a615', 1) + (4 * arg1) + 3][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor[('name', 'sub_5e13a615', 1) + (4 * arg1) + 3][arg2].field_0), 
           Array(len=stor[('name', 'sub_5e13a615', 1) + (4 * arg1) + 3][arg2][1].length, data=mem[320 len stor[('name', 'sub_5e13a615', 1) + (4 * arg1) + 3][arg2][1].length]),
           stor[('name', 'sub_5e13a615', 1) + (4 * arg1) + 3][arg2].field_512
}

function _fallback() payable {
    revert
}

function createRoom(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_5e13a615.length++
    address(sub_5e13a615[sub_5e13a615.length].field_0) = msg.sender
    stor[sha3((4 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)][] = Array(len=arg1.length, data=arg1[all])
    storB10E[stor1.length] = 0
    return sub_5e13a615.length
}

function sub_68b1fc3b(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg1 < sub_5e13a615.length
    sub_5e13a615[arg1].field_512++
    address(stor[('name', 'sub_5e13a615', 1) + (4 * arg1) + 3][sub_5e13a615[arg1].field_512].field_0) = msg.sender
    stor[('name', 'sub_5e13a615', 1) + (4 * arg1) + 3][sub_5e13a615[arg1].field_512][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor[('name', 'sub_5e13a615', 1) + (4 * arg1) + 3][sub_5e13a615[arg1].field_512].field_512 = block.timestamp
    return sub_5e13a615[arg1].field_512
}

function sub_986b44a0(?) payable {
    require calldata.size - 4 >= 64
    if arg1 > sub_5e13a615.length:
        revert with 0, 'room dont exist'
    require arg1 < sub_5e13a615.length
    if sub_5e13a615[arg1].field_512 < arg2:
        revert with 0, 'message dont exist'
    require arg1 < sub_5e13a615.length
    if address(stor[(4 * arg1) + ('name', 'sub_5e13a615', 1) + 3][arg2].field_0) != msg.sender:
        revert with 0, 'not authorized'
    require arg1 < sub_5e13a615.length
    bool(stor[(4 * arg1) + ('name', 'sub_5e13a615', 1) + 3][arg2].field_256) = 0
    uint255(stor[(4 * arg1) + ('name', 'sub_5e13a615', 1) + 3][arg2].field_257) = 16
    Mask(248, 0, stor[(4 * arg1) + ('name', 'sub_5e13a615', 1) + 3][arg2].field_264) = 'deleted by owner' / 256
    idx = 0
    while stor[(4 * arg1) + ('name', 'sub_5e13a615', 1) + 3][arg2][1].length + 31 / 32 > idx:
        stor[(4 * arg1) + ('name', 'sub_5e13a615', 1) + 3][arg2][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    return 1
}



}
