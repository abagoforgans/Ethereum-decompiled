contract main {




// =====================  Runtime code  =====================


#
#  - sub_0fa58c7d(?)
#  - sub_737f79df(?)
#  - sub_9d9c9647(?)
#  - sub_d9656a47(?)
#  - setContractAddress(bytes32 arg1, address arg2)
#
const version = '0.1.2'


array of struct address;
uint8 stor2;
uint16 sub_fc3a0019; offset 8
mapping of uint256 stor3;
mapping of uint256 stor4;

function getAddress(bytes32 arg1) {
    require stor3[arg1] < address.length
    return address[stor3[arg1]].field_0
}

function isLocked(bytes32 arg1) {
    require stor3[arg1] < address.length
    return bool(address[stor3[arg1]].field_512)
}

function isLocked(address arg1) {
    require stor4[address(arg1)] < address.length
    return bool(address[stor4[address(arg1)]].field_512)
}

function sub_ad02c21c(?) {
    return bool(stor2)
}

function sub_fc3a0019(?) {
    return sub_fc3a0019
}

function _fallback() payable {
    revert
}



}
