contract main {


// =======================  Init code  ======================


uint256 stor4;

function _fallback() payable {
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[36 len 526]
}



// =====================  Runtime code  =====================


uint256 numcalls;
uint256 numcallsinternal;
uint256 numfails;
uint256 numsuccesses;
address stor4;

function numsuccesses() payable {
    return numsuccesses
}

function numfails() payable {
    return numfails
}

function numcalls() payable {
    return numcalls
}

function numcallsinternal() payable {
    return numcallsinternal
}

function selfDestruct() payable {
    require msg.sender == stor4
    selfdestruct(stor4)
}

function _fallback() payable {
    revert 
}

function failSend() payable {
    require msg.sender == this.address
    numcallsinternal++
    call stor4 with:
       value 42 wei
         gas 0 wei
    revert 
}

function doCall(uint256 arg1) payable {
    require stor4 == msg.sender
    numcalls++
    call this.address with:
       funct Mask(32, 224, sha3('failSend()')) >> 224
         gas arg1 wei
    if not ext_call.success:
        numfails++
    else:
        numsuccesses++
    emit logCall(numcalls, numcallsinternal);
}



}
