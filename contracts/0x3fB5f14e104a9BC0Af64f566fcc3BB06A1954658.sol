contract main {




// =====================  Runtime code  =====================


address adminAddress;
mapping of uint8 stor1;
mapping of uint8 stor2;

function sub_1aaa7fee(?) {
    return bool(stor1[arg1])
}

function sub_45de84db(?) {
    return bool(stor2[address(arg1)])
}

function sub_71fa6c00(?) {
    return bool(stor2[arg1])
}

function sub_bb71136a(?) {
    return bool(stor1[address(arg1)])
}

function Admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function addBuyer(address arg1) {
    if adminAddress != msg.sender:
        revert with 0, 'Caller is not Admin.'
    if stor1[address(arg1)]:
        revert with 0, 'Buyer is already added'
    stor1[address(arg1)] = 1
    emit 0xd28f937e: block.timestamp, arg1
    return 1
}

function addSeller(address arg1) {
    if adminAddress != msg.sender:
        revert with 0, 'Caller is not Admin.'
    if stor2[address(arg1)]:
        revert with 0, 'Seller is already added'
    stor2[address(arg1)] = 1
    emit 0xe33b5fd0: block.timestamp, arg1
    return 1
}

function removeBuyer(address arg1) {
    if adminAddress != msg.sender:
        revert with 0, 'Caller is not Admin.'
    if bool(stor1[address(arg1)]) != 1:
        revert with 0, 'Buyer is already removed'
    stor1[address(arg1)] = 0
    emit 0x5ff55990: block.timestamp, arg1
    return 1
}

function removeSeller(address arg1) {
    if adminAddress != msg.sender:
        revert with 0, 'Caller is not Admin.'
    if bool(stor2[address(arg1)]) != 1:
        revert with 0, 'Seller is already removed'
    stor2[address(arg1)] = 0
    emit 0x34845ae3: block.timestamp, arg1
    return 1
}



}
