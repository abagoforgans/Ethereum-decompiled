contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor36B6;

function _fallback() {
    mem[96 len -2007] = code.data[2903 len -2007]
    _2 = mem[96]
    stor0 = msg.sender
    mem[96] = 2
    mem[64] = 192
    stor2.length = 2
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = 128
    while 192 > idx:
        address(stor[s]) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0
    while stor2.length + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        address(stor[idx]) = 0
        idx = idx + 1
        continue 
    require 0 < stor2.length
    address(stor2.field_0) = address(_2)
    require 1 < stor2.length
    address(stor2.field_256) = mem[140 len 20]
    stor3 = mem[160]
    stor4 = mem[192]
    stor5 = mem[mem[224] + 96]
    mem[0] = 5
    if not mem[mem[224] + 96]:
        idx = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
        while (stor5 + 3 / 4) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
            uint64(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[224] + 128
        while mem[224] + (32 * mem[mem[224] + 96]) + 128 > idx:
            stor36B6 = mem[idx len 8] * 256^s or !(test266151307() * 256^s) and stor36B6
            s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
            idx = idx + 32
            continue 
        idx = floor32(mem[mem[224] + 96]) >> 2
        s = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
        while idx:
            uint256(stor[s]) = !(test266151307() * 256^idx) and uint256(stor[s])
            idx = idx + (8 * -idx + 15 / 32) + (-1 * idx * idx + 15 / 32) + 8
            s = (idx + 15 / 32) + s
            continue 
        idx = ((floor32(mem[mem[224] + 96]) >> 2) + Mask(250, 3, None + -(floor32(mem[mem[224] + 96]) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(mem[mem[224] + 96]) >> 2) + 9) >> 3) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
        while (stor5 + 3 / 4) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
            uint64(stor[idx]) = 0
            idx = idx + 1
            continue 
    stor6 = mem[mem[256] + 96]
    if not mem[mem[256] + 96]:
        idx = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
        while stor6 - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
        idx = mem[256] + 128
        while mem[256] + (32 * mem[mem[256] + 96]) + 128 > idx:
            uint256(stor[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * mem[mem[256] + 96]) + 31) >> 5) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
        while stor6 - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
    stor7 = mem[300 len 20]
    return code.data[896 len 2007]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of address members;
uint256 principal;
uint256 collateralRatio;
array of uint256 stor5;
array of uint256 amounts;
address sub_c8ab1ba3Address;

function sub_220ef69f(?) {
    require 1 < members.length
    return bool(stor1[address(stor2.field_256)])
}

function amounts(uint256 arg1) {
    require arg1 < amounts.length
    return amounts[arg1]
}

function members(uint256 arg1) {
    require arg1 < members.length
    return members[arg1].field_0
}

function owner() {
    return owner
}

function sub_99f5c369(?) {
    require 0 < members.length
    return bool(stor1[address(stor2.field_0)])
}

function sub_a6cdcc6f(?) {
    return bool(stor1[address(arg1)])
}

function numCoins() {
    return stor5.length
}

function collateralRatio() {
    return collateralRatio
}

function principal() {
    return principal
}

function sub_c8ab1ba3(?) {
    return sub_c8ab1ba3Address
}

function _fallback() payable {
    revert 
}

function approve() {
    stor1[address(msg.sender)] = 1
}

function transferOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_647a1b6a(?) {
    require owner == msg.sender
    stor1[address(arg1)] = 1
}

function sub_c45c98e2(?) {
    require arg1 < stor5.length
    return (stor5[0.25 / arg1] / 256^(8 * arg1 % 4) << 192)
}

function setBuyer(address arg1) {
    require owner == msg.sender
    require 0 < members.length
    stor1[address(arg1)] = uint8(bool(stor1[address(stor2.field_0)]))
    address(members.field_0) = arg1
}

function setSeller(address arg1) {
    require owner == msg.sender
    require 1 < members.length
    stor1[address(arg1)] = uint8(bool(stor1[address(stor2.field_256)]))
    address(members.field_256) = arg1
}

function isApproved() {
    idx = 0
    while idx < members.length:
        mem[0] = members[idx].field_0
        mem[32] = 1
        if stor1[stor2[idx].field_0]:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}



}
