contract main {




// =====================  Runtime code  =====================


#
#  - getVowInfo(bytes32 arg1)
#
array of uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    revert
}

function addVowInfo(bytes32 arg1, string arg2, string arg3, string arg4) {
    if stor0[arg1] == arg1:
        emit NewMerchant(address arg1, bool arg2, string arg3):
                         msg.sender,
                         0,
                         96,
                         20,
                         0xe8aeb8e684bf4944e5b7b2e7bb8fe5ad98e59ca8000000000000000000000000,
    else:
        stor0[arg1] = arg1
        stor0[arg1][1][] = Array(len=arg2.length, data=arg2[all])
        stor0[arg1][2][] = Array(len=arg3.length, data=arg3[all])
        stor0[arg1][3][] = Array(len=arg4.length, data=arg4[all])
        stor1.length++
        stor1[stor1.length] = arg1
        emit NewMerchant(address arg1, bool arg2, string arg3):
                         msg.sender,
                         1,
                         96,
                         12,
                         0xe6b7bbe58aa0e68890e58a9f0000000000000000000000000000000000000000,
}



}
