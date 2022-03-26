contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[87 len 4170]
}



// =====================  Runtime code  =====================


#
#  - StoreFile(uint256 arg1, bytes32 arg2, string arg3, string arg4, string arg5, string arg6, string arg7, uint256 arg8, bytes arg9)
#  - files(bytes32 arg1, uint256 arg2)
#
address stor0;
mapping of uint256 stor1;

function Kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() {
    revert 
}

function GetFileLocation(bytes32 arg1) {
    return (stor1[arg1] - 1)
}



}
