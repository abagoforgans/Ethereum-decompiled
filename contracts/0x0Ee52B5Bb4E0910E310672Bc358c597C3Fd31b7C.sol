contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
address stor1; offset 8
uint8 stor2; offset 160
address stor2;

function _fallback() payable {
    stor0 = 1
    uint8(stor1.field_0) = 8
    uint8(stor2.field_160) = 1
    require not msg.value
    address(stor2.field_0) = code.data[1959 len 20]
    address(stor1.field_8) = msg.sender
    return code.data[169 len 1778]
}



// =====================  Runtime code  =====================


#
#  - mixGenes(uint256 arg1, uint256 arg2, uint256 arg3)
#
uint256 randomSeed;
uint8 geneKind;
address owner; offset 8
uint8 stor2; offset 160
address dogCoreAddress;

function randomSeed() {
    return randomSeed
}

function isGeneScience() {
    return bool(stor2)
}

function owner() {
    return owner
}

function geneKind() {
    return geneKind
}

function dogCore() {
    return dogCoreAddress
}

function _fallback() payable {
    revert
}

function transferOwnerShip(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setKittyCoreAddress(address arg1) {
    require owner == msg.sender
    if arg1:
        dogCoreAddress = arg1
}

function setGeneKind(uint8 arg1) {
    require owner == msg.sender
    if arg1 >= 12:
        geneKind = 12
    else:
        if arg1 > 1:
            geneKind = arg1
        else:
            geneKind = 1
}



}
