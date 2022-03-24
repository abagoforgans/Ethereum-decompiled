contract main {


// =======================  Init code  ======================


uint256 stor4;
address stor5;

function _fallback() payable {
    stor5 = 0xe8e506306ddb78ee38c9b0d86c257bd97c2536b3
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[74 len 663]
}



// =====================  Runtime code  =====================


uint256 numcalls;
uint256 numcallsinternal;
uint256 numfails;
uint256 numsuccesses;
address stor4;
address stor5;

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
  stop
}

function doCall(uint256 arg1) payable {
    require stor4 == msg.sender
    numcalls++
    call this.address.0x9c6034a7 with:
         gas arg1 wei
    require ext_call.success
    if ext_call.return_data[0]:
        numsuccesses++
    else:
        numfails++
    emit logCall(numcalls, numfails, numsuccesses);
}

function sendIfNotForked() payable {
    require msg.sender == this.address
    numcallsinternal++
    if eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) < 3000000 * 10^18:
        call stor4 with:
           value 42 wei
             gas 0 wei
    call stor5.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require not ext_call.return_data[0]
    return 1
}



}
