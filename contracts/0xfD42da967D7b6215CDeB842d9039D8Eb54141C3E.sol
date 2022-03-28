contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor21;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint8 stor27;
uint8 stor27; offset 8

function _fallback() payable {
    stor9 = 90
    stor10 = 20
    stor11 = 10
    stor12 = 1
    stor13 = 100
    stor24 = 100000
    stor25 = 10000
    stor26 = 10000
    uint8(stor27.field_0) = 0
    uint8(stor27.field_8) = 0
    require not msg.value
    stor17 = block.timestamp + 1800
    stor18 = stor17 + (19 * 3600)
    stor19 = stor18 + (2 * 3600)
    stor21 = block.timestamp + (8760 * 24 * 3600)
    stor1 = msg.sender
    stor0 = msg.sender
    stor2 = msg.sender
    return code.data[383 len 12192]
}



// =====================  Runtime code  =====================


address stor0;
address owner;
address stor2;
array of address stor3;
address stor4;
mapping of uint256 balanceOf;
mapping of uint256 checkDividends;
uint256 stor7;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 totalTokensMinted;
uint256 holdoverBalance;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 sub_69ab03e7;
uint8 stor23;
uint8 stor23; offset 8
uint256 stor23; offset 8
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint8 stor27;
uint8 settingsState; offset 8

function totalSupply() {
    return totalSupply
}

function checkDividends(address arg1) {
    return checkDividends[address(arg1)]
}

function settingsState() {
    require settingsState <= 2
    return settingsState
}

