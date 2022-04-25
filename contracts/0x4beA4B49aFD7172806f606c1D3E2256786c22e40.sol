contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
mapping of struct stor2;

function _fallback() {
    stor0 = msg.sender
    stor2[Mask(32, 224, ('map', "'callFunctionOf(address,uint,byte'", "'s)'"))].field_0 = 32
    stor2[Mask(32, 224, ('map', "'callFunctionOf(address,uint,byte'", "'s)'"))].field_8 = 0
    require msg.sender == stor0
    stor1 = address(code.data[1785 len 32])
    return code.data[552 len 1233]
}



// =====================  Runtime code  =====================


address owner;
address libAddress;
mapping of uint32 sub_206bd362;

function sub_206bd362(?) {
    return sub_206bd362[Mask(32, 224, arg1)]
}

function owner() {
    return owner
}

function lib() {
    return libAddress
}

function _fallback() payable {
    revert
}

function replace(address arg1) {
    require msg.sender == owner
    libAddress = arg1
}

function transferOwnershipTo(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}



}
