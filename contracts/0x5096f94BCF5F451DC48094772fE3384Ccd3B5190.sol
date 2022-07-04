contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
uint8 stor3;
mapping of struct sub_babb6a3f;
uint8 stor5;
mapping of struct sub_bf4274b1;
uint8 stor7;
mapping of struct sub_b65ae70e;

function sub_1f1fd193(?) payable {
    return bool(stor5)
}

function custodian() payable {
    return custodianAddress
}

function sub_b65ae70e(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_b65ae70e[arg1].field_0), bool(sub_b65ae70e[arg1].field_8)
}

function sub_b95306d7(?) payable {
    return bool(stor3)
}

function sub_babb6a3f(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_babb6a3f[arg1].field_0), bool(sub_babb6a3f[arg1].field_8)
}

function sub_bb5ebde2(?) payable {
    return bool(stor7)
}

function sub_bf4274b1(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_bf4274b1[arg1].field_0), bool(sub_bf4274b1[arg1].field_8)
}

function lockRequestCount() payable {
    return lockRequestCount
}

function custodianChangeReqs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return custodianChangeReqs[arg1]
}

function _fallback() payable {
    revert
}

function confirmCustodianChange(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == custodianAddress
    require custodianChangeReqs[arg1]
    custodianAddress = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function sub_2b8fb639(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == custodianAddress
    require bool(sub_bf4274b1[arg1].field_8) == 1
    stor5 = uint8(bool(sub_bf4274b1[arg1].field_0))
    emit 0xc1a188c6: arg1, bool(sub_bf4274b1[arg1].field_0)
    sub_bf4274b1[arg1].field_0 = 0
    sub_bf4274b1[arg1].field_8 = 0
}

function sub_b2ed1a17(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == custodianAddress
    require bool(sub_b65ae70e[arg1].field_8) == 1
    stor7 = uint8(bool(sub_b65ae70e[arg1].field_0))
    emit 0x519db228: arg1, bool(sub_b65ae70e[arg1].field_0)
    sub_b65ae70e[arg1].field_0 = 0
    sub_b65ae70e[arg1].field_8 = 0
}

function sub_dee41184(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == custodianAddress
    require bool(sub_babb6a3f[arg1].field_8) == 1
    stor3 = uint8(bool(sub_babb6a3f[arg1].field_0))
    emit 0x39144a2b: arg1, bool(sub_babb6a3f[arg1].field_0)
    sub_babb6a3f[arg1].field_0 = 0
    sub_babb6a3f[arg1].field_8 = 0
}

function requestCustodianChange(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    lockRequestCount++
    custodianChangeReqs[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function sub_0f084635(?) payable {
    require calldata.size - 4 >= 32
    require arg1 != bool(stor5)
    lockRequestCount++
    sub_bf4274b1[block.hash(block.number - 1)][this.address][stor0 + 1].field_0 = uint8(arg1)
    sub_bf4274b1[block.hash(block.number - 1)][this.address][stor0 + 1].field_8 = 1
    emit 0x6d2238fc: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), arg1
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function sub_3b768f2c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 != bool(stor7)
    lockRequestCount++
    sub_b65ae70e[block.hash(block.number - 1)][this.address][stor0 + 1].field_0 = uint8(arg1)
    sub_b65ae70e[block.hash(block.number - 1)][this.address][stor0 + 1].field_8 = 1
    emit 0x69432cb8: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), arg1
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function sub_c53d6fd4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 != bool(stor3)
    lockRequestCount++
    sub_babb6a3f[block.hash(block.number - 1)][this.address][stor0 + 1].field_0 = uint8(arg1)
    sub_babb6a3f[block.hash(block.number - 1)][this.address][stor0 + 1].field_8 = 1
    emit 0x7cfa035b: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), arg1
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}



}
