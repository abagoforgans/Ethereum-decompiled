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
    return code.data[300 len 8537]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
const totalSupply = 90


address stor0;
address sub_09653b28Address;
address stor2;
array of address stor3;
address stor4;
mapping of uint256 balanceOf;
uint256 stor7;
mapping of uint256 allowance;
uint256 sub_02c37333;
uint256 stor13;
uint256 stor14;
uint8 icoStatus; offset 8

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

function sub_8d52962a(?) {
    return stor4, stor7
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
        if stor3[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_d55e6975(?) {
    if msg.sender == sub_09653b28Address:
        if stor4:
            emit 0x296dc718: 64, 0, 21, 'Payer already exists!'
        else:
            stor4 = arg1
            emit 0x296dc718: 64, 0, 14, 'Fee Payer Set!'
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
    require ext_code.size(stor4)
    call stor4.0x1123efd5 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[0] < ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] < 0:
        return 0
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

function sub_9c95cba7(?) {
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = stor3[idx]
        mem[32] = 5
        idx = idx + 1
        s = s + balanceOf[stor3[idx]]
        continue 
    return (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length)
}

function getNumTokensPurchased() {
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = stor3[idx]
        mem[32] = 5
        idx = idx + 1
        s = s + balanceOf[stor3[idx]]
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
                mem[0] = stor3[idx]
                mem[32] = 5
                idx = idx + 1
                s = s + balanceOf[stor3[idx]]
                continue 
            require ext_code.size(stor4)
            call stor4.0x1123efd5 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if block.timestamp <= stor13:
                    if block.timestamp > stor14:
                        icoStatus = 2
                else:
                    if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 < 50:
                        icoStatus = 2
                    else:
                        if block.timestamp > stor14:
                            icoStatus = 2
                require icoStatus <= 3
            else:
                if ext_call.return_data[0] < 0:
                    if block.timestamp <= stor13:
                        if block.timestamp > stor14:
                            icoStatus = 2
                    else:
                        if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 < 50:
                            icoStatus = 2
                        else:
                            if block.timestamp > stor14:
                                icoStatus = 2
                    require icoStatus <= 3
                else:
                    if block.timestamp <= stor13:
                        if block.timestamp <= stor14:
                            if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                if ext_call.return_data[0] > 100:
                                    icoStatus = 3
                        else:
                            if ext_call.return_data[0] < 100:
                                icoStatus = 2
                            else:
                                if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                    if ext_call.return_data[0] > 100:
                                        icoStatus = 3
                    else:
                        if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 < 50:
                            icoStatus = 2
                        else:
                            if block.timestamp <= stor14:
                                if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                    if ext_call.return_data[0] > 100:
                                        icoStatus = 3
                            else:
                                if ext_call.return_data[0] < 100:
                                    icoStatus = 2
                                else:
                                    if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                        if ext_call.return_data[0] > 100:
                                            icoStatus = 3
                    require icoStatus <= 3
                    if not icoStatus:
                        if ext_call.return_data[0] >= 90:
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
                mem[0] = stor3[idx]
                mem[32] = 5
                idx = idx + 1
                s = s + balanceOf[stor3[idx]]
                continue 
            require ext_code.size(stor4)
            call stor4.0x1123efd5 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if block.timestamp <= stor13:
                    if block.timestamp > stor14:
                        icoStatus = 2
                else:
                    if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 < 50:
                        icoStatus = 2
                    else:
                        if block.timestamp > stor14:
                            icoStatus = 2
                require icoStatus <= 3
            else:
                if ext_call.return_data[0] < 0:
                    if block.timestamp <= stor13:
                        if block.timestamp > stor14:
                            icoStatus = 2
                    else:
                        if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 < 50:
                            icoStatus = 2
                        else:
                            if block.timestamp > stor14:
                                icoStatus = 2
                    require icoStatus <= 3
                else:
                    if block.timestamp <= stor13:
                        if block.timestamp <= stor14:
                            if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                if ext_call.return_data[0] > 100:
                                    icoStatus = 3
                        else:
                            if ext_call.return_data[0] < 100:
                                icoStatus = 2
                            else:
                                if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                    if ext_call.return_data[0] > 100:
                                        icoStatus = 3
                    else:
                        if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 < 50:
                            icoStatus = 2
                        else:
                            if block.timestamp <= stor14:
                                if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                    if ext_call.return_data[0] > 100:
                                        icoStatus = 3
                            else:
                                if ext_call.return_data[0] < 100:
                                    icoStatus = 2
                                else:
                                    if (s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length) - sub_02c37333 > 50:
                                        if ext_call.return_data[0] > 100:
                                            icoStatus = 3
                    require icoStatus <= 3
                    if not icoStatus:
                        if ext_call.return_data[0] >= 90:
                            icoStatus = 1
    if icoStatus != 2:
        emit 0x78243600: Array(len=15, data='No refunds due.')
    else:
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            if stor3[idx] != msg.sender:
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



}
