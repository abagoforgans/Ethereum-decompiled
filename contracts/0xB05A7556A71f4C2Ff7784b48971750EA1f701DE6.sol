contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[87 len 2564]
}



// =====================  Runtime code  =====================


#
#  - p()
#
address stor0;
address stor1;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor8;
uint8 stor9;
mapping of uint8 stor10;

function hasVoted(address arg1) {
    return bool(stor10[arg1])
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function sub_8eddad1e(?) {
    stor1 = msg.sender
    stor3[] = Array(len=arg1.length, data=arg1[all])
    stor4[] = Array(len=arg2.length, data=arg2[all])
    stor5[] = Array(len=arg3.length, data=arg3[all])
    stor6[] = Array(len=arg4.length, data=arg4[all])
    stor8 = arg5
    stor9 = 1
}



}
