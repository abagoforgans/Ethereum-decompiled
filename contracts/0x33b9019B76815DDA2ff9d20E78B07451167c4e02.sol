contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address adamAddress;
array of uint256 sub_fa011562;
array of uint256 sub_f86d0b38;
array of uint256 sub_b061f8dc;
array of uint256 sub_5b8f66c1;
array of uint256 sub_83091aa3;
array of uint256 sub_d66ce059;
array of uint256 sub_63a0f2ee;

function sub_5b8f66c1(?) {
    return sub_5b8f66c1[0 len sub_5b8f66c1.length]
}

function sub_63a0f2ee(?) {
    return sub_63a0f2ee[0 len sub_63a0f2ee.length]
}

function sub_83091aa3(?) {
    return sub_83091aa3[0 len sub_83091aa3.length]
}

function adam() {
    return adamAddress
}

function sub_b061f8dc(?) {
    return sub_b061f8dc[0 len sub_b061f8dc.length]
}

function sub_d66ce059(?) {
    return sub_d66ce059[0 len sub_d66ce059.length]
}

function sub_f86d0b38(?) {
    return sub_f86d0b38[0 len sub_f86d0b38.length]
}

function sub_fa011562(?) {
    return sub_fa011562[0 len sub_fa011562.length]
}

function _fallback() payable {
    if msg.value < 1:
    call adamAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    selfdestruct(this.address)
}



}
