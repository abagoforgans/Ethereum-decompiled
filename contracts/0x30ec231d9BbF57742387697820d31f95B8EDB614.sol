contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    mem[96 len -2671] = code.data[3108 len -2671]
    mem[64] = -2575
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    mem[-2575 len 503] = code.data[437 len 503]
    create contract with 0 wei
                    code: code.data[437 len 503]
    stor1 = create.new_address or Mask(96, 160, stor1)
    stor2 = mem[192]
    call mem[172 len 20].0xdce9a3fb with:
         gas gas_remaining - 25050 wei
        args mem[96]
    require ext_call.success
    require address(stor0) == msg.sender
    stor3 = block.number
    mem[-2543] = mem[mem[128] + 96]
    _12 = mem[mem[128] + 96]
    mem[-2511 len mem[mem[128] + 96]] = mem[mem[128] + 128 len mem[mem[128] + 96]]
    if not _12 % 32:
        emit 0x36fa7d5e: 32, mem[-2543 len _12 + 32]
    else:
        mem[floor32(_12) - 2511] = mem[floor32(_12) + -(_12 % 32) - 2479 len _12 % 32]
        emit 0x36fa7d5e: 32, mem[-2543 len floor32(_12) + 64]
    return code.data[940 len 2168]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 467]
}



}
