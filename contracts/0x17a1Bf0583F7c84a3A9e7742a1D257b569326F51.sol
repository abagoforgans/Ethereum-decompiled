contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address nonFungibleContractAddress;
array of struct stor2;
uint256 pregnantMonsters;
mapping of address monsterIndexToOwner;
mapping of uint256 ownershipTokenCount;
mapping of address monsterIndexToApproved;
mapping of address sireAllowedTo;

function sireAllowedToAddress(uint256 arg1) {
    return sireAllowedTo[arg1]
}

function monsterIndexToApproved(uint256 arg1) {
    return monsterIndexToApproved[arg1]
}

function owner() {
    return owner
}

function monsterIndexToOwner(uint256 arg1) {
    return monsterIndexToOwner[arg1]
}

function pregnantMonsters() {
    return pregnantMonsters
}

function ownershipTokenCount(address arg1) {
    return ownershipTokenCount[arg1]
}

function sub_d86e9597(?) {
    return bool(stor1)
}

function nonFungibleContract() {
    return nonFungibleContractAddress
}

function sub_e3364073(?) {
    return stor2.length
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setTokenContract(address arg1) {
    require msg.sender == owner
    nonFungibleContractAddress = arg1
}

function sub_745d8e7c(?) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    pregnantMonsters = arg1
}

function sub_638a4e7f(?) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    ownershipTokenCount[address(arg1)] = arg2
}

function sub_8c53a943(?) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    require arg1 < stor2.length
    stor2[arg1].field_736 = arg2
}

function setMonsterIndexToOwner(uint256 arg1, address arg2) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    monsterIndexToOwner[arg1] = arg2
}

function sub_f4363bec(?) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    if arg2:
        sireAllowedTo[arg1] = arg2
    else:
        sireAllowedTo[arg1] = 0
}

function setLevel(uint256 arg1, uint256 arg2) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    require arg1 < stor2.length
    stor2[arg1].field_592 = uint8(arg2)
}

function sub_968a2fe3(?) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    require arg1 < stor2.length
    stor2[arg1].field_600 = arg2
    stor2[arg1].field_608 = arg3
    stor2[arg1].field_672 = 0
}

function sub_faa5bdfb(?) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    require arg1 < stor2.length
    if arg2 != 0:
        stor2[arg1].field_464 = uint32(arg2)
    else:
        stor2[arg1].field_464 = 0
}

function setMonsterIndexToApproved(uint256 arg1, address arg2) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    if arg2:
        monsterIndexToApproved[arg1] = arg2
    else:
        monsterIndexToApproved[arg1] = 0
}

function sub_259fb360(?) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    require arg1 < stor2.length
    stor2[arg1].field_336 = arg3
    stor2[arg1].field_400 = stor2[arg1].field_400
    stor2[arg1].field_496 = arg2
    stor2[arg1].field_576 = arg5
    stor2[arg1].field_584 = arg6
    stor2[arg1].field_584 = 0
    stor2[arg1].field_592 = stor2[arg1].field_592
    stor2[arg1].field_672 = arg4
}

function sub_1df256f7(?) {
    require arg1 < stor2.length
    return stor2[arg1].field_0, 
           stor2[arg1].field_256,
           stor2[arg1].field_672,
           stor2[arg1].field_608,
           stor2[arg1].field_336,
           0,
           stor2[arg1].field_736,
           stor2[arg1].field_600,
           stor2[arg1].field_592,
           stor2[arg1].field_584,
           stor2[arg1].field_576,
           stor2[arg1].field_512,
           stor2[arg1].field_496,
           stor2[arg1].field_464,
           stor2[arg1].field_432,
           stor2[arg1].field_400,
           stor2[arg1].field_320
}

function sub_7ab37399(?) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    require arg1 < stor2.length
    stor2[arg1].field_336 = arg2
    stor2[arg1].field_400 = stor2[arg1].field_400
    stor2[arg1].field_464 = arg3
    stor2[arg1].field_496 = uint16(arg3)
    stor2[arg1].field_496 = 0
    stor2[arg1].field_576 = uint8(arg3)
    stor2[arg1].field_584 = uint8(arg3)
    stor2[arg1].field_592 = uint8(arg3)
    stor2[arg1].field_600 = uint8(arg3)
    stor2[arg1].field_608 = arg2
    stor2[arg1].field_672 = arg2
    stor2[arg1].field_736 = uint8(arg3)
    stor2[arg1].field_744 = 0
}

function sub_915e25a7(?) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    require arg1 < stor2.length
    stor2[arg1].field_256 = arg3
    stor2[arg1].field_320 = arg4
    stor2[arg1].field_0 = arg2
    stor2[arg1].field_512 = uint64(arg4)
    stor2[arg1].field_496 = arg4
    stor2[arg1].field_400 = uint32(arg4)
    stor2[arg1].field_432 = uint32(arg4)
    stor2[arg1].field_464 = uint32(arg4)
    stor2[arg1].field_576 = uint8(arg4)
    stor2[arg1].field_584 = uint8(arg4)
    stor2[arg1].field_592 = uint8(arg4)
    stor2[arg1].field_600 = uint8(arg4)
    stor2[arg1].field_336 = arg3
    stor2[arg1].field_608 = arg3
    stor2[arg1].field_672 = arg3
    stor2[arg1].field_736 = uint8(arg4)
}

function sub_6b40d190(?) {
    require msg.sender
    require msg.sender == nonFungibleContractAddress
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    stor2[stor2.length].field_256 = arg2
    stor2[stor2.length].field_320 = arg3
    stor2[stor2.length].field_336 = arg2
    stor2[stor2.length].field_400 = uint32(arg3)
    stor2[stor2.length].field_432 = uint32(arg3)
    stor2[stor2.length].field_464 = uint32(arg3)
    stor2[stor2.length].field_496 = arg3
    stor2[stor2.length].field_512 = uint64(arg3)
    stor2[stor2.length].field_576 = uint8(arg3)
    stor2[stor2.length].field_584 = uint8(arg3)
    stor2[stor2.length].field_592 = uint8(arg3)
    stor2[stor2.length].field_600 = uint8(arg3)
    stor2[stor2.length].field_608 = arg2
    stor2[stor2.length].field_672 = arg2
    stor2[stor2.length].field_736 = uint8(arg3)
    require stor2.length == uint32(stor2.length)
    return stor2.length
}



}
