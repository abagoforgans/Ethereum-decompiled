contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - sub_d3d8f699(?)
#  - sub_d4e80f98(?)
#  - sub_e9b0f1b2(?)
#
address stor3;
array of uint256 stor4;
mapping of struct sub_4daf7571;

function sub_36fd3d98(?) payable {
    require 0 < stor4.length
    require 1 < stor4.length
    require 2 < stor4.length
    require 3 < stor4.length
    return sub_36fd3d98, uint256(stor4.field_256), uint256(stor4.field_512), uint256(stor4.field_768)
}

function sub_4daf7571(?) payable {
    return sub_4daf7571[arg1].field_0, sub_4daf7571[arg1].field_256, sub_4daf7571[arg1].field_512, sub_4daf7571[arg1].field_768
}

function kill() payable {
    if stor3 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert 
}

function withdraw(uint256 arg1) payable {
    if stor3 != msg.sender:
        return 0
    if 10^18 * arg1 > eth.balance(this.address) - 5 * 10^18:
        return 0
    call stor3 with:
       value 10^18 * arg1 wei
         gas 0 wei
    return bool(ext_call.success)
}



}
