contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor6 = 15
    stor5 = 5
    stor0 = block.timestamp
    stor1 = block.timestamp + 900
    stor2 = 5 * 10^18
    stor3 = 0x64108822c128d11b6956754056ec4bcbe0b0cdaf
    require stor1 >= stor0
    require stor3
    return code.data[142 len 480]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;

function hasEnded() {
    return (block.timestamp > stor1)
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= stor0
    require block.timestamp <= stor1
    require msg.value != 0
    require stor4 < stor2
    require block.timestamp <= stor1
    require msg.value + stor4 >= stor4
    stor4 += msg.value
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= stor0
    require block.timestamp <= stor1
    require msg.value != 0
    require stor4 < stor2
    require block.timestamp <= stor1
    require msg.value + stor4 >= stor4
    stor4 += msg.value
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
