contract main {


// =======================  Init code  ======================


address stor0;
array of struct stor2;

function _fallback() {
    stor0 = msg.sender
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = 4 * stor2.length + 1
        while 4 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            stor2[idx].field_768 = 0
            idx = idx + 4
            continue 
    return code.data[224 len 2674]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
array of struct records;
array of uint256 sub_27341faa;
mapping of uint256 stor4;

function sub_27341faa(?) {
    return sub_27341faa[address(arg1)]
}

function records(uint256 arg1) {
    require arg1 < records.length
    return records[arg1].field_0, records[arg1].field_256, records[arg1].field_512, records[arg1].field_768
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function getRecord(address arg1, uint256 arg2) {
    require arg2 < sub_27341faa[address(arg1)]
    require sub_27341faa[address(arg1)][arg2] < records.length
    return sub_27341faa[address(arg1)][arg2], 
           records[stor3[address(arg1)][arg2]].field_0,
           records[stor3[address(arg1)][arg2]].field_256,
           records[stor3[address(arg1)][arg2]].field_512,
           records[stor3[address(arg1)][arg2]].field_768
}

function sub_a0ff76a3(?) {
    revert
}

function sub_a1e8353f(?) {
    revert
}

function _fallback() payable {
    revert
}

function setTokenAddress(address arg1) {
    require msg.sender == owner
    require arg1 != 0
    tokenAddress = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_15d9e3bd(?) {
    require msg.sender == owner
    require arg1 < records.length
    records[arg1].field_0 = arg2
    records[arg1].field_768 = arg3
    stor4[arg2] = arg1
    emit 0x27e3f6d4: arg1, arg2
    return 0
}

function record(address arg1, address arg2) {
    require tokenAddress != 0
    require msg.sender == tokenAddress
    records.length++
    if not records.length <= records.length + 1:
        idx = 4 * records.length + 1
        while 4 * records.length > idx:
            records[idx].field_0 = 0
            records[idx].field_256 = 0
            records[idx].field_512 = 0
            records[idx].field_768 = 0
            idx = idx + 4
            continue 
    require records.length < records.length
    records[records.length].field_256 = arg1
    records[records.length].field_512 = arg2
    sub_27341faa[address(arg1)]++
    if not sub_27341faa[address(arg1)] <= sub_27341faa[address(arg1)] + 1:
        idx = sub_27341faa[address(arg1)] + 1
        while sub_27341faa[address(arg1)] > idx:
            sub_27341faa[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    sub_27341faa[address(arg1)][sub_27341faa[address(arg1)]] = records.length
    sub_27341faa[address(arg2)]++
    if not sub_27341faa[address(arg2)] <= sub_27341faa[address(arg2)] + 1:
        idx = sub_27341faa[address(arg2)] + 1
        while sub_27341faa[address(arg2)] > idx:
            sub_27341faa[address(arg2)][idx] = 0
            idx = idx + 1
            continue 
    sub_27341faa[address(arg2)][sub_27341faa[address(arg2)]] = records.length
    emit 0x162981e8: records.length, address(arg1), arg2
    return 1
}



}
