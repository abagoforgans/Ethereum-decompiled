contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor8;
uint8 stor11;

function _fallback() payable {
    stor8 = code.data[2822 len 32]
    stor0 = code.data[2790 len 32]
    stor2 = code.data[2854 len 32]
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor11 = 1
    return code.data[233 len 2557]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
array of address stor9;
mapping of struct sub_d24f8cdd;
uint8 stor11;

function sub_d24f8cdd(?) payable {
    return sub_d24f8cdd[arg1].field_0, sub_d24f8cdd[arg1].field_256
}

function kill() payable {
    require msg.sender == stor1
    call stor0.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call stor0.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, ext_call.return_data[0]
    selfdestruct(stor1)
}

function endPreSale() payable {
    require msg.sender == stor1
    require block.timestamp <= stor5
    stor11 = 0
}

function setDate(uint256 arg1) payable {
    require msg.sender == stor1
    require block.timestamp <= stor5
    stor5 = arg1
}

function checkDate() payable {
    if stor5 < block.timestamp:
        if stor5 + (720 * 24 * 3600) >= block.timestamp:
            stor11 = 1
        else:
            stor11 = 0
}

function sub_e26d1474(?) payable {
    require msg.sender == stor1
    stor3 = arg1
    if block.timestamp <= stor5:
        stor4 = 7000
    else:
        stor4 = (-34 * block.timestamp - stor5 / 24 * 3600) + 5000
}

function sub_3e9f83a5(?) payable {
    require block.timestamp >= stor5 + (720 * 24 * 3600)
    require stor6 < stor8
    s = 0
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        s = address(stor9[idx])
        idx = idx + 1
        continue 
}

function refund() payable {
    idx = 0
    s = 0
    while idx < stor9.length:
        mem[0] = address(stor9[idx])
        mem[32] = 10
        call address(stor9[idx]) with:
           value sub_d24f8cdd[address(stor9[idx])].field_256 * 10^18 * msg.value / stor7 / 10^18 wei
             gas 0 wei
        idx = idx + 1
        s = address(stor9[idx])
        continue 
}

function giveFor(address arg1) payable {
    require stor11
    call stor0.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg1), msg.value * stor3 * stor4 / 100 * 10^18
    require ext_call.success
    if not sub_d24f8cdd[address(arg1)].field_0:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        require stor9.length < stor9.length
        uint256(stor9[stor9.length]) = arg1 or Mask(96, 160, uint256(stor9[stor9.length]))
    sub_d24f8cdd[address(arg1)].field_0 += msg.value * stor3 * stor4 / 100 * 10^18
    sub_d24f8cdd[address(arg1)].field_256 += msg.value
    stor6 += msg.value * stor3 / 10^18
    stor7 += msg.value
    call stor1 with:
       value msg.value / 3 wei
         gas 0 wei
    call stor2 with:
       value msg.value - (msg.value / 3) wei
         gas 0 wei
}

function _fallback() payable {
    require stor11
    call stor0.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, msg.value * stor3 * stor4 / 100 * 10^18
    require ext_call.success
    if not sub_d24f8cdd[address(msg.sender)].field_0:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        require stor9.length < stor9.length
        uint256(stor9[stor9.length]) = msg.sender or Mask(96, 160, uint256(stor9[stor9.length]))
    sub_d24f8cdd[address(msg.sender)].field_0 += msg.value * stor3 * stor4 / 100 * 10^18
    sub_d24f8cdd[address(msg.sender)].field_256 += msg.value
    stor6 += msg.value * stor3 / 10^18
    stor7 += msg.value
    call stor1 with:
       value msg.value / 3 wei
         gas 0 wei
    call stor2 with:
       value msg.value - (msg.value / 3) wei
         gas 0 wei
}



}
