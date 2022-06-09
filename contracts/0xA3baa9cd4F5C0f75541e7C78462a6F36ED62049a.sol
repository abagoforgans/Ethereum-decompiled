contract main {




// =====================  Runtime code  =====================


const limit = 10


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint32 numberOfAddresses;
mapping of address addressOfIndex;
mapping of uint32 stor5;

function getNumberOfAddresses() {
    require msg.sender
    require stor1[address(msg.sender)]
    return numberOfAddresses
}

function isOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function owner() {
    return owner
}

function isReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor2[address(arg1)])
}

function addressOfIndex(uint32 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    return addressOfIndex[arg1 << 224]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit OperatorAdded(arg1);
}

function removeOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit OperatorRemoved(arg1);
}

function removeReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    addressOfIndex[stor5[address(arg1)]] = 0
    emit ReferrerRemoved(arg1);
}

function addReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    addressOfIndex[stor3] = arg1
    stor5[address(arg1)] = numberOfAddresses
    numberOfAddresses = uint32(numberOfAddresses + 1)
    emit ReferrerAdded(arg1);
}

function sub_a1c13ca8(?) {
    require calldata.size - 4 >= 320
    mem[96 len 320] = call.data[4 len 320]
    mem[416] = 0
    require msg.sender
    require stor1[address(msg.sender)]
    idx = 0
    while uint16(idx) < 10:
        if mem[(32 * uint16(idx)) + 108 len 20]:
            require uint16(idx) < 10
            require msg.sender
            require stor1[address(msg.sender)]
            require mem[(32 * uint16(idx)) + 108 len 20]
            require not stor2[address(mem[(32 * uint16(idx)) + 96])]
            stor2[address(mem[(32 * uint16(idx)) + 96])] = 1
            addressOfIndex[stor3] = mem[(32 * uint16(idx)) + 108 len 20]
            mem[0] = mem[(32 * uint16(idx)) + 108 len 20]
            mem[32] = 5
            stor5[address(mem[(32 * uint16(idx)) + 96])] = numberOfAddresses
            numberOfAddresses = uint32(numberOfAddresses + 1)
            emit ReferrerAdded(mem[(32 * uint16(idx)) + 108 len 20]);
        idx = idx + 1
        continue 
}



}
