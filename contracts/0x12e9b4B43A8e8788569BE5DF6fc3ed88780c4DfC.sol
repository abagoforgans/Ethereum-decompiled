contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 1000
    require not msg.value
    stor0 = msg.sender
    return code.data[105 len 9528]
}



// =====================  Runtime code  =====================


address owner;
uint256 genesisTime;
uint256 sub_5d694a72;
array of uint256 sub_78a11bf0;
mapping of uint256 sub_ab756f29;
mapping of uint256 balanceOf;
mapping of uint256 sub_7679bede;
array of uint256 sub_66a7045c;
mapping of uint8 stor8;
mapping of uint128 name;
mapping of address owner;
mapping of uint256 sub_cdf28eaf;
mapping of uint256 sub_3141d0db;
mapping of uint256 sub_e75f7871;
mapping of uint256 sub_e0d87dc2;
mapping of uint256 sub_e382af35;
mapping of uint256 sub_6c4426be;
mapping of uint256 sub_31857c44;
mapping of uint256 sub_b41cddba;

function sub_10cfcf0c(?) {
    return sub_66a7045c.length
}

function sub_3141d0db(?) {
    require stor8[arg1]
    return sub_3141d0db[arg1]
}

function sub_31857c44(?) {
    require stor8[arg1]
    return sub_31857c44[arg1][arg2]
}

function genesisTime() {
    return genesisTime
}

function getName(bytes32 arg1) {
    require stor8[arg1]
    return Mask(128, 128, name[arg1])
}

function sub_5d694a72(?) {
    return sub_5d694a72
}

function sub_66a7045c(?) {
    require arg1 < sub_66a7045c.length
    return sub_66a7045c[arg1]
}

