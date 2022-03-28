contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor10;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16; offset 8

function _fallback() {
    stor13 = block.timestamp + (72 * 24 * 3600)
    stor14 = block.timestamp + (72 * 24 * 3600)
    stor15 = block.timestamp + (8760 * 24 * 3600)
    stor16 = 0
    stor1 = msg.sender
    stor0 = msg.sender
    stor2 = msg.sender
    stor10 = 0
    return code.data[300 len 8965]
}



// =====================  Runtime code  =====================


const totalSupply = 90


address stor0;
address sub_09653b28Address;
address stor2;
array of address stor3;
array of address stor4;
mapping of uint256 balanceOf;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 allowance;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 sub_02c37333;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;
uint8 icoStatus; offset 8

function sub_00bba28d(?) {
    return stor4.length
}

function sub_02c37333(?) {
    return sub_02c37333
}

function sub_09653b28(?) {
    return sub_09653b28Address
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getIcoStatus() {
    require icoStatus <= 3
    return icoStatus
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_b098d481(?) {
    require msg.sender == sub_09653b28Address
    selfdestruct(stor2)
}

function sub_683fed07(?) {
    require msg.sender == sub_09653b28Address
    stor2 = arg1
}

function sub_e05a0a34(?) {
    if arg1 != sub_09653b28Address:
        return 0
    return stor2
}

function changeBeneficiary(address arg1) {
    require msg.sender == sub_09653b28Address
    stor0 = arg1
}

function getBeneficiary(address arg1) {
    if arg1 != sub_09653b28Address:
        return 0
    return stor0
}

function changeExecutor(address arg1) {
    require msg.sender == sub_09653b28Address
    sub_09653b28Address = arg1
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

function sub_59ac29de(?) {
    if arg1 < stor4.length:
        return address(stor4[arg1]), stor7[address(stor4[arg1])], stor4.length
    emit 0x78243600: Array(len=13, data='Invalid Index')
    return 0, 0, stor4.length
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

function addPayer(address arg1) {
    if msg.sender == sub_09653b28Address:
        if stor7[address(arg1)] <= 0:
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    uint256(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor4[stor4.length]) = arg1
            stor7[address(arg1)] = 1
            emit 0x296dc718: 64, 0, 11, 'PAYER ADDED'
}

function getNumGames() {
    s = 0
    idx = 0
    s = 0
    s = 0
    while idx < stor4.length:
        mem[0] = 4
        mem[128] = 0
        require ext_code.size(address(stor4[idx]))
        call address(stor4[idx]).getNumGamesStarted() with:
             gas gas_remaining - 50 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] + s < ext_call.return_data[0]:
            s = address(stor4[idx])
            idx = idx + 1
            s = ext_call.return_data[0]
            s = s
            continue 
        if ext_call.return_data[0] + s < s:
            s = address(stor4[idx])
            idx = idx + 1
            s = ext_call.return_data[0]
            s = s
            continue 
        s = address(stor4[idx])
        idx = idx + 1
        s = ext_call.return_data[0]
        s = s + ext_call.return_data[0]
        continue 
    return s
}

function sub_9c95cba7(?) {
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = 5
        idx = idx + 1
        s = s + balanceOf[address(stor3[idx])]
        continue 
    return (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length)
}

function getNumTokensPurchased() {
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = address(stor3[idx])
        mem[32] = 5
        idx = idx + 1
        s = s + balanceOf[address(stor3[idx])]
        continue 
    return ((s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333)
}

function updateIcoStatus() {
    require icoStatus <= 3
    if icoStatus != 3:
        require icoStatus <= 3
        if icoStatus != 2:
            idx = 0
            s = 0
            while idx < stor3.length:
                mem[0] = address(stor3[idx])
                mem[32] = 5
                idx = idx + 1
                s = s + balanceOf[address(stor3[idx])]
                continue 
            t = 0
            idx = 0
            t = 0
            t = 0
            while idx < stor4.length:
                mem[0] = 4
                mem[128] = 0
                require ext_code.size(address(stor4[idx]))
                call address(stor4[idx]).getNumGamesStarted() with:
                     gas gas_remaining - 50 wei
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0] + t < ext_call.return_data[0]:
                    t = address(stor4[idx])
                    idx = idx + 1
                    t = ext_call.return_data[0]
                    t = t
                    continue 
                if ext_call.return_data[0] + t < t:
                    t = address(stor4[idx])
                    idx = idx + 1
                    t = ext_call.return_data[0]
                    t = t
                    continue 
                t = address(stor4[idx])
                idx = idx + 1
                t = ext_call.return_data[0]
                t = t + ext_call.return_data[0]
                continue 
            if block.timestamp <= stor13:
                if block.timestamp <= stor14:
                    if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                        if t > 100:
                            icoStatus = 3
                else:
                    if t < 100:
                        icoStatus = 2
                    else:
                        if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                            if t > 100:
                                icoStatus = 3
            else:
                if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 < 50:
                    icoStatus = 2
                else:
                    if block.timestamp <= stor14:
                        if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                            if t > 100:
                                icoStatus = 3
                    else:
                        if t < 100:
                            icoStatus = 2
                        else:
                            if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                if t > 100:
                                    icoStatus = 3
            require icoStatus <= 3
            if not icoStatus:
                if t >= 90:
                    icoStatus = 1
}

function requestRefund() {
    require icoStatus <= 3
    require icoStatus <= 3
    if icoStatus != 3:
        if icoStatus != 2:
            idx = 0
            s = 0
            while idx < stor3.length:
                mem[0] = address(stor3[idx])
                mem[32] = 5
                idx = idx + 1
                s = s + balanceOf[address(stor3[idx])]
                continue 
            t = 0
            idx = 0
            t = 0
            t = 0
            while idx < stor4.length:
                mem[0] = 4
                mem[128] = 0
                require ext_code.size(address(stor4[idx]))
                call address(stor4[idx]).getNumGamesStarted() with:
                     gas gas_remaining - 50 wei
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0] + t < ext_call.return_data[0]:
                    t = address(stor4[idx])
                    idx = idx + 1
                    t = ext_call.return_data[0]
                    t = t
                    continue 
                if ext_call.return_data[0] + t < t:
                    t = address(stor4[idx])
                    idx = idx + 1
                    t = ext_call.return_data[0]
                    t = t
                    continue 
                t = address(stor4[idx])
                idx = idx + 1
                t = ext_call.return_data[0]
                t = t + ext_call.return_data[0]
                continue 
            if block.timestamp <= stor13:
                if block.timestamp <= stor14:
                    if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                        if t > 100:
                            icoStatus = 3
                else:
                    if t < 100:
                        icoStatus = 2
                    else:
                        if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                            if t > 100:
                                icoStatus = 3
            else:
                if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 < 50:
                    icoStatus = 2
                else:
                    if block.timestamp <= stor14:
                        if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                            if t > 100:
                                icoStatus = 3
                    else:
                        if t < 100:
                            icoStatus = 2
                        else:
                            if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                if t > 100:
                                    icoStatus = 3
            require icoStatus <= 3
            if not icoStatus:
                if t >= 90:
                    icoStatus = 1
    if icoStatus != 2:
        emit 0x78243600: Array(len=15, data='No refunds due.')
    else:
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            if address(stor3[idx]) != msg.sender:
                idx = idx + 1
                continue 
            if not balanceOf[address(msg.sender)]:
                emit 0x78243600: Array(len=28, data='Balance is 0 - No Refund Due')
            else:
                balanceOf[address(msg.sender)] = 0
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x78243600: Array(len=27, data='Refund sent to Token Holder')
        emit 0x78243600: Array(len=20, data='holder doesn't exist')
}

function _fallback() payable {
    require icoStatus <= 3
    if stor7[address(msg.sender)] > 0:
        if icoStatus != 3:
            require icoStatus <= 3
            if icoStatus != 2:
                idx = 0
                s = 0
                while idx < stor3.length:
                    mem[0] = address(stor3[idx])
                    mem[32] = 5
                    idx = idx + 1
                    s = s + balanceOf[address(stor3[idx])]
                    continue 
                t = 0
                idx = 0
                t = 0
                t = 0
                while idx < stor4.length:
                    mem[0] = 4
                    mem[128] = 0
                    require ext_code.size(address(stor4[idx]))
                    call address(stor4[idx]).getNumGamesStarted() with:
                         gas gas_remaining - 50 wei
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] + t < ext_call.return_data[0]:
                        t = address(stor4[idx])
                        idx = idx + 1
                        t = ext_call.return_data[0]
                        t = t
                        continue 
                    if ext_call.return_data[0] + t < t:
                        t = address(stor4[idx])
                        idx = idx + 1
                        t = ext_call.return_data[0]
                        t = t
                        continue 
                    t = address(stor4[idx])
                    idx = idx + 1
                    t = ext_call.return_data[0]
                    t = t + ext_call.return_data[0]
                    continue 
                if block.timestamp <= stor13:
                    if block.timestamp <= stor14:
                        if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                            if t > 100:
                                icoStatus = 3
                    else:
                        if t < 100:
                            icoStatus = 2
                        else:
                            if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                if t > 100:
                                    icoStatus = 3
                else:
                    if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 < 50:
                        icoStatus = 2
                    else:
                        if block.timestamp <= stor14:
                            if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                if t > 100:
                                    icoStatus = 3
                        else:
                            if t < 100:
                                icoStatus = 2
                            else:
                                if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                    if t > 100:
                                        icoStatus = 3
                require icoStatus <= 3
                if not icoStatus:
                    if t >= 90:
                        icoStatus = 1
        stor10 += msg.value
        stor7[address(msg.sender)] += msg.value
        emit 0x296dc718: Array(len=11, data='Fee Payment'), msg.value
        if stor10 > 10^18:
            require stor3.length
            idx = 0
            s = 0
            t = 0
            while idx < stor3.length:
                mem[0] = address(stor3[idx])
                mem[32] = 6
                stor6[address(stor3[idx])] += stor10 / stor3.length * balanceOf[address(stor3[idx])]
                idx = idx + 1
                s = s + (stor10 / stor3.length * balanceOf[address(stor3[idx])])
                t = stor10 / stor3.length * balanceOf[address(stor3[idx])]
                continue 
            stor10 += -1 * s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length
            emit 0x296dc718: Array(len=13, data='TOTAL PAYOUT:'), s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length
            emit 0x296dc718: Array(len=17, data='PER TOKEN PAYOUT:'), stor10 / stor3.length
            emit 0x296dc718: Array(len=12, data='NEW BALANCE:'), stor10
    else:
        require not icoStatus
        require msg.value >= 1
        idx = 0
        s = 0
        while idx < stor3.length:
            mem[0] = address(stor3[idx])
            mem[32] = 5
            idx = idx + 1
            s = s + balanceOf[address(stor3[idx])]
            continue 
        require (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) + msg.value <= 90
        idx = 0
        s = 0
        while idx < stor3.length:
            mem[0] = address(stor3[idx])
            mem[32] = 5
            idx = idx + 1
            s = s + balanceOf[address(stor3[idx])]
            continue 
        if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) + msg.value == 90:
            icoStatus = 1
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            if address(stor3[idx]) != msg.sender:
                idx = idx + 1
                continue 
            balanceOf[address(msg.sender)] += msg.value
            stor9 += msg.value
            stor11 += msg.value
            require icoStatus <= 3
            if icoStatus == 3:
                if not stor16:
                    if block.timestamp >= stor15:
                        stor16 = 1
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            if address(stor3[idx]) != stor0:
                                idx = idx + 1
                                continue 
                            idx = 0
                            s = 0
                            while idx < stor3.length:
                                mem[0] = address(stor3[idx])
                                mem[32] = 5
                                idx = idx + 1
                                s = s + balanceOf[address(stor3[idx])]
                                continue 
                            sub_02c37333 = s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length / 10
                            balanceOf[stor2] = sub_02c37333
                            stor11 = 0
                            call stor2 with:
                               value stor11 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0x296dc718: Array(len=16, data='Tokens Purchased'), msg.value
                        stor3.length++
                        if not stor3.length <= stor3.length + 1:
                            idx = sha3(3) + stor3.length + 1
                            while sha3(3) + stor3.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        address(stor3[stor3.length]) = stor0
                        idx = 0
                        s = 0
                        while idx < stor3.length:
                            mem[0] = address(stor3[idx])
                            mem[32] = 5
                            idx = idx + 1
                            s = s + balanceOf[address(stor3[idx])]
                            continue 
                        sub_02c37333 = s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length / 10
                        balanceOf[stor2] = sub_02c37333
                stor11 = 0
                call stor2 with:
                   value stor11 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit 0x296dc718: Array(len=16, data='Tokens Purchased'), msg.value
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = stor3.length + 1
            while stor3.length > idx:
                uint256(stor3[idx]) = 0
                idx = idx + 1
                continue 
        address(stor3[stor3.length]) = msg.sender
        balanceOf[address(msg.sender)] += msg.value
        stor9 += msg.value
        stor11 += msg.value
        require icoStatus <= 3
        if icoStatus == 3:
            if not stor16:
                if block.timestamp >= stor15:
                    stor16 = 1
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        if address(stor3[idx]) != stor0:
                            idx = idx + 1
                            continue 
                        idx = 0
                        s = 0
                        while idx < stor3.length:
                            mem[0] = address(stor3[idx])
                            mem[32] = 5
                            idx = idx + 1
                            s = s + balanceOf[address(stor3[idx])]
                            continue 
                        sub_02c37333 = s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length / 10
                        balanceOf[stor2] = sub_02c37333
                        stor11 = 0
                        call stor2 with:
                           value stor11 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x296dc718: Array(len=16, data='Tokens Purchased'), msg.value
                    stor3.length++
                    if not stor3.length <= stor3.length + 1:
                        idx = stor3.length + 1
                        while stor3.length > idx:
                            uint256(stor3[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(stor3[stor3.length]) = stor0
                    idx = 0
                    s = 0
                    while idx < stor3.length:
                        mem[0] = address(stor3[idx])
                        mem[32] = 5
                        idx = idx + 1
                        s = s + balanceOf[address(stor3[idx])]
                        continue 
                    sub_02c37333 = s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length / 10
                    balanceOf[stor2] = sub_02c37333
            stor11 = 0
            call stor2 with:
               value stor11 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        emit 0x296dc718: Array(len=16, data='Tokens Purchased'), msg.value
}



}
