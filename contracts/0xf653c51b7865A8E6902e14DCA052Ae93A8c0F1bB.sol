contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor8;
uint8 stor11;

function _fallback() payable {
    stor8 = code.data[3441 len 32]
    stor0 = code.data[3409 len 32]
    stor2 = code.data[3473 len 32]
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor11 = 1
    return code.data[233 len 3176]
}



// =====================  Runtime code  =====================


address stor0;
address owner;
address refereeAddress;
uint256 etherValue;
uint256 sub_1f08314b;
uint256 startDate;
uint256 sub_16dcf617;
uint256 ethRaised;
uint256 goal;
array of address stor9;
mapping of struct sub_d24f8cdd;
uint8 stor11;

function startDate() payable {
    return startDate
}

function sub_16dcf617(?) payable {
    return sub_16dcf617
}

function sub_1f08314b(?) payable {
    return sub_1f08314b
}

function referee() payable {
    return refereeAddress
}

function goal() payable {
    return goal
}

function owner() payable {
    return owner
}

function sub_d24f8cdd(?) payable {
    return sub_d24f8cdd[arg1].field_0, sub_d24f8cdd[arg1].field_256
}

function etherValue() payable {
    return etherValue
}

function ethRaised() payable {
    return ethRaised
}

function kill() payable {
    require msg.sender == owner
    call stor0.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call stor0.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, ext_call.return_data[0]
    selfdestruct(owner)
}

function endPreSale() payable {
    require msg.sender == owner
    require block.timestamp <= startDate
    stor11 = 0
}

function setDate(uint256 arg1) payable {
    require msg.sender == owner
    require block.timestamp <= startDate
    startDate = arg1
}

function checkDate() payable {
    if startDate < block.timestamp:
        if startDate + (720 * 24 * 3600) >= block.timestamp:
            stor11 = 1
        else:
            stor11 = 0
}

function sub_e26d1474(?) payable {
    require msg.sender == owner
    etherValue = arg1
    if block.timestamp <= startDate:
        sub_1f08314b = 7000
    else:
        sub_1f08314b = (-34 * block.timestamp - startDate / 24 * 3600) + 5000
}

function sub_3e9f83a5(?) payable {
    require block.timestamp >= startDate + (720 * 24 * 3600)
    require sub_16dcf617 < goal
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
           value sub_d24f8cdd[address(stor9[idx])].field_256 * 10^18 * msg.value / ethRaised / 10^18 wei
             gas 0 wei
        idx = idx + 1
        s = address(stor9[idx])
        continue 
}

function giveFor(address arg1) payable {
    require stor11
    call stor0.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg1), msg.value * etherValue * sub_1f08314b / 100 * 10^18
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
    sub_d24f8cdd[address(arg1)].field_0 += msg.value * etherValue * sub_1f08314b / 100 * 10^18
    sub_d24f8cdd[address(arg1)].field_256 += msg.value
    sub_16dcf617 += msg.value * etherValue / 10^18
    ethRaised += msg.value
    call owner with:
       value msg.value / 3 wei
         gas 0 wei
    call refereeAddress with:
       value msg.value - (msg.value / 3) wei
         gas 0 wei
    emit Gave(arg1);
}

function _fallback() payable {
    require stor11
    call stor0.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, msg.value * etherValue * sub_1f08314b / 100 * 10^18
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
    sub_d24f8cdd[address(msg.sender)].field_0 += msg.value * etherValue * sub_1f08314b / 100 * 10^18
    sub_d24f8cdd[address(msg.sender)].field_256 += msg.value
    sub_16dcf617 += msg.value * etherValue / 10^18
    ethRaised += msg.value
    call owner with:
       value msg.value / 3 wei
         gas 0 wei
    call refereeAddress with:
       value msg.value - (msg.value / 3) wei
         gas 0 wei
    emit Gave(msg.sender);
}



}
