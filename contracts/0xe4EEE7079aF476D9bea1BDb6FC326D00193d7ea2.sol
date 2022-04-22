contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    stor2 = 0xe43351bd6cdf6cb64b1dfde1464e98a0c403b631
    return code.data[264 len 3968]
}



// =====================  Runtime code  =====================


#
#  - sub_df0a3fc3(?)
#
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}



}