function sub_69ab03e7(?) {
    return sub_69ab03e7
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalTokensMinted() {
    return totalTokensMinted
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function holdoverBalance() {
    return holdoverBalance
}

function haraKiri() {
    require settingsState <= 2
    require not settingsState
    require msg.sender == owner
    selfdestruct(stor2)
}

function sub_a8245f5b(?) {
    return stor4, stor7
}

function getOpGas() {
    return stor24, stor26, stor25
}

function getNumTokensPurchased() {
    return (totalTokensMinted - sub_69ab03e7)
}

function sub_e05a0a34(?) {
    if arg1 != owner:
        return 0
    return stor2
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeFounder(address arg1) {
    require msg.sender == owner
    stor2 = arg1
}

function changeBeneficiary(address arg1) {
    require msg.sender == owner
    stor0 = arg1
}

function getBeneficiary(address arg1) {
    if arg1 != owner:
        return 0
    return stor0
}

function setOpGas(uint256 arg1, uint256 arg2, uint256 arg3) {
    stor24 = arg1
    stor26 = arg2
    stor25 = arg3
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function holderExists(address arg1) {
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if address(stor3[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getNumGames() {
    if not stor4:
        emit StatEvent(Array(len=12, data='Empty EG4NEU'));
        return 0
    require ext_code.size(stor4)
    call stor4.0x1123efd5 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4e715537(?) {
    if not stor4:
        emit StatEvent(Array(len=21, data='Empty Eg4neu_partner2'));
        return 0
    require ext_code.size(stor4)
    call stor4.0x1123efd5 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawDividends() {
    if not checkDividends[address(msg.sender)]:
        emit StatEvent(Array(len=12, data='Balance is 0'));
        return 0
    checkDividends[address(msg.sender)] = 0
    call msg.sender with:
       value checkDividends[address(msg.sender)] wei
         gas stor25 wei
    require ext_call.success
    emit StatEventI(Array(len=12, data='Rewards Paid'), checkDividends[address(msg.sender)]);
    return checkDividends[address(msg.sender)]
}

function getIcoInfo() {
    if not stor4:
        emit StatEvent(Array(len=12, data='Empty EG4NEU'));
        require stor27 <= 4
        return stor27, stor17, stor18, stor19, stor10, stor11, totalTokensMinted - sub_69ab03e7, 0, bool(uint8(stor23.field_8))
    require ext_code.size(stor4)
    call stor4.0x1123efd5 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require stor27 <= 4
    return stor27, 
           0,
           stor18,
           stor19,
           stor10,
           stor11,
           totalTokensMinted - sub_69ab03e7,
           ext_call.return_data[0],
           bool(uint8(stor23.field_8))
}

function sub_b7d08137(?) {
    if msg.sender == owner:
        if not stor4:
            stor4 = arg1
            stor7 = 0
            emit StatEventI(string rg1, uint256 rg2):
                            64,
                            0,
                            14,
                            'Fee Payer Set!',
        else:
            require settingsState <= 2
            if settingsState:
                emit StatEventI(string rg1, uint256 rg2):
                                64,
                                0,
                                21,
                                'Payer already exists!',
            else:
                stor4 = arg1
                stor7 = 0
                emit StatEventI(string rg1, uint256 rg2):
                                64,
                                0,
                                14,
                                'Fee Payer Set!',
}

function sub_883d0544(?) {
    if msg.sender == owner:
        require settingsState <= 2
        if settingsState != 2:
            require arg1 <= 2
            settingsState = arg1
            stor27 = 0
            if totalTokensMinted > 0:
                s = 0
                idx = 0
                while idx < stor3.length:
                    mem[0] = address(stor3[idx])
                    mem[32] = 5
                    if balanceOf[address(stor3[idx])] > 0:
                        balanceOf[stor2] = balanceOf[address(stor3[idx])]
                        require idx < stor3.length
                        mem[0] = address(stor3[idx])
                        mem[32] = 5
                        balanceOf[address(stor3[idx])] = 0
                    s = balanceOf[address(stor3[idx])]
                    idx = idx + 1
                    continue 
            totalTokensMinted = 0
            stor14 = 0
            stor4 = 0
            require arg1 <= 2
            if arg1:
                stor17 = block.timestamp + (72 * 24 * 3600)
                stor18 = stor17 + (1440 * 24 * 3600)
                stor19 = stor18 + (1440 * 24 * 3600)
                stor21 = block.timestamp + (8760 * 24 * 3600)
                stor13 = 10 * 10^18
                stor11 = 10000
                stor10 = 5000
            else:
                stor17 = block.timestamp + 1800
                stor18 = stor17 + (19 * 3600)
                stor19 = stor18 + (2 * 3600)
                stor21 = block.timestamp + (8760 * 24 * 3600)
                stor13 = 100
                stor11 = 10
                stor10 = 20
            totalSupply = 90
            if eth.balance(this.address) > 0:
                call owner with:
                   value eth.balance(this.address) wei
                     gas stor26 wei
                if not ext_call.success:
                    emit StatEvent(Array(len=38, data='ERROR - COULD NOT PAY BACK DEBUG', ' FUNDS'));
            emit StatEvent(Array(len=14, data='RESET COMPLETE'));
}

function icoCheckup() {
    if msg.sender == owner:
        if stor27 <= 4:
            if stor27 != 4:
            if not uint8(stor23.field_0):
                if block.timestamp >= stor21:
                    uint8(stor23.field_0) = 1
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        if address(stor3[idx]) != stor0:
                            idx = idx + 1
                            continue 
                        sub_69ab03e7 = totalTokensMinted / 10
                        totalTokensMinted += sub_69ab03e7
                        balanceOf[stor2] = sub_69ab03e7
                        if uint8(stor23.field_8):
                        Mask(248, 0, stor23.field_8) = 1
                        call stor2 with:
                           value stor14 wei
                             gas stor24 wei
                        require ext_call.success
                    stor3.length++
                    if not stor3.length <= stor3.length + 1:
                        idx = stor3.length + 1
                        while stor3.length > idx:
                            uint256(stor3[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor3[stor3.length]) = stor0
                    sub_69ab03e7 = totalTokensMinted / 10
                    totalTokensMinted += sub_69ab03e7
                    balanceOf[stor2] = sub_69ab03e7
            if uint8(stor23.field_8):
            Mask(248, 0, stor23.field_8) = 1
            call stor2 with:
               value stor14 wei
                 gas stor24 wei
            if ext_call.success:
    else:
        if msg.sender == stor2:
            if stor27 <= 4:
                if stor27 != 4:
                if not uint8(stor23.field_0):
                    if block.timestamp >= stor21:
                        uint8(stor23.field_0) = 1
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            if address(stor3[idx]) != stor0:
                                idx = idx + 1
                                continue 
                            sub_69ab03e7 = totalTokensMinted / 10
                            totalTokensMinted += sub_69ab03e7
                            balanceOf[stor2] = sub_69ab03e7
                            if uint8(stor23.field_8):
                            Mask(248, 0, stor23.field_8) = 1
                            call stor2 with:
                               value stor14 wei
                                 gas stor24 wei
                            require ext_call.success
                        stor3.length++
                        if not stor3.length <= stor3.length + 1:
                            idx = stor3.length + 1
                            while stor3.length > idx:
                                uint256(stor3[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor3[stor3.length]) = stor0
                        sub_69ab03e7 = totalTokensMinted / 10
                        totalTokensMinted += sub_69ab03e7
                        balanceOf[stor2] = sub_69ab03e7
                if uint8(stor23.field_8):
                Mask(248, 0, stor23.field_8) = 1
                call stor2 with:
                   value stor14 wei
                     gas stor24 wei
                if ext_call.success:
    revert 
}

function updateIcoStatus() {
    require stor27 <= 4
    if stor27 != 4:
        require stor27 <= 4
        if stor27 != 3:
            require stor27 <= 4
            if not stor27:
                if block.timestamp <= stor17:
                    if block.timestamp > stor18:
                        stor27 = 2
                else:
                    if block.timestamp > stor18:
                        stor27 = 2
                    else:
                        stor27 = 1
            else:
                if not stor4:
                    emit StatEvent(Array(len=21, data='Empty Eg4neu_partner2'));
                    if block.timestamp <= stor18:
                        if block.timestamp <= stor19:
                            if block.timestamp > stor18:
                                if totalTokensMinted - sub_69ab03e7 > stor10:
                                    if 0 > stor11:
                                        stor27 = 4
                        else:
                            if 0 < stor11:
                                stor27 = 3
                            else:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if 0 > stor11:
                                            stor27 = 4
                    else:
                        if totalTokensMinted - sub_69ab03e7 < stor10:
                            stor27 = 3
                        else:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if 0 > stor11:
                                            stor27 = 4
                            else:
                                if 0 < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if 0 > stor11:
                                                stor27 = 4
                    require stor27 <= 4
                    if stor27 == 1:
                        if 0 >= totalSupply:
                            stor27 = 2
                else:
                    require ext_code.size(stor4)
                    call stor4.0x1123efd5 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if block.timestamp <= stor18:
                        if block.timestamp <= stor19:
                            if block.timestamp > stor18:
                                if totalTokensMinted - sub_69ab03e7 > stor10:
                                    if ext_call.return_data[0] > stor11:
                                        stor27 = 4
                        else:
                            if ext_call.return_data[0] < stor11:
                                stor27 = 3
                            else:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if ext_call.return_data[0] > stor11:
                                            stor27 = 4
                    else:
                        if totalTokensMinted - sub_69ab03e7 < stor10:
                            stor27 = 3
                        else:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if ext_call.return_data[0] > stor11:
                                            stor27 = 4
                            else:
                                if ext_call.return_data[0] < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if ext_call.return_data[0] > stor11:
                                                stor27 = 4
                    require stor27 <= 4
                    if stor27 == 1:
                        if ext_call.return_data[0] >= totalSupply:
                            stor27 = 2
}

function requestRefund() {
    require stor27 <= 4
    require stor27 <= 4
    if stor27 != 4:
        if stor27 != 3:
            require stor27 <= 4
            if not stor27:
                if block.timestamp <= stor17:
                    if block.timestamp > stor18:
                        stor27 = 2
                else:
                    if block.timestamp > stor18:
                        stor27 = 2
                    else:
                        stor27 = 1
            else:
                if not stor4:
                    emit StatEvent(Array(len=21, data='Empty Eg4neu_partner2'));
                    if block.timestamp <= stor18:
                        if block.timestamp <= stor19:
                            if block.timestamp > stor18:
                                if totalTokensMinted - sub_69ab03e7 > stor10:
                                    if 0 > stor11:
                                        stor27 = 4
                        else:
                            if 0 < stor11:
                                stor27 = 3
                            else:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if 0 > stor11:
                                            stor27 = 4
                    else:
                        if totalTokensMinted - sub_69ab03e7 < stor10:
                            stor27 = 3
                        else:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if 0 > stor11:
                                            stor27 = 4
                            else:
                                if 0 < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if 0 > stor11:
                                                stor27 = 4
                    require stor27 <= 4
                    if stor27 == 1:
                        if 0 >= totalSupply:
                            stor27 = 2
                else:
                    require ext_code.size(stor4)
                    call stor4.0x1123efd5 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if block.timestamp <= stor18:
                        if block.timestamp <= stor19:
                            if block.timestamp > stor18:
                                if totalTokensMinted - sub_69ab03e7 > stor10:
                                    if ext_call.return_data[0] > stor11:
                                        stor27 = 4
                        else:
                            if ext_call.return_data[0] < stor11:
                                stor27 = 3
                            else:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if ext_call.return_data[0] > stor11:
                                            stor27 = 4
                    else:
                        if totalTokensMinted - sub_69ab03e7 < stor10:
                            stor27 = 3
                        else:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if ext_call.return_data[0] > stor11:
                                            stor27 = 4
                            else:
                                if ext_call.return_data[0] < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if ext_call.return_data[0] > stor11:
                                                stor27 = 4
                    require stor27 <= 4
                    if stor27 == 1:
                        if ext_call.return_data[0] >= totalSupply:
                            stor27 = 2
    if stor27 != 3:
        emit StatEvent(Array(len=15, data='No refunds due.'));
    else:
        if not balanceOf[address(msg.sender)]:
            emit StatEvent(Array(len=52, data='Balance is 0 or holder doesn't e', 'xist - No Refund Due'));
        else:
            balanceOf[stor2] = balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = 0
            call msg.sender with:
               value balanceOf[address(msg.sender)] * stor12 wei
                 gas stor26 wei
            require ext_call.success
            emit StatEvent(Array(len=27, data='Refund sent to Token Holder'));
}

function purchaseToken() payable {
    require stor27 <= 4
    require stor27 <= 4
    if stor27 == 4:
        require stor27 == 1
        require msg.value >= stor12
        require stor12
        require totalTokensMinted + (msg.value / stor12) <= totalSupply
        if totalTokensMinted + (msg.value / stor12) == totalSupply:
            stor27 = 2
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            if address(stor3[idx]) != msg.sender:
                idx = idx + 1
                continue 
            balanceOf[address(msg.sender)] += msg.value / stor12
            totalTokensMinted += msg.value / stor12
            stor14 += msg.value
            emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = stor3.length + 1
            while stor3.length > idx:
                uint256(stor3[idx]) = 0
                idx = idx + 1
                continue 
        address(stor3[stor3.length]) = msg.sender
        balanceOf[address(msg.sender)] += msg.value / stor12
        totalTokensMinted += msg.value / stor12
        stor14 += msg.value
        emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
    else:
        require stor27 <= 4
        if stor27 == 3:
            require stor27 == 1
            require msg.value >= stor12
            require stor12
            require totalTokensMinted + (msg.value / stor12) <= totalSupply
            if totalTokensMinted + (msg.value / stor12) == totalSupply:
                stor27 = 2
            idx = 0
            while idx < stor3.length:
                mem[0] = 3
                if address(stor3[idx]) != msg.sender:
                    idx = idx + 1
                    continue 
                balanceOf[address(msg.sender)] += msg.value / stor12
                totalTokensMinted += msg.value / stor12
                stor14 += msg.value
                emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = stor3.length + 1
                while stor3.length > idx:
                    uint256(stor3[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor3[stor3.length]) = msg.sender
            balanceOf[address(msg.sender)] += msg.value / stor12
            totalTokensMinted += msg.value / stor12
            stor14 += msg.value
            emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
        else:
            if not stor27:
                if block.timestamp <= stor17:
                    if block.timestamp > stor18:
                        stor27 = 2
                else:
                    if block.timestamp > stor18:
                        stor27 = 2
                    else:
                        stor27 = 1
                require stor27 <= 4
                require stor27 == 1
                require msg.value >= stor12
                require stor12
                require totalTokensMinted + (msg.value / stor12) <= totalSupply
                if totalTokensMinted + (msg.value / stor12) == totalSupply:
                    stor27 = 2
                idx = 0
                while idx < stor3.length:
                    mem[0] = 3
                    if address(stor3[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    balanceOf[address(msg.sender)] += msg.value / stor12
                    totalTokensMinted += msg.value / stor12
                    stor14 += msg.value
                    emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = stor3.length + 1
                    while stor3.length > idx:
                        uint256(stor3[idx]) = 0
                        idx = idx + 1
                        continue 
                address(stor3[stor3.length]) = msg.sender
                balanceOf[address(msg.sender)] += msg.value / stor12
                totalTokensMinted += msg.value / stor12
                stor14 += msg.value
                emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
            else:
                if not stor4:
                    emit StatEvent(Array(len=21, data='Empty Eg4neu_partner2'));
                    if block.timestamp <= stor18:
                        if block.timestamp <= stor19:
                            if block.timestamp > stor18:
                                if totalTokensMinted - sub_69ab03e7 > stor10:
                                    if 0 > stor11:
                                        stor27 = 4
                        else:
                            if 0 < stor11:
                                stor27 = 3
                            else:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if 0 > stor11:
                                            stor27 = 4
                    else:
                        if totalTokensMinted - sub_69ab03e7 < stor10:
                            stor27 = 3
                        else:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if 0 > stor11:
                                            stor27 = 4
                            else:
                                if 0 < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if 0 > stor11:
                                                stor27 = 4
                    require stor27 <= 4
                    if stor27 == 1:
                        if 0 >= totalSupply:
                            stor27 = 2
                    require stor27 <= 4
                    require stor27 == 1
                    require msg.value >= stor12
                    require stor12
                    require totalTokensMinted + (msg.value / stor12) <= totalSupply
                    if totalTokensMinted + (msg.value / stor12) == totalSupply:
                        stor27 = 2
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        if address(stor3[idx]) != msg.sender:
                            idx = idx + 1
                            continue 
                        balanceOf[address(msg.sender)] += msg.value / stor12
                        totalTokensMinted += msg.value / stor12
                        stor14 += msg.value
                        emit StatEventI(string rg1, uint256 rg2):
                                        Array(len=msg.value / stor12, data=16, 'Tokens Purchased'),
                    stor3.length++
                    if not stor3.length <= stor3.length + 1:
                        idx = stor3.length + 1
                        while stor3.length > idx:
                            uint256(stor3[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor3[stor3.length]) = msg.sender
                    balanceOf[address(msg.sender)] += msg.value / stor12
                    totalTokensMinted += msg.value / stor12
                    stor14 += msg.value
                    emit StatEventI(string rg1, uint256 rg2):
                                    Array(len=msg.value / stor12, data=16, 'Tokens Purchased'),
                else:
                    require ext_code.size(stor4)
                    call stor4.0x1123efd5 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if block.timestamp <= stor18:
                        if block.timestamp <= stor19:
                            if block.timestamp > stor18:
                                if totalTokensMinted - sub_69ab03e7 > stor10:
                                    if ext_call.return_data[0] > stor11:
                                        stor27 = 4
                        else:
                            if ext_call.return_data[0] < stor11:
                                stor27 = 3
                            else:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if ext_call.return_data[0] > stor11:
                                            stor27 = 4
                    else:
                        if totalTokensMinted - sub_69ab03e7 < stor10:
                            stor27 = 3
                        else:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if ext_call.return_data[0] > stor11:
                                            stor27 = 4
                            else:
                                if ext_call.return_data[0] < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if ext_call.return_data[0] > stor11:
                                                stor27 = 4
                    require stor27 <= 4
                    if stor27 == 1:
                        if ext_call.return_data[0] >= totalSupply:
                            stor27 = 2
                    require stor27 <= 4
                    require stor27 == 1
                    require msg.value >= stor12
                    require stor12
                    require totalTokensMinted + (msg.value / stor12) <= totalSupply
                    if totalTokensMinted + (msg.value / stor12) == totalSupply:
                        stor27 = 2
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        if address(stor3[idx]) != msg.sender:
                            idx = idx + 1
                            continue 
                        balanceOf[address(msg.sender)] += msg.value / stor12
                        totalTokensMinted += msg.value / stor12
                        stor14 += msg.value
                        emit StatEventI(string rg1, uint256 rg2):
                                        ext_call.return_data[0],
                                        msg.value / stor12,
                                        16,
                                        'Tokens Purchased',
                    stor3.length++
                    if not stor3.length <= stor3.length + 1:
                        idx = stor3.length + 1
                        while stor3.length > idx:
                            uint256(stor3[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor3[stor3.length]) = msg.sender
                    balanceOf[address(msg.sender)] += msg.value / stor12
                    totalTokensMinted += msg.value / stor12
                    stor14 += msg.value
                    emit StatEventI(string rg1, uint256 rg2):
                                    ext_call.return_data[0],
                                    msg.value / stor12,
                                    16,
                                    'Tokens Purchased',
}

function feePayment() payable {
    if stor4 != msg.sender:
        emit StatEvent(Array(len=34, data='Only fee payer calls this functi', 'on'));
    else:
        require stor27 <= 4
        if stor27 == 4:
            holdoverBalance += msg.value
            stor7 += msg.value
            emit StatEventI(Array(len=11, data='Fee Payment'), msg.value);
            if holdoverBalance > stor13:
                if block.timestamp > stor20 + (24 * 3600):
                    if totalTokensMinted:
                        if holdoverBalance:
                            stor20 = block.timestamp
                            require totalTokensMinted
                            idx = 0
                            s = 0
                            t = 0
                            while idx < stor3.length:
                                mem[0] = address(stor3[idx])
                                mem[32] = 5
                                if balanceOf[address(stor3[idx])] <= 0:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < stor3.length
                                mem[0] = address(stor3[idx])
                                mem[32] = 6
                                checkDividends[address(stor3[idx])] += holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                idx = idx + 1
                                s = s + (holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])])
                                t = holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                continue 
                            holdoverBalance -= s
                            emit StatEventI(Array(len=17, data='PER TOKEN PAYOUT:'), holdoverBalance / totalTokensMinted);
        else:
            require stor27 <= 4
            if stor27 == 3:
                holdoverBalance += msg.value
                stor7 += msg.value
                emit StatEventI(Array(len=11, data='Fee Payment'), msg.value);
                if holdoverBalance > stor13:
                    if block.timestamp > stor20 + (24 * 3600):
                        if totalTokensMinted:
                            if holdoverBalance:
                                stor20 = block.timestamp
                                require totalTokensMinted
                                idx = 0
                                s = 0
                                t = 0
                                while idx < stor3.length:
                                    mem[0] = address(stor3[idx])
                                    mem[32] = 5
                                    if balanceOf[address(stor3[idx])] <= 0:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < stor3.length
                                    mem[0] = address(stor3[idx])
                                    mem[32] = 6
                                    checkDividends[address(stor3[idx])] += holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                    idx = idx + 1
                                    s = s + (holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])])
                                    t = holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                    continue 
                                holdoverBalance -= s
                                emit StatEventI(Array(len=17, data='PER TOKEN PAYOUT:'), holdoverBalance / totalTokensMinted);
            else:
                require stor27 <= 4
                if not stor27:
                    if block.timestamp <= stor17:
                        if block.timestamp > stor18:
                            stor27 = 2
                    else:
                        if block.timestamp > stor18:
                            stor27 = 2
                        else:
                            stor27 = 1
                    holdoverBalance += msg.value
                    stor7 += msg.value
                    emit StatEventI(Array(len=11, data='Fee Payment'), msg.value);
                    if holdoverBalance > stor13:
                        if block.timestamp > stor20 + (24 * 3600):
                            if totalTokensMinted:
                                if holdoverBalance:
                                    stor20 = block.timestamp
                                    require totalTokensMinted
                                    idx = 0
                                    s = 0
                                    t = 0
                                    while idx < stor3.length:
                                        mem[0] = address(stor3[idx])
                                        mem[32] = 5
                                        if balanceOf[address(stor3[idx])] <= 0:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < stor3.length
                                        mem[0] = address(stor3[idx])
                                        mem[32] = 6
                                        checkDividends[address(stor3[idx])] += holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                        idx = idx + 1
                                        s = s + (holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])])
                                        t = holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                        continue 
                                    holdoverBalance -= s
                                    emit StatEventI(Array(len=17, data='PER TOKEN PAYOUT:'), holdoverBalance / totalTokensMinted);
                else:
                    if not stor4:
                        emit StatEvent(Array(len=21, data='Empty Eg4neu_partner2'));
                        if block.timestamp <= stor18:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if 0 > stor11:
                                            stor27 = 4
                            else:
                                if 0 < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if 0 > stor11:
                                                stor27 = 4
                        else:
                            if totalTokensMinted - sub_69ab03e7 < stor10:
                                stor27 = 3
                            else:
                                if block.timestamp <= stor19:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if 0 > stor11:
                                                stor27 = 4
                                else:
                                    if 0 < stor11:
                                        stor27 = 3
                                    else:
                                        if block.timestamp > stor18:
                                            if totalTokensMinted - sub_69ab03e7 > stor10:
                                                if 0 > stor11:
                                                    stor27 = 4
                        require stor27 <= 4
                        if stor27 == 1:
                            if 0 >= totalSupply:
                                stor27 = 2
                        holdoverBalance += msg.value
                        stor7 += msg.value
                        emit StatEventI(string rg1, uint256 rg2):
                                        Array(len=msg.value, data=11, 'Fee Payment'),
                        if holdoverBalance > stor13:
                            if block.timestamp > stor20 + (24 * 3600):
                                if totalTokensMinted:
                                    if holdoverBalance:
                                        stor20 = block.timestamp
                                        require totalTokensMinted
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while idx < stor3.length:
                                            mem[0] = address(stor3[idx])
                                            mem[32] = 5
                                            if balanceOf[address(stor3[idx])] <= 0:
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                continue 
                                            require idx < stor3.length
                                            mem[0] = address(stor3[idx])
                                            mem[32] = 6
                                            checkDividends[address(stor3[idx])] += holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                            idx = idx + 1
                                            s = s + (holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])])
                                            t = holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                            continue 
                                        holdoverBalance -= s
                                        emit StatEventI(string rg1, uint256 rg2):
                                                        Array(len=holdoverBalance / totalTokensMinted, data=17, 'PER TOKEN PAYOUT:'),
                    else:
                        require ext_code.size(stor4)
                        call stor4.0x1123efd5 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if block.timestamp <= stor18:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if ext_call.return_data[0] > stor11:
                                            stor27 = 4
                            else:
                                if ext_call.return_data[0] < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if ext_call.return_data[0] > stor11:
                                                stor27 = 4
                        else:
                            if totalTokensMinted - sub_69ab03e7 < stor10:
                                stor27 = 3
                            else:
                                if block.timestamp <= stor19:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if ext_call.return_data[0] > stor11:
                                                stor27 = 4
                                else:
                                    if ext_call.return_data[0] < stor11:
                                        stor27 = 3
                                    else:
                                        if block.timestamp > stor18:
                                            if totalTokensMinted - sub_69ab03e7 > stor10:
                                                if ext_call.return_data[0] > stor11:
                                                    stor27 = 4
                        require stor27 <= 4
                        if stor27 == 1:
                            if ext_call.return_data[0] >= totalSupply:
                                stor27 = 2
                        holdoverBalance += msg.value
                        stor7 += msg.value
                        emit StatEventI(string rg1, uint256 rg2):
                                        ext_call.return_data[0],
                                        msg.value,
                                        11,
                                        'Fee Payment',
                        if holdoverBalance > stor13:
                            if block.timestamp > stor20 + (24 * 3600):
                                if totalTokensMinted:
                                    if holdoverBalance:
                                        stor20 = block.timestamp
                                        require totalTokensMinted
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while idx < stor3.length:
                                            mem[0] = address(stor3[idx])
                                            mem[32] = 5
                                            if balanceOf[address(stor3[idx])] <= 0:
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                continue 
                                            require idx < stor3.length
                                            mem[0] = address(stor3[idx])
                                            mem[32] = 6
                                            checkDividends[address(stor3[idx])] += holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                            idx = idx + 1
                                            s = s + (holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])])
                                            t = holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                            continue 
                                        holdoverBalance -= s
                                        emit StatEventI(string rg1, uint256 rg2):
                                                        ext_call.return_data[0],
                                                        holdoverBalance / totalTokensMinted,
                                                        17,
                                                        'PER TOKEN PAYOUT:',
}

function _fallback() payable {
    require stor27 <= 4
    if msg.sender == stor4:
        if stor27 == 4:
            holdoverBalance += msg.value
            stor7 += msg.value
            emit StatEventI(Array(len=11, data='Fee Payment'), msg.value);
            if holdoverBalance > stor13:
                if block.timestamp > stor20 + (24 * 3600):
                    if totalTokensMinted:
                        if holdoverBalance:
                            stor20 = block.timestamp
                            require totalTokensMinted
                            idx = 0
                            s = 0
                            t = 0
                            while idx < stor3.length:
                                mem[0] = address(stor3[idx])
                                mem[32] = 5
                                if balanceOf[address(stor3[idx])] <= 0:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < stor3.length
                                mem[0] = address(stor3[idx])
                                mem[32] = 6
                                checkDividends[address(stor3[idx])] += holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                idx = idx + 1
                                s = s + (holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])])
                                t = holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                continue 
                            holdoverBalance -= s
                            emit StatEventI(Array(len=17, data='PER TOKEN PAYOUT:'), holdoverBalance / totalTokensMinted);
        else:
            require stor27 <= 4
            if stor27 == 3:
                holdoverBalance += msg.value
                stor7 += msg.value
                emit StatEventI(Array(len=11, data='Fee Payment'), msg.value);
                if holdoverBalance > stor13:
                    if block.timestamp > stor20 + (24 * 3600):
                        if totalTokensMinted:
                            if holdoverBalance:
                                stor20 = block.timestamp
                                require totalTokensMinted
                                idx = 0
                                s = 0
                                t = 0
                                while idx < stor3.length:
                                    mem[0] = address(stor3[idx])
                                    mem[32] = 5
                                    if balanceOf[address(stor3[idx])] <= 0:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < stor3.length
                                    mem[0] = address(stor3[idx])
                                    mem[32] = 6
                                    checkDividends[address(stor3[idx])] += holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                    idx = idx + 1
                                    s = s + (holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])])
                                    t = holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                    continue 
                                holdoverBalance -= s
                                emit StatEventI(Array(len=17, data='PER TOKEN PAYOUT:'), holdoverBalance / totalTokensMinted);
            else:
                require stor27 <= 4
                if not stor27:
                    if block.timestamp <= stor17:
                        if block.timestamp > stor18:
                            stor27 = 2
                    else:
                        if block.timestamp > stor18:
                            stor27 = 2
                        else:
                            stor27 = 1
                    holdoverBalance += msg.value
                    stor7 += msg.value
                    emit StatEventI(Array(len=11, data='Fee Payment'), msg.value);
                    if holdoverBalance > stor13:
                        if block.timestamp > stor20 + (24 * 3600):
                            if totalTokensMinted:
                                if holdoverBalance:
                                    stor20 = block.timestamp
                                    require totalTokensMinted
                                    idx = 0
                                    s = 0
                                    t = 0
                                    while idx < stor3.length:
                                        mem[0] = address(stor3[idx])
                                        mem[32] = 5
                                        if balanceOf[address(stor3[idx])] <= 0:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < stor3.length
                                        mem[0] = address(stor3[idx])
                                        mem[32] = 6
                                        checkDividends[address(stor3[idx])] += holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                        idx = idx + 1
                                        s = s + (holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])])
                                        t = holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                        continue 
                                    holdoverBalance -= s
                                    emit StatEventI(Array(len=17, data='PER TOKEN PAYOUT:'), holdoverBalance / totalTokensMinted);
                else:
                    if not stor4:
                        emit StatEvent(Array(len=21, data='Empty Eg4neu_partner2'));
                        if block.timestamp <= stor18:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if 0 > stor11:
                                            stor27 = 4
                            else:
                                if 0 < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if 0 > stor11:
                                                stor27 = 4
                        else:
                            if totalTokensMinted - sub_69ab03e7 < stor10:
                                stor27 = 3
                            else:
                                if block.timestamp <= stor19:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if 0 > stor11:
                                                stor27 = 4
                                else:
                                    if 0 < stor11:
                                        stor27 = 3
                                    else:
                                        if block.timestamp > stor18:
                                            if totalTokensMinted - sub_69ab03e7 > stor10:
                                                if 0 > stor11:
                                                    stor27 = 4
                        require stor27 <= 4
                        if stor27 == 1:
                            if 0 >= totalSupply:
                                stor27 = 2
                        holdoverBalance += msg.value
                        stor7 += msg.value
                        emit StatEventI(string rg1, uint256 rg2):
                                        Array(len=msg.value, data=11, 'Fee Payment'),
                        if holdoverBalance > stor13:
                            if block.timestamp > stor20 + (24 * 3600):
                                if totalTokensMinted:
                                    if holdoverBalance:
                                        stor20 = block.timestamp
                                        require totalTokensMinted
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while idx < stor3.length:
                                            mem[0] = address(stor3[idx])
                                            mem[32] = 5
                                            if balanceOf[address(stor3[idx])] <= 0:
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                continue 
                                            require idx < stor3.length
                                            mem[0] = address(stor3[idx])
                                            mem[32] = 6
                                            checkDividends[address(stor3[idx])] += holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                            idx = idx + 1
                                            s = s + (holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])])
                                            t = holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                            continue 
                                        holdoverBalance -= s
                                        emit StatEventI(string rg1, uint256 rg2):
                                                        Array(len=holdoverBalance / totalTokensMinted, data=17, 'PER TOKEN PAYOUT:'),
                    else:
                        require ext_code.size(stor4)
                        call stor4.0x1123efd5 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if block.timestamp <= stor18:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if ext_call.return_data[0] > stor11:
                                            stor27 = 4
                            else:
                                if ext_call.return_data[0] < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if ext_call.return_data[0] > stor11:
                                                stor27 = 4
                        else:
                            if totalTokensMinted - sub_69ab03e7 < stor10:
                                stor27 = 3
                            else:
                                if block.timestamp <= stor19:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if ext_call.return_data[0] > stor11:
                                                stor27 = 4
                                else:
                                    if ext_call.return_data[0] < stor11:
                                        stor27 = 3
                                    else:
                                        if block.timestamp > stor18:
                                            if totalTokensMinted - sub_69ab03e7 > stor10:
                                                if ext_call.return_data[0] > stor11:
                                                    stor27 = 4
                        require stor27 <= 4
                        if stor27 == 1:
                            if ext_call.return_data[0] >= totalSupply:
                                stor27 = 2
                        holdoverBalance += msg.value
                        stor7 += msg.value
                        emit StatEventI(string rg1, uint256 rg2):
                                        ext_call.return_data[0],
                                        msg.value,
                                        11,
                                        'Fee Payment',
                        if holdoverBalance > stor13:
                            if block.timestamp > stor20 + (24 * 3600):
                                if totalTokensMinted:
                                    if holdoverBalance:
                                        stor20 = block.timestamp
                                        require totalTokensMinted
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while idx < stor3.length:
                                            mem[0] = address(stor3[idx])
                                            mem[32] = 5
                                            if balanceOf[address(stor3[idx])] <= 0:
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                continue 
                                            require idx < stor3.length
                                            mem[0] = address(stor3[idx])
                                            mem[32] = 6
                                            checkDividends[address(stor3[idx])] += holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                            idx = idx + 1
                                            s = s + (holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])])
                                            t = holdoverBalance / totalTokensMinted * balanceOf[address(stor3[idx])]
                                            continue 
                                        holdoverBalance -= s
                                        emit StatEventI(string rg1, uint256 rg2):
                                                        ext_call.return_data[0],
                                                        holdoverBalance / totalTokensMinted,
                                                        17,
                                                        'PER TOKEN PAYOUT:',
    else:
        require stor27 <= 4
        if stor27 == 4:
            require stor27 == 1
            require msg.value >= stor12
            require stor12
            require totalTokensMinted + (msg.value / stor12) <= totalSupply
            if totalTokensMinted + (msg.value / stor12) == totalSupply:
                stor27 = 2
            idx = 0
            while idx < stor3.length:
                mem[0] = 3
                if address(stor3[idx]) != msg.sender:
                    idx = idx + 1
                    continue 
                balanceOf[address(msg.sender)] += msg.value / stor12
                totalTokensMinted += msg.value / stor12
                stor14 += msg.value
                emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = stor3.length + 1
                while stor3.length > idx:
                    uint256(stor3[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor3[stor3.length]) = msg.sender
            balanceOf[address(msg.sender)] += msg.value / stor12
            totalTokensMinted += msg.value / stor12
            stor14 += msg.value
            emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
        else:
            require stor27 <= 4
            if stor27 == 3:
                require stor27 == 1
                require msg.value >= stor12
                require stor12
                require totalTokensMinted + (msg.value / stor12) <= totalSupply
                if totalTokensMinted + (msg.value / stor12) == totalSupply:
                    stor27 = 2
                idx = 0
                while idx < stor3.length:
                    mem[0] = 3
                    if address(stor3[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    balanceOf[address(msg.sender)] += msg.value / stor12
                    totalTokensMinted += msg.value / stor12
                    stor14 += msg.value
                    emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = stor3.length + 1
                    while stor3.length > idx:
                        uint256(stor3[idx]) = 0
                        idx = idx + 1
                        continue 
                address(stor3[stor3.length]) = msg.sender
                balanceOf[address(msg.sender)] += msg.value / stor12
                totalTokensMinted += msg.value / stor12
                stor14 += msg.value
                emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
            else:
                if not stor27:
                    if block.timestamp <= stor17:
                        if block.timestamp > stor18:
                            stor27 = 2
                    else:
                        if block.timestamp > stor18:
                            stor27 = 2
                        else:
                            stor27 = 1
                    require stor27 <= 4
                    require stor27 == 1
                    require msg.value >= stor12
                    require stor12
                    require totalTokensMinted + (msg.value / stor12) <= totalSupply
                    if totalTokensMinted + (msg.value / stor12) == totalSupply:
                        stor27 = 2
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        if address(stor3[idx]) != msg.sender:
                            idx = idx + 1
                            continue 
                        balanceOf[address(msg.sender)] += msg.value / stor12
                        totalTokensMinted += msg.value / stor12
                        stor14 += msg.value
                        emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
                    stor3.length++
                    if not stor3.length <= stor3.length + 1:
                        idx = stor3.length + 1
                        while stor3.length > idx:
                            uint256(stor3[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor3[stor3.length]) = msg.sender
                    balanceOf[address(msg.sender)] += msg.value / stor12
                    totalTokensMinted += msg.value / stor12
                    stor14 += msg.value
                    emit StatEventI(Array(len=16, data='Tokens Purchased'), msg.value / stor12);
                else:
                    if not stor4:
                        emit StatEvent(Array(len=21, data='Empty Eg4neu_partner2'));
                        if block.timestamp <= stor18:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if 0 > stor11:
                                            stor27 = 4
                            else:
                                if 0 < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if 0 > stor11:
                                                stor27 = 4
                        else:
                            if totalTokensMinted - sub_69ab03e7 < stor10:
                                stor27 = 3
                            else:
                                if block.timestamp <= stor19:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if 0 > stor11:
                                                stor27 = 4
                                else:
                                    if 0 < stor11:
                                        stor27 = 3
                                    else:
                                        if block.timestamp > stor18:
                                            if totalTokensMinted - sub_69ab03e7 > stor10:
                                                if 0 > stor11:
                                                    stor27 = 4
                        require stor27 <= 4
                        if stor27 == 1:
                            if 0 >= totalSupply:
                                stor27 = 2
                        require stor27 <= 4
                        require stor27 == 1
                        require msg.value >= stor12
                        require stor12
                        require totalTokensMinted + (msg.value / stor12) <= totalSupply
                        if totalTokensMinted + (msg.value / stor12) == totalSupply:
                            stor27 = 2
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            if address(stor3[idx]) != msg.sender:
                                idx = idx + 1
                                continue 
                            balanceOf[address(msg.sender)] += msg.value / stor12
                            totalTokensMinted += msg.value / stor12
                            stor14 += msg.value
                            emit StatEventI(string rg1, uint256 rg2):
                                            Array(len=msg.value / stor12, data=16, 'Tokens Purchased'),
                        stor3.length++
                        if not stor3.length <= stor3.length + 1:
                            idx = stor3.length + 1
                            while stor3.length > idx:
                                uint256(stor3[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor3[stor3.length]) = msg.sender
                        balanceOf[address(msg.sender)] += msg.value / stor12
                        totalTokensMinted += msg.value / stor12
                        stor14 += msg.value
                        emit StatEventI(string rg1, uint256 rg2):
                                        Array(len=msg.value / stor12, data=16, 'Tokens Purchased'),
                    else:
                        require ext_code.size(stor4)
                        call stor4.0x1123efd5 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if block.timestamp <= stor18:
                            if block.timestamp <= stor19:
                                if block.timestamp > stor18:
                                    if totalTokensMinted - sub_69ab03e7 > stor10:
                                        if ext_call.return_data[0] > stor11:
                                            stor27 = 4
                            else:
                                if ext_call.return_data[0] < stor11:
                                    stor27 = 3
                                else:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if ext_call.return_data[0] > stor11:
                                                stor27 = 4
                        else:
                            if totalTokensMinted - sub_69ab03e7 < stor10:
                                stor27 = 3
                            else:
                                if block.timestamp <= stor19:
                                    if block.timestamp > stor18:
                                        if totalTokensMinted - sub_69ab03e7 > stor10:
                                            if ext_call.return_data[0] > stor11:
                                                stor27 = 4
                                else:
                                    if ext_call.return_data[0] < stor11:
                                        stor27 = 3
                                    else:
                                        if block.timestamp > stor18:
                                            if totalTokensMinted - sub_69ab03e7 > stor10:
                                                if ext_call.return_data[0] > stor11:
                                                    stor27 = 4
                        require stor27 <= 4
                        if stor27 == 1:
                            if ext_call.return_data[0] >= totalSupply:
                                stor27 = 2
                        require stor27 <= 4
                        require stor27 == 1
                        require msg.value >= stor12
                        require stor12
                        require totalTokensMinted + (msg.value / stor12) <= totalSupply
                        if totalTokensMinted + (msg.value / stor12) == totalSupply:
                            stor27 = 2
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            if address(stor3[idx]) != msg.sender:
                                idx = idx + 1
                                continue 
                            balanceOf[address(msg.sender)] += msg.value / stor12
                            totalTokensMinted += msg.value / stor12
                            stor14 += msg.value
                            emit StatEventI(string rg1, uint256 rg2):
                                            ext_call.return_data[0],
                                            msg.value / stor12,
                                            16,
                                            'Tokens Purchased',
                        stor3.length++
                        if not stor3.length <= stor3.length + 1:
                            idx = stor3.length + 1
                            while stor3.length > idx:
                                uint256(stor3[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(stor3[stor3.length]) = msg.sender
                        balanceOf[address(msg.sender)] += msg.value / stor12
                        totalTokensMinted += msg.value / stor12
                        stor14 += msg.value
                        emit StatEventI(string rg1, uint256 rg2):
                                        ext_call.return_data[0],
                                        msg.value / stor12,
                                        16,
                                        'Tokens Purchased',
}



}
