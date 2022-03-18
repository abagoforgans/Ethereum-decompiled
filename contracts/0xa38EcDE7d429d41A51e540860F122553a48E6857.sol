contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    mem[96 len -3691] = code.data[4128 len -3691]
    mem[64] = -3595
    _2 = mem[96]
    _4 = mem[160]
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    mem[-3595 len 503] = code.data[437 len 503]
    create contract with 0 wei
                    code: code.data[437 len 503]
    stor1 = create.new_address or Mask(96, 160, stor1)
    stor2 = mem[192]
    require address(stor0) == msg.sender
    stor3 = block.number
    mem[-3563] = mem[mem[128] + 96]
    _10 = mem[mem[128] + 96]
    mem[-3531 len mem[mem[128] + 96]] = mem[mem[128] + 128 len mem[mem[128] + 96]]
    if not _10 % 32:
        emit 0x36fa7d5e: 32, mem[-3563 len _10 + 32]
    else:
        mem[floor32(_10) - 3531] = mem[floor32(_10) + -(_10 % 32) - 3499 len _10 % 32]
        emit 0x36fa7d5e: 32, mem[-3563 len floor32(_10) + 64]
    call address(_4).0xdce9a3fb with:
         gas gas_remaining - 25050 wei
        args _2
    require ext_call.success
    return code.data[940 len 3188]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 467]
}



}
