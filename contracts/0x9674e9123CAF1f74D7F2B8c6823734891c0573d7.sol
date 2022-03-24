contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;

function _fallback() payable {
    stor3 = 0xe8e506306ddb78ee38c9b0d86c257bd97c2536b3
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[74 len 594]
}



// =====================  Runtime code  =====================


uint256 numcalls;
uint256 numcallsinternal;
address stor2;
address stor3;

function numcalls() payable {
    return numcalls
}

function numcallsinternal() payable {
    return numcallsinternal
}

function selfDestruct() payable {
    require stor2 == msg.sender
    selfdestruct(stor2)
}

function _fallback() payable {
    revert 
}

function doCall(uint256 arg1) payable {
    require stor2 == msg.sender
    numcalls++
    call this.address.0x9c6034a7 with:
         gas arg1 wei
    require ext_call.success
    emit logCall(numcalls, numcallsinternal);
}

function sendIfNotForked() payable {
    require msg.sender == this.address
    numcallsinternal++
    if eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) < 3000000 * 10^18:
        call stor2 with:
           value 42 wei
             gas 0 wei
    call stor3.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require not ext_call.return_data[0]
    return 1
}



}
