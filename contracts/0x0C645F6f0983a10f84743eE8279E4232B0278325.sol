contract main {




// =====================  Runtime code  =====================


mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address stor3;
mapping of uint8 stor4;
uint8 stor5; offset 160
address sub_7840fa1aAddress;
array of struct stor6;
mapping of uint256 stor7;
array of struct stor8;
mapping of uint256 stor9;
array of struct stor10;
mapping of uint256 stor11;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986688;

function paused() {
    return bool(stor5)
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7840fa1a(?) {
    return sub_7840fa1aAddress
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor8.length - 1)
}

function unpause() {
    require msg.sender == sub_7840fa1aAddress
    require stor5
    stor5 = 0
}

function pause() {
    require msg.sender == sub_7840fa1aAddress
    require not stor5
    stor5 = 1
}

function setCEO(address arg1) {
    require msg.sender == sub_7840fa1aAddress
    require arg1
    sub_7840fa1aAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    require not stor5
    require arg1
    require arg1 != this.address
    require ownerOf[arg2] != msg.sender
    revert
}

function approve(address arg1, uint256 arg2) {
    require not stor5
    require arg1
    require ownerOf[arg2] == msg.sender
    stor3[arg2] = arg1
    emit Approval(msg.sender, address(arg1), arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor5
    require arg2
    require arg2 != this.address
    if stor3[arg3] != msg.sender:
        require arg1 == msg.sender
    require ownerOf[arg3] != arg1
    revert
}

function getNFTbyTokenId(uint256 arg1) {
    require stor7[arg1]
    require stor7[arg1] < stor6.length
    mem[256] = stor6[stor7[arg1]].field_0
    idx = 256
    s = 0
    while stor6[stor7[arg1]].length + 256 > idx + 32:
        mem[idx + 32] = stor6[(2 * stor7[arg1]) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor6[stor7[arg1]].length, data=mem[256 len stor6[stor7[arg1]].length]), 
           stor6[stor7[arg1]].field_256,
           bool(stor4[arg1])
}

function setNFTbyTokenId(uint256 arg1, string arg2, bool arg3) {
    require not stor5
    require msg.sender == sub_7840fa1aAddress
    require 1 == bool(stor4[arg1])
    require stor7[arg1]
    require stor7[arg1] < stor6.length
    stor6[stor7[arg1]].field_0 = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        stor6[(2 * stor7[arg1]) + s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while stor6[stor7[arg1]].length + 31 / 32 > idx:
        stor6[(2 * stor7[arg1]) + idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4[arg1] = uint8(arg3)
    emit SetNFTbyTokenId(arg1, arg3);
}

function getAllTokens() {
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = uint256(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[128 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 192 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function tokensOfOwner(address arg1) {
    if not stor10[address(arg1)].field_0:
        mem[(32 * stor10[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor10[address(arg1)].field_0) + 160] = stor10[address(arg1)].field_0
        mem[(32 * stor10[address(arg1)].field_0) + 192 len floor32(stor10[address(arg1)].field_0)] = mem[128 len floor32(stor10[address(arg1)].field_0)]
        return memory
          from (32 * stor10[address(arg1)].field_0) + 128
           len (96 * stor10[address(arg1)].field_0) + 64
    mem[128] = stor10[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor10[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor10[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor10[address(arg1)].field_0) + 192 len floor32(stor10[address(arg1)].field_0)] = mem[128 len floor32(stor10[address(arg1)].field_0)]
    return Array(len=stor10[address(arg1)].field_0, data=mem[128 len floor32(stor10[address(arg1)].field_0)], mem[(32 * stor10[address(arg1)].field_0) + floor32(stor10[address(arg1)].field_0) + 192 len (32 * stor10[address(arg1)].field_0) - floor32(stor10[address(arg1)].field_0)]), 
}

function sub_1fe9f877(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 128] = 96
    mem[(32 * arg1.length) + 160] = 0
    require not stor5
    require msg.sender == sub_7840fa1aAddress
    s = (32 * arg1.length) + 128
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < mem[96]
        _87 = mem[(32 * uint8(idx)) + 128]
        _88 = mem[64]
        mem[64] = mem[64] + 96
        mem[_88 + 64] = 0
        mem[_88] = _88 + 64
        mem[_88 + 32] = uint64(block.timestamp)
        stor4[_87] = 1
        if arg2:
            stor6.length++
            mem[0] = (2 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
            bool(stor6[stor6.length].field_0) = 0
            uint255(stor6[stor6.length].field_1) = 0
            Mask(248, 0, stor6[stor6.length].field_8) = mem[_88 + 96 len 31]
            s = sha3((2 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1)
            while sha3((2 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1) + (stor6[stor6.length].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            uint64(storF652[stor6.length].field_0) = uint64(block.timestamp)
            Mask(192, 0, storF652[stor6.length].field_64) = 0
        else:
            mem[32] = 4
            stor4[_87] = 0
            mem[_88 + 32] = 0
            stor6.length++
            mem[0] = (2 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
            bool(stor6[stor6.length].field_0) = 0
            uint255(stor6[stor6.length].field_1) = 0
            Mask(248, 0, stor6[stor6.length].field_8) = mem[_88 + 96 len 31]
            s = sha3((2 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1)
            while sha3((2 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1) + (stor6[stor6.length].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            storF652[stor6.length].field_0 = 0
        stor7[_87] = stor6.length
        require arg2
        require not ownerOf[_87]
        ownerOf[_87] = arg2
        balanceOf[address(arg2)]++
        stor10[address(arg2)].field_0++
        stor10[address(arg2)][stor10[address(arg2)].field_0].field_0 = _87
        mem[32] = 11
        stor11[_87] = stor10[address(arg2)].field_0
        mem[mem[64]] = 0
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = _87
        emit Transfer(0, address(arg2), _87);
        mem[32] = 9
        stor9[_87] = stor8.length
        stor8.length++
        mem[0] = 8
        stor8[stor8.length].field_0 = _87
        s = _88
        idx = idx + 1
        s = _87
        continue 
}



}
