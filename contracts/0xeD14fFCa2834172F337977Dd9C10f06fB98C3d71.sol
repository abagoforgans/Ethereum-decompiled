contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor2 = tx.origin
    stor1 = msg.sender
    stor0 = this.address
    return code.data[224 len 504]
}



// =====================  Runtime code  =====================


address sub_10c7e057Address;
address sub_3142e1acAddress;
address sub_2f3953f0Address;

function sub_10c7e057(?) {
    return sub_10c7e057Address
}

function sub_2f3953f0(?) {
    return sub_2f3953f0Address
}

function sub_3142e1ac(?) {
    return sub_3142e1acAddress
}

function _fallback() payable {
    revert
}



}
