contract main {


// =======================  Init code  ======================


address stor5;
array of uint256 stor7;

function _fallback() {
    stor5 = msg.sender
    mem[128] = 0xfd94fa71bc0ba10d39d464d0d8f465efeef0a2764e3887fcc9df41ded20f505c
    stor7.length = 65
    s = 0
    idx = 128
    while 160 > idx:
        stor7[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor7.length + 31 / 32 > idx:
        stor7[idx] = 0
        idx = idx + 1
        continue 
    return code.data[291 len 4320]
}



// =====================  Runtime code  =====================


#
#  - external_oraclize_randomDS_proofVerify(bytes arg1, bytes32 arg2, bytes arg3, string arg4)
#
mapping of uint256 stor3;
address owner;
mapping of uint8 stor6;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2) {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function setWhiteListed(address arg1, bool arg2) {
    require owner == msg.sender
    stor6[address(arg1)] = uint8(arg2)
}

function external_oraclize_randomDS_setCommitment(bytes32 arg1, bytes32 arg2) {
    require stor6[address(msg.sender)]
    stor3[arg1] = arg2
}



}
