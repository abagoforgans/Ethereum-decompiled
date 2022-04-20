contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1180]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
array of address stor2;

function authenticate(address arg1) {
    return bool(stor1[address(arg1)].field_256)
}

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (owner == arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function hasEntry(address arg1) {
    if stor2.length <= 0:
        return (stor2.length > 0)
    require stor1[address(arg1)].field_512 < stor2.length
    return (arg1 == address(stor2[stor1[address(arg1)].field_512]))
}

function remove(address arg1) {
    require owner == msg.sender
    if stor2.length > 0:
        require stor1[address(arg1)].field_512 < stor2.length
        if arg1 == address(stor2[stor1[address(arg1)].field_512]):
            stor1[address(arg1)].field_256 = 0
            stor1[address(arg1)].field_0 = block.timestamp
}

function add(address arg1) {
    require owner == msg.sender
    if stor2.length <= 0:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                uint256(stor2[idx]) = 0
                idx = idx + 1
                continue 
        address(stor2[stor2.length]) = arg1
        stor1[address(arg1)].field_0 = block.timestamp
        stor1[address(arg1)].field_256 = 1
        stor1[address(arg1)].field_512 = stor2.length
    else:
        require stor1[address(arg1)].field_512 < stor2.length
        if arg1 == address(stor2[stor1[address(arg1)].field_512]):
            if not stor1[address(arg1)].field_256:
                stor1[address(arg1)].field_256 = 1
                stor1[address(arg1)].field_0 = block.timestamp
        else:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 1
                while stor2.length > idx:
                    uint256(stor2[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor2[stor2.length]) = arg1
            stor1[address(arg1)].field_0 = block.timestamp
            stor1[address(arg1)].field_256 = 1
            stor1[address(arg1)].field_512 = stor2.length
}



}
