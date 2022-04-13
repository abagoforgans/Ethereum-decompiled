contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 529]




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function createGrant(bytes32 arg1) payable {
    require not stor0[arg1]
    require not stor1[arg1]
    require msg.value > 0
    stor0[arg1] = msg.value
    emit LogGrantCreated(arg1, msg.value);
}

function claimGrant(bytes32 arg1) {
    require not stor1[arg1]
    stor1[arg1] = 1
    require stor0[arg1] > 0
    call msg.sender with:
       value stor0[arg1] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogGrantClaimed(sha3(arg1), stor0[arg1]);
}



}
