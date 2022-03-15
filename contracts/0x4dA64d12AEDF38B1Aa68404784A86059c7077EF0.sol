contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint32 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    stor2 = block.timestamp
    stor3 = block.timestamp
    stor8 = 0
    stor9 = 0
    stor7 = 0
    stor4 = 10^17
    stor5 = 60
    stor6 = 5
    return code.data[109 len 1258]
}



// =====================  Runtime code  =====================


address stor0;
address sub_71a2ee52Address;
uint256 stor1;
uint256 stor2;
uint256 startTime;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 started;
uint8 sub_6c66cbb9; offset 8
uint8 sub_ecff250f; offset 16
uint256 stor7; offset 16
uint256 stor7; offset 8
uint256 stor8;
uint8 stor9;

function started() payable {
    return started
}

function sub_6c66cbb9(?) payable {
    return sub_6c66cbb9
}

function sub_71a2ee52(?) payable {
    return address(sub_71a2ee52Address)
}

function startTime() payable {
    return startTime
}

function sub_ecff250f(?) payable {
    return sub_ecff250f
}

function sub_1fc3a9a7(?) payable {
    if stor9:
        return (stor6 * stor8 / 100)
    return (stor6 * eth.balance(this.address) / 100)
}

function getRemainingTime() payable {
    if not started:
        return stor5
    if block.timestamp >= stor5 + stor2:
        return 0
    return (stor2 + stor5 - block.timestamp)
}

function finished() payable {
    if not started:
        return (0 == stor5)
    if block.timestamp >= stor5 + stor2:
        return 1
    return (0 == stor2 + stor5 - block.timestamp)
}

function sub_cbb68369(?) payable {
    if stor9:
        return ((100 * stor8) - (stor6 * stor8) / 100)
    return ((100 * eth.balance(this.address)) - (stor6 * eth.balance(this.address)) / 100)
}

function elapsedTime() payable {
    if not started:
        return 0
    if block.timestamp < stor5 + stor2:
        if stor2 + stor5 - block.timestamp != 0:
            return (block.timestamp - startTime)
    return (stor2 - startTime)
}

function sub_62287c31(?) payable {
    if address(sub_71a2ee52Address) != arg1:
        return (address(sub_71a2ee52Address) == arg1)
    call this.address.0xefb98bcf with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return (0 == ext_call.return_data[0])
}

function sub_32983c9e(?) payable {
    call this.address.0xefb98bcf with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[0]:
        if not sub_ecff250f:
            if msg.sender == stor0:
                if not stor9:
                    stor8 = eth.balance(this.address)
                    stor9 = 1
                call msg.sender with:
                   value stor6 * stor8 / 100 wei
                     gas 0 wei
                Mask(240, 0, stor7.field_16) = Mask(240, 0, ext_call.success)
}

function claimWinner() payable {
    call this.address.0xefb98bcf with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[0]:
        if not sub_6c66cbb9:
            if msg.sender == address(sub_71a2ee52Address):
                if not stor9:
                    stor8 = eth.balance(this.address)
                    stor9 = 1
                call msg.sender with:
                   value (100 * stor8) - (stor6 * stor8) / 100 wei
                     gas 0 wei
                Mask(248, 0, stor7.field_8) = Mask(248, 0, ext_call.success)
}

function _fallback() payable {
    if msg.sender == stor0:
        if started:
            if not started:
                if stor5 != 0:
                    if msg.value >= stor4:
                        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                        stor2 = block.timestamp
            else:
                if block.timestamp < stor5 + stor2:
                    if stor2 + stor5 - block.timestamp != 0:
                        if msg.value >= stor4:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            stor2 = block.timestamp
    else:
        if started:
            if not started:
                if stor5 != 0:
                    if msg.value >= stor4:
                        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                        stor2 = block.timestamp
            else:
                if block.timestamp < stor5 + stor2:
                    if stor2 + stor5 - block.timestamp != 0:
                        if msg.value >= stor4:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            stor2 = block.timestamp
        else:
            if msg.value >= stor4:
                started = 1
                stor2 = block.timestamp
                startTime = block.timestamp
            if started:
                if not started:
                    if stor5 != 0:
                        if msg.value >= stor4:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            stor2 = block.timestamp
                else:
                    if block.timestamp < stor5 + stor2:
                        if stor2 + stor5 - block.timestamp != 0:
                            if msg.value >= stor4:
                                uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                                stor2 = block.timestamp
}



}
