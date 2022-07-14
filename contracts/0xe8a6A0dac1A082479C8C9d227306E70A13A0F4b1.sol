contract main {




// =====================  Runtime code  =====================


#
#  - submitTransactionToken(address arg1, address arg2, string arg3, string arg4, uint8[] arg5, bytes32[] arg6, bytes32[] arg7, uint256 arg8)
#  - fromCode(bytes4 arg1)
#  - submitTransaction(address arg1, string arg2, string arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6)
#
function _fallback() payable {
    revert
}



}
