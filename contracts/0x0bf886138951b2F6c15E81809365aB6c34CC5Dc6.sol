contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
address stor2;
address stor2; offset 8
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9; offset 8
uint16 stor9;
mapping of uint256 stor10;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 13
    stor0.length.field_8 = 'Trading Token' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'TTK' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor2.field_0) = 8
    require 300 * 10^6 * 10^uint8(stor2.field_0) / 300 * 10^6 == 10^uint8(stor2.field_0)
    stor6 = 300 * 10^6 * 10^uint8(stor2.field_0)
    require 700 * 10^6 * 10^uint8(stor2.field_0) / 700 * 10^6 == 10^uint8(stor2.field_0)
    stor7 = 700 * 10^6 * 10^uint8(stor2.field_0)
    stor8 = 0
    uint16(stor9.field_0) = 0
    require not msg.value
    address(stor2.field_8) = msg.sender
    stor3 = code.data[4266 len 20]
    require address(stor2.field_8) == msg.sender
    require not uint8(stor9.field_8)
    stor12 = code.data[4286 len 32]
    stor13 = code.data[4286 len 32] + (60 * 168 * 24 * 3600 * code.data[4318 len 32] / 60)
    stor4 = stor7 + stor6
    stor5 = stor7 + stor6
    stor10[address(stor2.field_0)] = stor7 + stor6
    return code.data[810 len 3444]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor2;
address ownerAddress; offset 8
address sub_a77ccd6eAddress;
uint256 initialTotalSupply;
uint256 currentTotalSupply;
uint256 sub_2ff51549;
uint256 sub_ee238a2e;
uint256 sub_12169940;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 startDate;
uint256 endDate;

function name() {
    return name[0 len name.length]
}

function startDate() {
    return startDate
}

function sub_12169940(?) {
    return sub_12169940
}

function sub_291b4a55(?) {
    return bool(uint8(stor9.field_8))
}

function sub_2ff51549(?) {
    return sub_2ff51549
}

function initialTotalSupply() {
    return initialTotalSupply
}

function decimals() {
    return decimals
}

