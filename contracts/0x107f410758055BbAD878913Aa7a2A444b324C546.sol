contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
mapping of uint8 stor3;
mapping of uint8 sub_7ae4aa15;

function custodian() payable {
    return custodianAddress
}

function sub_7ae4aa15(?) payable {
    require calldata.size - 4 >= 32
    require uint8(sub_7ae4aa15[address(arg1)]) <= 2
    return uint8(sub_7ae4aa15[address(arg1)])
}

function lockRequestCount() payable {
    return lockRequestCount
}

function custodianChangeReqs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return custodianChangeReqs[arg1]
}

function sub_e38c09db(?) payable {
    return uint256(sub_7ae4aa15[address(arg1)][1][arg2[all]][0 len sub_7ae4aa15[address(arg1)][1][arg2[all]].length])
}

function _fallback() payable {
    revert
}

function sub_ce9451f0(?) payable {
    require calldata.size - 4 >= 32
    if arg1 == custodianAddress:
        return True
    return (bool(stor3[address(arg1)]) == 1)
}

function confirmCustodianChange(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == custodianAddress
    require custodianChangeReqs[arg1]
    custodianAddress = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function sub_51b1db0b(?) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        require bool(stor3[address(msg.sender)]) == 1
    require uint8(sub_7ae4aa15[address(arg1)]) <= 2
    if uint8(sub_7ae4aa15[address(arg1)]) == 2:
        revert with 0, 'customer must be not suspended'
    uint8(sub_7ae4aa15[address(arg1)]) = 2
    emit 0x96f14fd2: arg1, msg.sender
}

function requestCustodianChange(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    lockRequestCount++
    custodianChangeReqs[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function sub_c70cf14d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == custodianAddress
    if stor3[address(arg1)]:
        revert with 0, 'provider must not exist'
    stor3[address(arg1)] = 1
    emit 0x20cf5729: Array(len=arg2.length, data=arg2[all]), arg1
}

function sub_aaa61dbd(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == custodianAddress
    if bool(stor3[address(arg1)]) != 1:
        revert with 0, 'provider must exist'
    stor3[address(arg1)] = 0
    emit 0x680272d9: Array(len=arg2.length, data=arg2[all]), arg1
}

function approveCustomer(address arg1) payable {
    require calldata.size - 4 >= 32
    if custodianAddress != msg.sender:
        require bool(stor3[address(msg.sender)]) == 1
    require uint8(sub_7ae4aa15[address(arg1)]) <= 2
    if uint8(sub_7ae4aa15[address(arg1)]) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe637573746f6d6572206d757374206e6f7420626520617070726f766564206265666f72,
                    mem[200 len 28]
    uint8(sub_7ae4aa15[address(arg1)]) = 1
    emit 0xb5574b8c: arg1, msg.sender
}

function sub_8a7f8cd5(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + ('cd', 68).length + 36 <= calldata.size
    if custodianAddress != msg.sender:
        require bool(stor3[address(msg.sender)]) == 1
    require uint8(sub_7ae4aa15[address(cd[4])]) <= 2
    if not uint8(sub_7ae4aa15[address(cd[4])]):
        revert with 0, 'customer must have a set status'
    uint256(sub_7ae4aa15[address(cd[4])][1][call.data[cd[36] + 36 len ('cd', 36).length]]) = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        uint256(sub_7ae4aa15[address(cd[4])][1][call.data[cd[36] + 36 len ('cd', 36).length]][s]) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while sub_7ae4aa15[address(cd[4])][1][call.data[cd[36] + 36 len ('cd', 36).length]].length + 31 / 32 > idx:
        uint256(sub_7ae4aa15[address(cd[4])][1][call.data[cd[36] + 36 len ('cd', 36).length]][idx]) = 0
        idx = idx + 1
        continue 
    emit 0xa7ed2dff: Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]), address(cd[4]), msg.sender
}



}
