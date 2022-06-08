contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_ba81626a;
array of address sub_6515485c;
mapping of uint256 sub_8fa02c75;
array of address sub_5f4daa1c;

function sub_5f4daa1c(?) {
    require arg2 < uint256(sub_5f4daa1c[arg1])
    return address(sub_5f4daa1c[arg1][arg2])
}

function sub_6515485c(?) {
    require arg2 < uint256(sub_6515485c[arg1])
    return address(sub_6515485c[arg1][arg2])
}

function owner() {
    return owner
}

function sub_8fa02c75(?) {
    return sub_8fa02c75[arg1][arg2]
}

function sub_ba81626a(?) {
    return sub_ba81626a[arg1][arg2].field_0, 
           sub_ba81626a[arg1][arg2].field_256,
           sub_ba81626a[arg1][arg2].field_512,
           sub_ba81626a[arg1][arg2].field_768
}

function _fallback() {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getFriends(address arg1) {
    if uint256(sub_6515485c[address(arg1)]):
        mem[128 len 32 * uint256(sub_6515485c[address(arg1)])] = code.data[6167 len 32 * uint256(sub_6515485c[address(arg1)])]
    idx = 0
    s = 0
    while idx < uint256(sub_6515485c[address(arg1)]):
        require idx < uint256(sub_6515485c[address(arg1)])
        require s < uint256(sub_6515485c[address(arg1)])
        mem[(32 * s) + 128] = address(sub_6515485c[address(arg1)][idx])
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * uint256(sub_6515485c[address(arg1)])) + 192 len floor32(uint256(sub_6515485c[address(arg1)]))] = mem[128 len floor32(uint256(sub_6515485c[address(arg1)]))]
    return Array(len=uint256(sub_6515485c[address(arg1)]), data=mem[128 len floor32(uint256(sub_6515485c[address(arg1)]))], mem[(32 * uint256(sub_6515485c[address(arg1)])) + floor32(uint256(sub_6515485c[address(arg1)])) + 192 len (32 * uint256(sub_6515485c[address(arg1)])) - floor32(uint256(sub_6515485c[address(arg1)]))]), 
}

function getFollowers(address arg1) {
    if uint256(sub_5f4daa1c[address(arg1)]):
        mem[128 len 32 * uint256(sub_5f4daa1c[address(arg1)])] = code.data[6167 len 32 * uint256(sub_5f4daa1c[address(arg1)])]
    idx = 0
    s = 0
    while idx < uint256(sub_5f4daa1c[address(arg1)]):
        require idx < uint256(sub_5f4daa1c[address(arg1)])
        require s < uint256(sub_5f4daa1c[address(arg1)])
        mem[(32 * s) + 128] = address(sub_5f4daa1c[address(arg1)][idx])
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * uint256(sub_5f4daa1c[address(arg1)])) + 192 len floor32(uint256(sub_5f4daa1c[address(arg1)]))] = mem[128 len floor32(uint256(sub_5f4daa1c[address(arg1)]))]
    return Array(len=uint256(sub_5f4daa1c[address(arg1)]), data=mem[128 len floor32(uint256(sub_5f4daa1c[address(arg1)]))], mem[(32 * uint256(sub_5f4daa1c[address(arg1)])) + floor32(uint256(sub_5f4daa1c[address(arg1)])) + 192 len (32 * uint256(sub_5f4daa1c[address(arg1)])) - floor32(uint256(sub_5f4daa1c[address(arg1)]))]), 
}

function unfollow(address arg1) {
    require uint256(sub_6515485c[address(msg.sender)]) - 1 < uint256(sub_6515485c[address(msg.sender)])
    require sub_ba81626a[address(msg.sender)][address(arg1)].field_768 < uint256(sub_6515485c[address(msg.sender)])
    address(sub_6515485c[address(msg.sender)][stor1[address(msg.sender)][address(arg1)].field_768]) = address(sub_6515485c[address(msg.sender)][uint256(sub_6515485c[address(msg.sender)])])
    sub_ba81626a[address(msg.sender)][address(stor2[address(msg.sender)][uint256(stor2[address(msg.sender)])])].field_768 = sub_ba81626a[address(msg.sender)][address(arg1)].field_768
    uint256(sub_6515485c[address(msg.sender)])--
    if uint256(sub_6515485c[address(msg.sender)]) > uint256(sub_6515485c[address(msg.sender)]) - 1:
        idx = uint256(sub_6515485c[address(msg.sender)]) - 1
        while uint256(sub_6515485c[address(msg.sender)]) > idx:
            uint256(sub_6515485c[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    require uint256(sub_5f4daa1c[address(arg1)]) - 1 < uint256(sub_5f4daa1c[address(arg1)])
    require sub_8fa02c75[address(arg1)][address(msg.sender)] < uint256(sub_5f4daa1c[address(arg1)])
    address(sub_5f4daa1c[address(arg1)][stor3[address(arg1)][address(msg.sender)]]) = address(sub_5f4daa1c[address(arg1)][uint256(sub_5f4daa1c[address(arg1)])])
    sub_8fa02c75[address(arg1)][address(stor4[address(arg1)][uint256(stor4[address(arg1)])])] = sub_8fa02c75[address(arg1)][address(msg.sender)]
    uint256(sub_5f4daa1c[address(arg1)])--
    if uint256(sub_5f4daa1c[address(arg1)]) > uint256(sub_5f4daa1c[address(arg1)]) - 1:
        idx = uint256(sub_5f4daa1c[address(arg1)]) - 1
        while uint256(sub_5f4daa1c[address(arg1)]) > idx:
            uint256(sub_5f4daa1c[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
    emit UnFollow(arg1, msg.sender);
}

function sub_0ec83370(?) {
    s = 0
    idx = 0
    s = 0
    while idx < uint256(sub_6515485c[address(msg.sender)]):
        require idx < uint256(sub_6515485c[address(msg.sender)])
        mem[0] = msg.sender
        mem[32] = 2
        s = address(sub_6515485c[address(msg.sender)][idx])
        idx = idx + 1
        s = s + sub_ba81626a[address(msg.sender)][address(stor2[address(msg.sender)][idx])].field_256
        continue 
    if (s * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)]) * uint256(sub_6515485c[address(msg.sender)])) + arg2 > 100 * 10^18:
        revert with 0, 'Your percentage more than 100%.'
    uint256(sub_6515485c[address(msg.sender)])++
    address(sub_6515485c[address(msg.sender)][uint256(sub_6515485c[address(msg.sender)])]) = arg1
    sub_ba81626a[address(msg.sender)][address(arg1)].field_0 = arg1
    sub_ba81626a[address(msg.sender)][address(arg1)].field_256 = arg2
    sub_ba81626a[address(msg.sender)][address(arg1)].field_512 = block.timestamp
    sub_ba81626a[address(msg.sender)][address(arg1)].field_768 = uint256(sub_6515485c[address(msg.sender)])
    uint256(sub_5f4daa1c[address(arg1)])++
    address(sub_5f4daa1c[address(arg1)][uint256(sub_5f4daa1c[address(arg1)])]) = msg.sender
    sub_8fa02c75[address(arg1)][address(msg.sender)] = uint256(sub_5f4daa1c[address(arg1)])
    emit Follow(arg2, arg1, msg.sender);
}



}
