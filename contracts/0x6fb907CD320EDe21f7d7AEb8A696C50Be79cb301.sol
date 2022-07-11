contract main {




// =====================  Runtime code  =====================


#
#  - sub_a53ccada(?)
#  - sub_be0131e6(?)
#
uint8 stor0; offset 160
address stor0;
address devAddress;
uint256 sub_96ba5f7f;
uint256 sub_bd69b071;
uint256 sub_abd2b842;
uint256 sub_3c72cec5;
uint256 sub_faf1a8d3;
address sub_593728e3Address;
array of uint256 sub_11aa1c86;
array of address sub_47fbde12;
address stor11;
uint256 sub_b593bcd3;
uint256 sub_4ad12ec0;
address sub_a8999b7bAddress;
uint256 sub_e0f67bc7;
mapping of uint256 getMyBalance;
mapping of uint256 sub_1eab5237;
mapping of uint256 sub_55e6a8cf;
mapping of address sub_ac39c79f;

function GetMyBalance() {
    return getMyBalance[msg.sender]
}

function sub_11aa1c86(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_11aa1c86[arg1]
}

function sub_1eab5237(?) {
    require calldata.size - 4 >= 32
    return sub_1eab5237[address(arg1)]
}

function sub_3c72cec5(?) {
    return sub_3c72cec5
}

function sub_47fbde12(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_47fbde12[arg1]
}

function sub_4ad12ec0(?) {
    return sub_4ad12ec0
}

function sub_55e6a8cf(?) {
    return sub_55e6a8cf[msg.sender]
}

function sub_593728e3(?) {
    return sub_593728e3Address
}

function dev() {
    return devAddress
}

function sub_96ba5f7f(?) {
    return sub_96ba5f7f
}

function sub_a8999b7b(?) {
    return sub_a8999b7bAddress
}

function sub_abd2b842(?) {
    return sub_abd2b842
}

function sub_ac39c79f(?) {
    return sub_ac39c79f[msg.sender]
}

function sub_b593bcd3(?) {
    return sub_b593bcd3
}

function sub_bd69b071(?) {
    return sub_bd69b071
}

function sub_e0f67bc7(?) {
    return sub_e0f67bc7
}

function gameActive() {
    return bool(uint8(stor0.field_160))
}

function sub_faf1a8d3(?) {
    return sub_faf1a8d3
}

function _fallback() payable {
    require msg.value + sub_96ba5f7f >= sub_96ba5f7f
    sub_96ba5f7f += msg.value
    emit 0xebb5bdde: msg.value, msg.sender
}

function GetSnail(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor0.field_0))
    staticcall address(stor0.field_0).hatcherySnail(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function WithdrawBalance() {
    if not getMyBalance[msg.sender]:
        revert with 0, 'no ETH in player balance'
    getMyBalance[msg.sender] = 0
    call msg.sender with:
       value getMyBalance[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithdrewBalance(getMyBalance[msg.sender], msg.sender);
}

function sub_3671e029(?) {
    require sub_b593bcd3 <= block.timestamp
    if not block.timestamp - sub_b593bcd3:
        return 0
    require 8 * block.timestamp - sub_b593bcd3 / block.timestamp - sub_b593bcd3 == 8
    if stor11 != msg.sender:
        return (8 * block.timestamp - sub_b593bcd3)
    if not 8 * block.timestamp - sub_b593bcd3:
        return 0
    require 16 * block.timestamp - sub_b593bcd3 / 8 * block.timestamp - sub_b593bcd3 == 2
    return (16 * block.timestamp - sub_b593bcd3)
}

function StartGame() payable {
    if 1 == bool(uint8(stor0.field_160)):
        revert with 0, 'game is already active'
    if devAddress != msg.sender:
        revert with 0, 'you're not snailking!'
    if msg.value != 10^18:
        revert with 0, 'seed must be 1 ETH'
    sub_96ba5f7f = msg.value
    require sub_abd2b842
    require (msg.value / sub_abd2b842) + sub_1eab5237[msg.sender] >= sub_1eab5237[msg.sender]
    sub_1eab5237[msg.sender] += msg.value / sub_abd2b842
    idx = 0
    while idx < 4:
        sub_11aa1c86[idx] = 2 * 10^16
        sub_47fbde12[idx] = devAddress
        idx = idx + 1
        continue 
    require block.timestamp + (24 * 3600) >= block.timestamp
    sub_4ad12ec0 = block.timestamp + (24 * 3600)
    sub_3c72cec5 = block.timestamp + (24 * 3600)
    sub_b593bcd3 = block.timestamp
    sub_55e6a8cf[msg.sender] = block.timestamp
    uint8(stor0.field_160) = 1
}

function sub_5142f8b4(?) payable {
    require calldata.size - 4 >= 32
    if bool(uint8(stor0.field_160)) != 1:
        revert with 0, 'game is paused'
    if tx.origin != msg.sender:
        revert with 0, 'no contracts allowed'
    require arg1 < 4
    if sub_11aa1c86[arg1] != msg.value:
        revert with 0, 'wrong ether cost for king'
    require sub_96ba5f7f + 5 * 10^15 >= sub_96ba5f7f
    sub_96ba5f7f += 5 * 10^15
    require sub_bd69b071 + 5 * 10^15 >= sub_bd69b071
    sub_bd69b071 += 5 * 10^15
    require 10^16 <= msg.value
    require arg1 < 4
    require msg.value + getMyBalance[stor9[arg1]] - 10^16 >= getMyBalance[stor9[arg1]]
    getMyBalance[stor9[arg1]] = msg.value + getMyBalance[stor9[arg1]] - 10^16
    require arg1 < 4
    sub_47fbde12[arg1] = msg.sender
    require sub_11aa1c86[arg1] + 2 * 10^16 >= sub_11aa1c86[arg1]
    require arg1 < 4
    sub_11aa1c86[arg1] += 2 * 10^16
    emit 0x7b31c696: msg.value, arg1, msg.sender
}

function ComputeHarvest() {
    require sub_55e6a8cf[msg.sender] <= block.timestamp
    require sub_b593bcd3 <= block.timestamp
    if not block.timestamp - sub_b593bcd3:
        if not sub_abd2b842:
            if 0 <= sub_96ba5f7f:
                return 0
            if not sub_96ba5f7f:
                return 0
            if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                return (100 * sub_96ba5f7f / 124)
        else:
            if sub_1eab5237[msg.sender] * sub_abd2b842 / sub_abd2b842 == sub_1eab5237[msg.sender]:
                if not sub_1eab5237[msg.sender] * sub_abd2b842:
                    if 0 <= sub_96ba5f7f:
                        return 0
                    if not sub_96ba5f7f:
                        return 0
                    if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                        return (100 * sub_96ba5f7f / 124)
                else:
                    if (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / sub_1eab5237[msg.sender] * sub_abd2b842 == block.timestamp - sub_55e6a8cf[msg.sender]:
                        if not (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                            if (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 >= (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                if (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 <= sub_96ba5f7f:
                                    return ((block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100)
                                if not sub_96ba5f7f:
                                    return 0
                                if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                    return (100 * sub_96ba5f7f / 124)
                        else:
                            if 24 * (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 == 24:
                                if (24 * (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / 100) + ((block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100) >= (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                    if (24 * (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / 100) + ((block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100) <= sub_96ba5f7f:
                                        return ((block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100)
                                    if not sub_96ba5f7f:
                                        return 0
                                    if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                        return (100 * sub_96ba5f7f / 124)
    else:
        if 8 * block.timestamp - sub_b593bcd3 / block.timestamp - sub_b593bcd3 == 8:
            if stor11 != msg.sender:
                if 8 * block.timestamp - sub_b593bcd3 >= 0:
                    if not sub_abd2b842:
                        if 0 <= sub_96ba5f7f:
                            return 0
                        if not sub_96ba5f7f:
                            return 0
                        if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                            return (100 * sub_96ba5f7f / 124)
                    else:
                        if sub_1eab5237[msg.sender] * sub_abd2b842 / sub_abd2b842 == sub_1eab5237[msg.sender]:
                            if not sub_1eab5237[msg.sender] * sub_abd2b842:
                                if 0 <= sub_96ba5f7f:
                                    return 0
                                if not sub_96ba5f7f:
                                    return 0
                                if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                    return (100 * sub_96ba5f7f / 124)
                            else:
                                if (8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / sub_1eab5237[msg.sender] * sub_abd2b842 == (8 * block.timestamp - sub_b593bcd3) + block.timestamp - sub_55e6a8cf[msg.sender]:
                                    if not (8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                        if (8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 >= (8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                            if (8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 <= sub_96ba5f7f:
                                                return ((8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100)
                                            if not sub_96ba5f7f:
                                                return 0
                                            if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                                return (100 * sub_96ba5f7f / 124)
                                    else:
                                        if 24 * (8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / (8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 == 24:
                                            if (24 * (8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / 100) + ((8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100) >= (8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                                if (24 * (8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / 100) + ((8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100) <= sub_96ba5f7f:
                                                    return ((8 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100)
                                                if not sub_96ba5f7f:
                                                    return 0
                                                if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                                    return (100 * sub_96ba5f7f / 124)
            else:
                if not 8 * block.timestamp - sub_b593bcd3:
                    if not sub_abd2b842:
                        if 0 <= sub_96ba5f7f:
                            return 0
                        if not sub_96ba5f7f:
                            return 0
                        if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                            return (100 * sub_96ba5f7f / 124)
                    else:
                        if sub_1eab5237[msg.sender] * sub_abd2b842 / sub_abd2b842 == sub_1eab5237[msg.sender]:
                            if not sub_1eab5237[msg.sender] * sub_abd2b842:
                                if 0 <= sub_96ba5f7f:
                                    return 0
                                if not sub_96ba5f7f:
                                    return 0
                                if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                    return (100 * sub_96ba5f7f / 124)
                            else:
                                if (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / sub_1eab5237[msg.sender] * sub_abd2b842 == block.timestamp - sub_55e6a8cf[msg.sender]:
                                    if not (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                        if (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 >= (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                            if (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 <= sub_96ba5f7f:
                                                return ((block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100)
                                            if not sub_96ba5f7f:
                                                return 0
                                            if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                                return (100 * sub_96ba5f7f / 124)
                                    else:
                                        if 24 * (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 == 24:
                                            if (24 * (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / 100) + ((block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100) >= (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                                if (24 * (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / 100) + ((block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100) <= sub_96ba5f7f:
                                                    return ((block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100)
                                                if not sub_96ba5f7f:
                                                    return 0
                                                if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                                    return (100 * sub_96ba5f7f / 124)
                else:
                    if 16 * block.timestamp - sub_b593bcd3 / 8 * block.timestamp - sub_b593bcd3 == 2:
                        if 16 * block.timestamp - sub_b593bcd3 >= 0:
                            if not sub_abd2b842:
                                if 0 <= sub_96ba5f7f:
                                    return 0
                                if not sub_96ba5f7f:
                                    return 0
                                if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                    return (100 * sub_96ba5f7f / 124)
                            else:
                                if sub_1eab5237[msg.sender] * sub_abd2b842 / sub_abd2b842 == sub_1eab5237[msg.sender]:
                                    if not sub_1eab5237[msg.sender] * sub_abd2b842:
                                        if 0 <= sub_96ba5f7f:
                                            return 0
                                        if not sub_96ba5f7f:
                                            return 0
                                        if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                            return (100 * sub_96ba5f7f / 124)
                                    else:
                                        if (16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / sub_1eab5237[msg.sender] * sub_abd2b842 == (16 * block.timestamp - sub_b593bcd3) + block.timestamp - sub_55e6a8cf[msg.sender]:
                                            if not (16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                                if (16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 >= (16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                                    if (16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 <= sub_96ba5f7f:
                                                        return ((16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100)
                                                    if not sub_96ba5f7f:
                                                        return 0
                                                    if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                                        return (100 * sub_96ba5f7f / 124)
                                            else:
                                                if 24 * (16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / (16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 == 24:
                                                    if (24 * (16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / 100) + ((16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100) >= (16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100:
                                                        if (24 * (16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100 / 100) + ((16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100) <= sub_96ba5f7f:
                                                            return ((16 * block.timestamp - sub_b593bcd3 * sub_1eab5237[msg.sender] * sub_abd2b842) + (block.timestamp * sub_1eab5237[msg.sender] * sub_abd2b842) - (sub_55e6a8cf[msg.sender] * sub_1eab5237[msg.sender] * sub_abd2b842) / 24 * 3600 / 100)
                                                        if not sub_96ba5f7f:
                                                            return 0
                                                        if 100 * sub_96ba5f7f / sub_96ba5f7f == 100:
                                                            return (100 * sub_96ba5f7f / 124)
    revert
}



}
