contract main {




// =====================  Runtime code  =====================


uint64 stor0;
address owner; offset 64
mapping of uint64 timestamp;
array of struct sub_e55c121b;

function getOwner() payable {
    return owner
}

function getTimestamp(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return timestamp[arg1]
}

function sub_e55c121b(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_e55c121b[arg1].field_0
    return sub_e55c121b[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function sub_9c868e67(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 < 1000 * block.timestamp
    require not timestamp[arg2]
    require stor0
    timestamp[arg2] = arg1
    sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0++
    sub_e55c121b[arg1 - (arg1 % stor0) << 192][sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0].field_0 = arg2
}

function sub_3e59148f(?) payable {
    require calldata.size - 4 >= 32
    require stor0
    if sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0 <= 0:
        return 0
    require sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0 - 1 < sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0
    return sub_e55c121b[arg1 - (arg1 % stor0) << 192][sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0].field_0
}

function sub_d977ebd2(?) payable {
    require calldata.size - 4 >= 32
    require stor0
    if not sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0:
        mem[(32 * sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0) + 128] = 32
        mem[(32 * sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0) + 160] = sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0
        mem[(32 * sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0) + 192 len floor32(sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0)] = mem[128 len floor32(sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0)]
        return memory
          from (32 * sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0) + 128
           len (96 * sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0) + 64
    mem[128] = sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0
    idx = 128
    s = 0
    while (32 * sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0) + 96 > idx:
        mem[idx + 32] = sub_e55c121b[arg1 - (arg1 % stor0) << 192][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0) + 192 len floor32(sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0)] = mem[128 len floor32(sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0)]
    return Array(len=sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0, data=mem[128 len floor32(sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0)], mem[(32 * sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0) + floor32(sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0) + 192 len (32 * sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0) - floor32(sub_e55c121b[arg1 - (arg1 % stor0) << 192].field_0)]), 
}



}
