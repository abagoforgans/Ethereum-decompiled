contract main {




// =====================  Runtime code  =====================


const getVersion = 1

const typeOfContract = 'approvedCreatorRegistry'


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;

function sub_1223773f(?) {
    return bool(stor1[arg1][arg2])
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function approvedTokenContracts(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e005a97a(?) {
    require msg.sender == owner
    if 1 == bool(stor2[address(arg1)]):
        revert with 0, 'Already approved'
    stor2[address(arg1)] = 1
    emit 0xdf0aa667: arg1
}

function sub_597b2858(?) {
    require msg.sender == owner
    if bool(stor2[address(arg1)]) != 1:
        revert with 0, 'Contract is not approved'
    stor2[address(arg1)] = 0
    emit 0x5303b3f6: arg1
}

function isOperatorApprovedForCustodialAccount(address arg1, address arg2) {
    if 1 == bool(stor2[msg.sender]):
        return (bool(stor1[address(arg1)][address(arg2)]) == 1)
    else:
        return 0
}

function setOboApprovalForAll(address arg1, bool arg2) {
    require not stor0
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator address is same as sender address.'
    if arg2 == bool(stor1[address(arg1)][msg.sender]):
        revert with 0, 'Operation already performed'
    stor1[address(arg1)][msg.sender] = uint8(arg2)
    emit 0xf384fb08: address(arg1), msg.sender, arg2
}



}