function sub_6c4426be(?) {
    require stor8[arg1]
    return sub_6c4426be[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7679bede(?) {
    return sub_7679bede[arg1]
}

function sub_78a11bf0(?) {
    require arg2 < sub_78a11bf0[address(arg1)]
    return sub_78a11bf0[address(arg1)][arg2]
}

function sub_7ce3705e(?) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function sub_ab756f29(?) {
    return sub_ab756f29[arg1]
}

function sub_b41cddba(?) {
    require stor8[arg1]
    return sub_b41cddba[arg1][arg2]
}

function sub_b6d7e8a1(?) {
    require stor8[arg1]
    return sub_6c4426be[arg1]
}

function sub_c2fe3942(?) {
    require arg2 < sub_78a11bf0[arg1]
    return sub_78a11bf0[arg1][arg2]
}

function sub_cdf28eaf(?) {
    require stor8[arg1]
    return sub_cdf28eaf[arg1]
}

function sub_cf2dd7d1(?) {
    return bool(stor8[arg1])
}

function getOwner(bytes32 arg1) {
    require stor8[arg1]
    return owner[arg1]
}

function sub_e0d87dc2(?) {
    require stor8[arg1]
    return sub_e0d87dc2[arg1]
}

function sub_e382af35(?) {
    require stor8[arg1]
    return sub_e382af35[arg1]
}

function sub_e75f7871(?) {
    require stor8[arg1]
    return sub_e75f7871[arg1]
}

function sub_f5807181(?) {
    return sub_ab756f29[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_f776c071(?) {
    require msg.sender == owner
    require stor8[arg1]
    name[arg1] = arg2
}

function sub_2fb59b80(?) {
    require msg.sender == owner
    require stor8[arg1]
    sub_6c4426be[arg1] = arg2
}

function sub_69c6821d(?) {
    require msg.sender == owner
    require stor8[arg1]
    sub_cdf28eaf[arg1] = arg2
}

function sub_6d0af38e(?) {
    require msg.sender == owner
    require stor8[arg1]
    sub_e382af35[arg1] = arg2
}

function sub_70c92125(?) {
    require msg.sender == owner
    require stor8[arg1]
    sub_e75f7871[arg1] = arg2
}

function sub_9c8b8588(?) {
    require msg.sender == owner
    require stor8[arg1]
    sub_e0d87dc2[arg1] = arg2
}

function sub_b874b685(?) {
    require msg.sender == owner
    require stor8[arg1]
    sub_3141d0db[arg1] = arg2
}

function sub_45c7d3a6(?) {
    require msg.sender == owner
    require stor8[arg1]
    sub_6c4426be[arg1][arg2] = arg3
}

function sub_8ff4efb7(?) {
    require msg.sender == owner
    require stor8[arg1]
    sub_31857c44[arg1][arg2] = arg3
}

function sub_b9d8a1cf(?) {
    require msg.sender == owner
    require stor8[arg1]
    sub_b41cddba[arg1][arg2] = arg3
}

function startMinting() {
    require msg.sender == owner
    require not genesisTime
    genesisTime = block.timestamp
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function totalSupply() {
    if not genesisTime:
        return sub_5d694a72
    require sub_5d694a72 + (block.timestamp - genesisTime / 900) >= sub_5d694a72
    return (sub_5d694a72 + (block.timestamp - genesisTime / 900))
}

function sub_468c7804(?) {
    if not genesisTime:
        if sub_66a7045c.length <= sub_5d694a72:
            return (sub_5d694a72 - sub_66a7045c.length)
    else:
        if sub_5d694a72 + (block.timestamp - genesisTime / 900) >= sub_5d694a72:
            if sub_66a7045c.length <= sub_5d694a72 + (block.timestamp - genesisTime / 900):
                return (sub_5d694a72 + (block.timestamp - genesisTime / 900) - sub_66a7045c.length)
    revert
}

function setOwner(bytes32 arg1, address arg2) {
    require msg.sender == owner
    require stor8[arg1]
    require sub_7679bede[arg1] < sub_78a11bf0[stor10[arg1]]
    sub_78a11bf0[stor10[arg1]][stor6[arg1]] = 0
    require 1 <= balanceOf[stor10[arg1]]
    balanceOf[stor10[arg1]]--
    owner[arg1] = arg2
    sub_78a11bf0[address(arg2)]++
    if not sub_78a11bf0[address(arg2)] <= sub_78a11bf0[address(arg2)] + 1:
        idx = sub_78a11bf0[address(arg2)] + 1
        while sub_78a11bf0[address(arg2)] > idx:
            sub_78a11bf0[address(arg2)][idx] = 0
            idx = idx + 1
            continue 
    sub_78a11bf0[address(arg2)][sub_78a11bf0[address(arg2)]] = arg1
    sub_7679bede[arg1] = sub_ab756f29[address(arg2)]
    require sub_ab756f29[address(arg2)] + 1 >= sub_ab756f29[address(arg2)]
    sub_ab756f29[address(arg2)]++
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
}

function sub_43244b61(?) {
    require msg.sender == owner
    if not genesisTime:
        require sub_66a7045c.length <= sub_5d694a72
        require sub_5d694a72 - sub_66a7045c.length > sub_66a7045c.length
    else:
        require sub_5d694a72 + (block.timestamp - genesisTime / 900) >= sub_5d694a72
        require sub_66a7045c.length <= sub_5d694a72 + (block.timestamp - genesisTime / 900)
        require sub_5d694a72 + (block.timestamp - genesisTime / 900) - sub_66a7045c.length > sub_66a7045c.length
    require not stor8[arg1]
    sub_66a7045c.length++
    if not sub_66a7045c.length <= sub_66a7045c.length + 1:
        idx = sub_66a7045c.length + 1
        while sub_66a7045c.length > idx:
            sub_66a7045c[idx] = 0
            idx = idx + 1
            continue 
    sub_66a7045c[sub_66a7045c.length] = arg1
    stor8[arg1] = 1
    owner[arg1] = arg2
    sub_78a11bf0[address(arg2)]++
    if not sub_78a11bf0[address(arg2)] <= sub_78a11bf0[address(arg2)] + 1:
        idx = sub_78a11bf0[address(arg2)] + 1
        while sub_78a11bf0[address(arg2)] > idx:
            sub_78a11bf0[address(arg2)][idx] = 0
            idx = idx + 1
            continue 
    sub_78a11bf0[address(arg2)][sub_78a11bf0[address(arg2)]] = arg1
    sub_7679bede[arg1] = sub_ab756f29[address(arg2)]
    require sub_ab756f29[address(arg2)] + 1 >= sub_ab756f29[address(arg2)]
    sub_ab756f29[address(arg2)]++
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
}



}