function currentTotalSupply() {
    return currentTotalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function ownerAddress() {
    return ownerAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a77ccd6e(?) {
    return sub_a77ccd6eAddress
}

function endDate() {
    return endDate
}

function isBurned() {
    return bool(uint8(stor9.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_ee238a2e(?) {
    return sub_ee238a2e
}

function approve(address arg1, uint256 arg2) {
    require arg2 >= 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function sub_4cd57251(?) {
    require ownerAddress == msg.sender
    require not uint8(stor9.field_8)
    startDate = arg1
    endDate = arg1 + (60 * arg2)
}

function burn() {
    require ownerAddress == msg.sender
    require balanceOf[address(msg.sender)] > sub_2ff51549
    if block.timestamp <= endDate:
        require uint8(stor9.field_8)
    require not uint8(stor9.field_0)
    require sub_2ff51549 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = sub_2ff51549
    require balanceOf[address(msg.sender)] - sub_2ff51549 <= currentTotalSupply
    currentTotalSupply = currentTotalSupply - balanceOf[address(msg.sender)] + sub_2ff51549
    emit Burn((balanceOf[address(msg.sender)] - sub_2ff51549), msg.sender);
    uint8(stor9.field_0) = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    require arg3 + balanceOf[address(arg2)] > balanceOf[address(arg2)]
    require balanceOf[arg2] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[arg2] + balanceOf[address(arg1)] >= balanceOf[arg2]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[arg2] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[arg2] + balanceOf[address(arg1)] >= balanceOf[arg2]
    require balanceOf[arg2] + balanceOf[address(arg1)] == balanceOf[arg2] + balanceOf[address(arg1)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= endDate:
        require uint8(stor9.field_8)
    if ownerAddress != msg.sender:
        require arg1
        require balanceOf[address(msg.sender)] >= arg2
        if arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
            if arg2 + balanceOf[address(arg1)] >= arg2:
                require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
                if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                    if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[arg1]:
                        if arg2 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] >= balanceOf[arg1]:
                                if arg2 + balanceOf[arg1] >= arg2:
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                    if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                                        if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[arg1]:
                                            if balanceOf[arg1] + balanceOf[address(msg.sender)] == balanceOf[arg1] + balanceOf[address(msg.sender)]:
    else:
        if block.timestamp > endDate + (8760 * 24 * 3600):
            require arg1
            require balanceOf[address(msg.sender)] >= arg2
            if arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                if arg2 + balanceOf[address(arg1)] >= arg2:
                    require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
                    if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                        if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[arg1]:
                            if arg2 <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] >= balanceOf[arg1]:
                                    if arg2 + balanceOf[arg1] >= arg2:
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                        if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                                            if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[arg1]:
                                                if balanceOf[arg1] + balanceOf[address(msg.sender)] == balanceOf[arg1] + balanceOf[address(msg.sender)]:
        else:
            if 150 * 10^6 * 10^decimals / 150 * 10^6 == 10^decimals:
                if arg2 <= balanceOf[address(msg.sender)]:
                    require balanceOf[address(msg.sender)] - arg2 >= 150 * 10^6 * 10^decimals
                    require arg1
                    require balanceOf[address(msg.sender)] >= arg2
                    if arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                        if arg2 + balanceOf[address(arg1)] >= arg2:
                            require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
                            if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                                if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[arg1]:
                                    if arg2 <= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] >= balanceOf[arg1]:
                                            if arg2 + balanceOf[arg1] >= arg2:
                                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                emit Transfer(arg2, msg.sender, arg1);
                                                if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                                                    if balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[arg1]:
                                                        if balanceOf[arg1] + balanceOf[address(msg.sender)] == balanceOf[arg1] + balanceOf[address(msg.sender)]:
    revert
}

function _fallback() payable {
    require block.timestamp > startDate
    require block.timestamp < endDate
    require msg.value >= 3 * 10^17
    require sub_12169940 <= sub_ee238a2e
    if block.timestamp < startDate + (168 * 24 * 3600):
        require msg.value / 500000 <= sub_ee238a2e - sub_12169940
        require not uint8(stor9.field_8)
        require not uint8(stor9.field_0)
        call sub_a77ccd6eAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.sender
        require balanceOf[stor2] >= msg.value / 500000
        require (msg.value / 500000) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require (msg.value / 500000) + balanceOf[address(msg.sender)] >= msg.value / 500000
        require (msg.value / 500000) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
        require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[stor2]
        require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[msg.sender]
        require msg.value / 500000 <= balanceOf[stor2]
        balanceOf[stor2] -= msg.value / 500000
        require (msg.value / 500000) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        require (msg.value / 500000) + balanceOf[msg.sender] >= msg.value / 500000
        balanceOf[address(msg.sender)] = (msg.value / 500000) + balanceOf[msg.sender]
        emit Transfer((msg.value / 500000), ownerAddress, msg.sender);
        require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[stor2]
        require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[msg.sender]
        require balanceOf[msg.sender] + balanceOf[stor2] == balanceOf[msg.sender] + balanceOf[stor2]
        sub_12169940 += msg.value / 500000
        Mask(248, 0, stor9.field_8) = Mask(248, 0, (msg.value / 500000) + sub_12169940 >= sub_ee238a2e)
    else:
        if block.timestamp >= startDate + (336 * 24 * 3600):
            require msg.value / 10^6 <= sub_ee238a2e - sub_12169940
            require not uint8(stor9.field_8)
            require not uint8(stor9.field_0)
            call sub_a77ccd6eAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.sender
            require balanceOf[stor2] >= msg.value / 10^6
            require (msg.value / 10^6) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require (msg.value / 10^6) + balanceOf[address(msg.sender)] >= msg.value / 10^6
            require (msg.value / 10^6) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
            require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[stor2]
            require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[msg.sender]
            require msg.value / 10^6 <= balanceOf[stor2]
            balanceOf[stor2] -= msg.value / 10^6
            require (msg.value / 10^6) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            require (msg.value / 10^6) + balanceOf[msg.sender] >= msg.value / 10^6
            balanceOf[address(msg.sender)] = (msg.value / 10^6) + balanceOf[msg.sender]
            emit Transfer((msg.value / 10^6), ownerAddress, msg.sender);
            require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[stor2]
            require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[msg.sender]
            require balanceOf[msg.sender] + balanceOf[stor2] == balanceOf[msg.sender] + balanceOf[stor2]
            sub_12169940 += msg.value / 10^6
            Mask(248, 0, stor9.field_8) = Mask(248, 0, (msg.value / 10^6) + sub_12169940 >= sub_ee238a2e)
        else:
            require msg.value / 666666 <= sub_ee238a2e - sub_12169940
            require not uint8(stor9.field_8)
            require not uint8(stor9.field_0)
            call sub_a77ccd6eAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.sender
            require balanceOf[stor2] >= msg.value / 666666
            require (msg.value / 666666) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require (msg.value / 666666) + balanceOf[address(msg.sender)] >= msg.value / 666666
            require (msg.value / 666666) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
            require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[stor2]
            require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[msg.sender]
            require msg.value / 666666 <= balanceOf[stor2]
            balanceOf[stor2] -= msg.value / 666666
            require (msg.value / 666666) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            require (msg.value / 666666) + balanceOf[msg.sender] >= msg.value / 666666
            balanceOf[address(msg.sender)] = (msg.value / 666666) + balanceOf[msg.sender]
            emit Transfer((msg.value / 666666), ownerAddress, msg.sender);
            require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[stor2]
            require balanceOf[msg.sender] + balanceOf[stor2] >= balanceOf[msg.sender]
            require balanceOf[msg.sender] + balanceOf[stor2] == balanceOf[msg.sender] + balanceOf[stor2]
            sub_12169940 += msg.value / 666666
            Mask(248, 0, stor9.field_8) = Mask(248, 0, (msg.value / 666666) + sub_12169940 >= sub_ee238a2e)
}



}
