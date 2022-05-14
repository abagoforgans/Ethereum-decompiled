contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address stor1;

function sub_6a3ea6bd(?) {
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function setAddress(address arg1, bool arg2) {
    stor0[address(arg1)] = uint8(arg2)
    stor1.length++
    stor1[stor1.length] = arg1
}



}
