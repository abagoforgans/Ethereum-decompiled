contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[219 len 32]
    return code.data[57 len 162]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}

function revive(uint256 arg1) payable {
    call -stor1 + test266151307() with:
       value 1 wei
         gas 0 wei
    s = stor1
    idx = arg1
    while idx - 1:
        call -s + test266151307() with:
           value 1 wei
             gas 0 wei
        s = s + 1
        idx = idx - 1
        continue 
    stor1 += arg1
}



}
