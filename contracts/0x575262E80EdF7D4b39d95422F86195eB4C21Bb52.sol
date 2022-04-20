contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[3131 len 20]
    stor1 = code.data[3163 len 20]
    stor2 = code.data[3195 len 20]
    return code.data[127 len 2992]
}



// =====================  Runtime code  =====================


#
#  - sub_5073567e(?)
#
const rootNode = 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae


address ensAddress;
address sub_cc0f73b1Address;
address sub_7fbda334Address;

function ens() {
    return ensAddress
}

function sub_7fbda334(?) {
    return sub_7fbda334Address
}

function sub_cc0f73b1(?) {
    return sub_cc0f73b1Address
}

function _fallback() payable {
    revert
}



}
