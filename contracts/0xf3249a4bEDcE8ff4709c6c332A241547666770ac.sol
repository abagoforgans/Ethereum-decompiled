contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor9;

function _fallback() {
    mem[96 len -1766] = code.data[3073 len -1766]
    mem[64] = -1670
    stor0 = msg.sender
    stor1 = msg.sender
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor6[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor7[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    stor9 = 1
    return code.data[1307 len 1766]
}



// =====================  Runtime code  =====================


#
#  - p()
#
address stor0;
uint8 stor9;
mapping of uint8 stor10;

function sub_93bd5160(?) {
    return bool(stor10[arg1])
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function vote(string arg1) {
    if bool(stor9) == 1:
        if not stor10[address(msg.sender)]:
            stor10[address(msg.sender)] = 1
            return 0
        else:
            return 0
    else:
        return 0
}



}
