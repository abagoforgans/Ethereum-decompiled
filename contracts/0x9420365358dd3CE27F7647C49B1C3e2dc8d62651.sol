contract main {




// =====================  Runtime code  =====================


#
#  - sub_84eb0e91(?)
#
const ETH_TOKEN_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address daiAddress;

function dai() {
    return daiAddress
}

function _fallback() payable {
    revert
}



}
