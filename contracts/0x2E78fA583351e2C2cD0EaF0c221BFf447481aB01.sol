contract main {




// =====================  Runtime code  =====================


uint256 sub_e02f52fb;
address sub_d895540fAddress;
address contractCreatorAddress;
mapping of struct byIndex;
array of address sub_0e249c66;

function sub_0e249c66(?) {
    require arg1 < sub_0e249c66.length
    return sub_0e249c66[arg1]
}

function contractCreator() {
    return contractCreatorAddress
}

function getByIndex(uint256 arg1) {
    require arg1 < sub_0e249c66.length
    return byIndex[stor4[arg1]].field_0
}

function getCounter() {
    return sub_e02f52fb
}

function sub_b3c25132(?) {
    return byIndex[address(arg1)].field_768
}

function sub_d895540f(?) {
    return sub_d895540fAddress
}

function sub_e02f52fb(?) {
    return sub_e02f52fb
}

function _fallback() payable {
    revert
}

function sub_5a927890(?) {
    byIndex[address(arg1)].field_768 = arg2
}

function sub_e98ad403(?) {
    require msg.sender == contractCreatorAddress
    sub_d895540fAddress = arg1
}

function changeOwner(address arg1) {
    require msg.sender == contractCreatorAddress
    contractCreatorAddress = arg1
}

function getIndexByAddress(address arg1) {
    idx = 0
    while idx < sub_e02f52fb:
        require idx < sub_0e249c66.length
        mem[0] = sub_0e249c66[idx]
        mem[32] = 3
        if byIndex[stor4[idx]].field_0 != arg1:
            idx = idx + 1
            continue 
        return idx
    return 0
}

function sub_1c7c08f3(?) {
    idx = 0
    while idx < sub_e02f52fb:
        require idx < sub_0e249c66.length
        mem[0] = sub_0e249c66[idx]
        mem[32] = 3
        if byIndex[stor4[idx]].field_768 >= arg1:
            idx = idx + 1
            continue 
        require idx < sub_0e249c66.length
        return byIndex[stor4[idx]].field_0
    return 0
}

function sub_ecb2ec8a(?) {
    byIndex[address(arg1)].field_0 = arg1
    byIndex[address(arg1)].field_256 = block.timestamp
    byIndex[address(arg1)].field_768 = arg2 + 1
    byIndex[address(arg1)].field_1024 = 0
    byIndex[address(arg1)].field_512 = 1
    byIndex[address(arg1)].field_1280 = sub_0e249c66.length + 1
    sub_0e249c66.length++
    sub_0e249c66[sub_0e249c66.length] = arg1
    sub_e02f52fb++
    return 1
}



}
