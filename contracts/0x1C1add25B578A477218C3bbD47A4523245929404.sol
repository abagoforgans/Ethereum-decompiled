contract main {




// =====================  Runtime code  =====================


mapping of uint256 invested;
mapping of uint256 payments;
mapping of address investedRef;
mapping of uint256 atBlock;
mapping of uint256 cashBack;
mapping of uint256 cashRef;
mapping of uint256 admComiss;
address stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
address stor16;
uint256 stor17;
uint256 stor18;

function investedRef(address arg1) {
    return investedRef[arg1]
}

function invested(address arg1) {
    return invested[arg1]
}

function atBlock(address arg1) {
    return atBlock[arg1]
}

function cashBack(address arg1) {
    return cashBack[arg1]
}

function cashRef(address arg1) {
    return cashRef[arg1]
}

function admComiss(address arg1) {
    return admComiss[arg1]
}

function payments(address arg1) {
    return payments[arg1]
}

function admin() {
    selfdestruct(0xfac9f617e03c0d8f62c2cb9752a2a617be90b6fa)
}

function getFundStatsMap() {
    return stor9, stor10, stor11, stor12, stor13, stor14, stor15
}

function getWebStats() {
    return stor9, eth.balance(this.address), stor10, stor11, stor16, stor17, stor18
}

function getUserStats(address arg1) {
    return invested[address(arg1)], 
           cashBack[address(arg1)],
           cashRef[address(arg1)],
           atBlock[address(arg1)],
           block.number,
           payments[address(arg1)],
           investedRef[address(arg1)]
}

function _fallback() payable {
    if not invested[address(msg.sender)]:
        if not msg.value:
            if not admComiss[stor7]:
                if not cashRef[address(msg.sender)]:
                    if not cashBack[address(msg.sender)]:
                        atBlock[address(msg.sender)] = block.number
                    else:
                        require cashBack[address(msg.sender)] >= 0
                        cashBack[address(msg.sender)] = 0
                        stor12 += cashBack[address(msg.sender)]
                        atBlock[address(msg.sender)] = block.number
                        if cashBack[address(msg.sender)]:
                            stor11 += cashBack[address(msg.sender)]
                            payments[address(msg.sender)] += cashBack[address(msg.sender)]
                            call msg.sender with:
                               value cashBack[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require cashRef[address(msg.sender)] >= 0
                    cashRef[address(msg.sender)] = 0
                    stor13 += cashRef[address(msg.sender)]
                    if not cashBack[address(msg.sender)]:
                        atBlock[address(msg.sender)] = block.number
                        if cashRef[address(msg.sender)]:
                            stor11 += cashRef[address(msg.sender)]
                            payments[address(msg.sender)] += cashRef[address(msg.sender)]
                            call msg.sender with:
                               value cashRef[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require cashRef[address(msg.sender)] + cashBack[address(msg.sender)] >= cashRef[address(msg.sender)]
                        cashBack[address(msg.sender)] = 0
                        stor12 = stor12 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                        atBlock[address(msg.sender)] = block.number
                        if cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                            stor11 = stor11 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                            payments[address(msg.sender)] = payments[address(msg.sender)] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                            call msg.sender with:
                               value cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor7 != msg.sender:
                    if not cashRef[address(msg.sender)]:
                        if not cashBack[address(msg.sender)]:
                            atBlock[address(msg.sender)] = block.number
                        else:
                            require cashBack[address(msg.sender)] >= 0
                            cashBack[address(msg.sender)] = 0
                            stor12 += cashBack[address(msg.sender)]
                            atBlock[address(msg.sender)] = block.number
                            if cashBack[address(msg.sender)]:
                                stor11 += cashBack[address(msg.sender)]
                                payments[address(msg.sender)] += cashBack[address(msg.sender)]
                                call msg.sender with:
                                   value cashBack[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require cashRef[address(msg.sender)] >= 0
                        cashRef[address(msg.sender)] = 0
                        stor13 += cashRef[address(msg.sender)]
                        if not cashBack[address(msg.sender)]:
                            atBlock[address(msg.sender)] = block.number
                            if cashRef[address(msg.sender)]:
                                stor11 += cashRef[address(msg.sender)]
                                payments[address(msg.sender)] += cashRef[address(msg.sender)]
                                call msg.sender with:
                                   value cashRef[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require cashRef[address(msg.sender)] + cashBack[address(msg.sender)] >= cashRef[address(msg.sender)]
                            cashBack[address(msg.sender)] = 0
                            stor12 = stor12 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                            atBlock[address(msg.sender)] = block.number
                            if cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                stor11 = stor11 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                payments[address(msg.sender)] = payments[address(msg.sender)] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                call msg.sender with:
                                   value cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require admComiss[stor7] >= 0
                    admComiss[stor7] = 0
                    stor14 += admComiss[stor7]
                    if not cashRef[address(msg.sender)]:
                        if not cashBack[address(msg.sender)]:
                            atBlock[address(msg.sender)] = block.number
                            if admComiss[stor7]:
                                stor11 += admComiss[stor7]
                                payments[address(msg.sender)] += admComiss[stor7]
                                call msg.sender with:
                                   value admComiss[stor7] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require admComiss[stor7] + cashBack[address(msg.sender)] >= admComiss[stor7]
                            cashBack[address(msg.sender)] = 0
                            stor12 = stor12 + admComiss[stor7] + cashBack[address(msg.sender)]
                            atBlock[address(msg.sender)] = block.number
                            if admComiss[stor7] + cashBack[address(msg.sender)]:
                                stor11 = stor11 + admComiss[stor7] + cashBack[address(msg.sender)]
                                payments[address(msg.sender)] = payments[address(msg.sender)] + admComiss[stor7] + cashBack[address(msg.sender)]
                                call msg.sender with:
                                   value admComiss[stor7] + cashBack[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require admComiss[stor7] + cashRef[address(msg.sender)] >= admComiss[stor7]
                        cashRef[address(msg.sender)] = 0
                        stor13 = stor13 + admComiss[stor7] + cashRef[address(msg.sender)]
                        if not cashBack[address(msg.sender)]:
                            atBlock[address(msg.sender)] = block.number
                            if admComiss[stor7] + cashRef[address(msg.sender)]:
                                stor11 = stor11 + admComiss[stor7] + cashRef[address(msg.sender)]
                                payments[address(msg.sender)] = payments[address(msg.sender)] + admComiss[stor7] + cashRef[address(msg.sender)]
                                call msg.sender with:
                                   value admComiss[stor7] + cashRef[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require cashBack[address(msg.sender)] >= 0
                            cashBack[address(msg.sender)] = 0
                            stor12 = stor12 + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                            atBlock[address(msg.sender)] = block.number
                            if admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                stor11 = stor11 + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                payments[address(msg.sender)] = payments[address(msg.sender)] + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                call msg.sender with:
                                   value admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if msg.value < 10^16:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.value must be >= 0.01 ether (10 finney)'
            if msg.value:
                require msg.value
                require 15 * msg.value / msg.value == 15
                admComiss[stor7] += 15 * msg.value / 100
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if not mem[128 len 20]:
                if investedRef[address(msg.sender)]:
                    if msg.value:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        cashRef[stor2[address(msg.sender)]] += 10 * msg.value / 100
            else:
                if msg.sender == mem[128 len 20]:
                    revert with 0, 'referal must be != msg.sender'
                if msg.value:
                    require msg.value
                    require 10 * msg.value / msg.value == 10
                    cashRef[mem[128 len 20]] += 10 * msg.value / 100
                investedRef[address(msg.sender)] = mem[128 len 20]
                if not invested[address(msg.sender)]:
                    if msg.value:
                        require msg.value
                        require 3 * msg.value / msg.value == 3
                        cashBack[address(msg.sender)] += 3 * msg.value / 100
            if not invested[address(msg.sender)]:
                stor9++
            invested[address(msg.sender)] += msg.value
            atBlock[address(msg.sender)] = block.number
            stor10 += msg.value
            if invested[address(msg.sender)] > 0:
                stor15 += msg.value
            stor16 = msg.sender
            stor17 = msg.value
            stor18 = block.number
            atBlock[address(msg.sender)] = block.number
    else:
        require atBlock[address(msg.sender)] <= block.number
        if not invested[address(msg.sender)]:
            if not msg.value:
                if not admComiss[stor7]:
                    if not cashRef[address(msg.sender)]:
                        if not cashBack[address(msg.sender)]:
                            atBlock[address(msg.sender)] = block.number
                        else:
                            require cashBack[address(msg.sender)] >= 0
                            cashBack[address(msg.sender)] = 0
                            stor12 += cashBack[address(msg.sender)]
                            atBlock[address(msg.sender)] = block.number
                            if cashBack[address(msg.sender)]:
                                stor11 += cashBack[address(msg.sender)]
                                payments[address(msg.sender)] += cashBack[address(msg.sender)]
                                call msg.sender with:
                                   value cashBack[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require cashRef[address(msg.sender)] >= 0
                        cashRef[address(msg.sender)] = 0
                        stor13 += cashRef[address(msg.sender)]
                        if not cashBack[address(msg.sender)]:
                            atBlock[address(msg.sender)] = block.number
                            if cashRef[address(msg.sender)]:
                                stor11 += cashRef[address(msg.sender)]
                                payments[address(msg.sender)] += cashRef[address(msg.sender)]
                                call msg.sender with:
                                   value cashRef[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require cashRef[address(msg.sender)] + cashBack[address(msg.sender)] >= cashRef[address(msg.sender)]
                            cashBack[address(msg.sender)] = 0
                            stor12 = stor12 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                            atBlock[address(msg.sender)] = block.number
                            if cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                stor11 = stor11 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                payments[address(msg.sender)] = payments[address(msg.sender)] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                call msg.sender with:
                                   value cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if stor7 != msg.sender:
                        if not cashRef[address(msg.sender)]:
                            if not cashBack[address(msg.sender)]:
                                atBlock[address(msg.sender)] = block.number
                            else:
                                require cashBack[address(msg.sender)] >= 0
                                cashBack[address(msg.sender)] = 0
                                stor12 += cashBack[address(msg.sender)]
                                atBlock[address(msg.sender)] = block.number
                                if cashBack[address(msg.sender)]:
                                    stor11 += cashBack[address(msg.sender)]
                                    payments[address(msg.sender)] += cashBack[address(msg.sender)]
                                    call msg.sender with:
                                       value cashBack[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require cashRef[address(msg.sender)] >= 0
                            cashRef[address(msg.sender)] = 0
                            stor13 += cashRef[address(msg.sender)]
                            if not cashBack[address(msg.sender)]:
                                atBlock[address(msg.sender)] = block.number
                                if cashRef[address(msg.sender)]:
                                    stor11 += cashRef[address(msg.sender)]
                                    payments[address(msg.sender)] += cashRef[address(msg.sender)]
                                    call msg.sender with:
                                       value cashRef[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require cashRef[address(msg.sender)] + cashBack[address(msg.sender)] >= cashRef[address(msg.sender)]
                                cashBack[address(msg.sender)] = 0
                                stor12 = stor12 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                atBlock[address(msg.sender)] = block.number
                                if cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                    stor11 = stor11 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    payments[address(msg.sender)] = payments[address(msg.sender)] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    call msg.sender with:
                                       value cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require admComiss[stor7] >= 0
                        admComiss[stor7] = 0
                        stor14 += admComiss[stor7]
                        if not cashRef[address(msg.sender)]:
                            if not cashBack[address(msg.sender)]:
                                atBlock[address(msg.sender)] = block.number
                                if admComiss[stor7]:
                                    stor11 += admComiss[stor7]
                                    payments[address(msg.sender)] += admComiss[stor7]
                                    call msg.sender with:
                                       value admComiss[stor7] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require admComiss[stor7] + cashBack[address(msg.sender)] >= admComiss[stor7]
                                cashBack[address(msg.sender)] = 0
                                stor12 = stor12 + admComiss[stor7] + cashBack[address(msg.sender)]
                                atBlock[address(msg.sender)] = block.number
                                if admComiss[stor7] + cashBack[address(msg.sender)]:
                                    stor11 = stor11 + admComiss[stor7] + cashBack[address(msg.sender)]
                                    payments[address(msg.sender)] = payments[address(msg.sender)] + admComiss[stor7] + cashBack[address(msg.sender)]
                                    call msg.sender with:
                                       value admComiss[stor7] + cashBack[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require admComiss[stor7] + cashRef[address(msg.sender)] >= admComiss[stor7]
                            cashRef[address(msg.sender)] = 0
                            stor13 = stor13 + admComiss[stor7] + cashRef[address(msg.sender)]
                            if not cashBack[address(msg.sender)]:
                                atBlock[address(msg.sender)] = block.number
                                if admComiss[stor7] + cashRef[address(msg.sender)]:
                                    stor11 = stor11 + admComiss[stor7] + cashRef[address(msg.sender)]
                                    payments[address(msg.sender)] = payments[address(msg.sender)] + admComiss[stor7] + cashRef[address(msg.sender)]
                                    call msg.sender with:
                                       value admComiss[stor7] + cashRef[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require cashBack[address(msg.sender)] >= 0
                                cashBack[address(msg.sender)] = 0
                                stor12 = stor12 + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                atBlock[address(msg.sender)] = block.number
                                if admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                    stor11 = stor11 + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    payments[address(msg.sender)] = payments[address(msg.sender)] + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    call msg.sender with:
                                       value admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.value < 10^16:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.value must be >= 0.01 ether (10 finney)'
                if msg.value:
                    require msg.value
                    require 15 * msg.value / msg.value == 15
                    admComiss[stor7] += 15 * msg.value / 100
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                if not mem[128 len 20]:
                    if investedRef[address(msg.sender)]:
                        if msg.value:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            cashRef[stor2[address(msg.sender)]] += 10 * msg.value / 100
                else:
                    if msg.sender == mem[128 len 20]:
                        revert with 0, 'referal must be != msg.sender'
                    if msg.value:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        cashRef[mem[128 len 20]] += 10 * msg.value / 100
                    investedRef[address(msg.sender)] = mem[128 len 20]
                    if not invested[address(msg.sender)]:
                        if msg.value:
                            require msg.value
                            require 3 * msg.value / msg.value == 3
                            cashBack[address(msg.sender)] += 3 * msg.value / 100
                if not invested[address(msg.sender)]:
                    stor9++
                invested[address(msg.sender)] += msg.value
                atBlock[address(msg.sender)] = block.number
                stor10 += msg.value
                if invested[address(msg.sender)] > 0:
                    stor15 += msg.value
                stor16 = msg.sender
                stor17 = msg.value
                stor18 = block.number
                atBlock[address(msg.sender)] = block.number
        else:
            require invested[address(msg.sender)]
            require 200 * invested[address(msg.sender)] / invested[address(msg.sender)] == 200
            if not 200 * invested[address(msg.sender)] / 10000:
                if not msg.value:
                    if not admComiss[stor7]:
                        if not cashRef[address(msg.sender)]:
                            if not cashBack[address(msg.sender)]:
                                atBlock[address(msg.sender)] = block.number
                            else:
                                require cashBack[address(msg.sender)] >= 0
                                cashBack[address(msg.sender)] = 0
                                stor12 += cashBack[address(msg.sender)]
                                atBlock[address(msg.sender)] = block.number
                                if cashBack[address(msg.sender)]:
                                    stor11 += cashBack[address(msg.sender)]
                                    payments[address(msg.sender)] += cashBack[address(msg.sender)]
                                    call msg.sender with:
                                       value cashBack[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require cashRef[address(msg.sender)] >= 0
                            cashRef[address(msg.sender)] = 0
                            stor13 += cashRef[address(msg.sender)]
                            if not cashBack[address(msg.sender)]:
                                atBlock[address(msg.sender)] = block.number
                                if cashRef[address(msg.sender)]:
                                    stor11 += cashRef[address(msg.sender)]
                                    payments[address(msg.sender)] += cashRef[address(msg.sender)]
                                    call msg.sender with:
                                       value cashRef[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require cashRef[address(msg.sender)] + cashBack[address(msg.sender)] >= cashRef[address(msg.sender)]
                                cashBack[address(msg.sender)] = 0
                                stor12 = stor12 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                atBlock[address(msg.sender)] = block.number
                                if cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                    stor11 = stor11 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    payments[address(msg.sender)] = payments[address(msg.sender)] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    call msg.sender with:
                                       value cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor7 != msg.sender:
                            if not cashRef[address(msg.sender)]:
                                if not cashBack[address(msg.sender)]:
                                    atBlock[address(msg.sender)] = block.number
                                else:
                                    require cashBack[address(msg.sender)] >= 0
                                    cashBack[address(msg.sender)] = 0
                                    stor12 += cashBack[address(msg.sender)]
                                    atBlock[address(msg.sender)] = block.number
                                    if cashBack[address(msg.sender)]:
                                        stor11 += cashBack[address(msg.sender)]
                                        payments[address(msg.sender)] += cashBack[address(msg.sender)]
                                        call msg.sender with:
                                           value cashBack[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require cashRef[address(msg.sender)] >= 0
                                cashRef[address(msg.sender)] = 0
                                stor13 += cashRef[address(msg.sender)]
                                if not cashBack[address(msg.sender)]:
                                    atBlock[address(msg.sender)] = block.number
                                    if cashRef[address(msg.sender)]:
                                        stor11 += cashRef[address(msg.sender)]
                                        payments[address(msg.sender)] += cashRef[address(msg.sender)]
                                        call msg.sender with:
                                           value cashRef[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require cashRef[address(msg.sender)] + cashBack[address(msg.sender)] >= cashRef[address(msg.sender)]
                                    cashBack[address(msg.sender)] = 0
                                    stor12 = stor12 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    atBlock[address(msg.sender)] = block.number
                                    if cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                        stor11 = stor11 + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                        call msg.sender with:
                                           value cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require admComiss[stor7] >= 0
                            admComiss[stor7] = 0
                            stor14 += admComiss[stor7]
                            if not cashRef[address(msg.sender)]:
                                if not cashBack[address(msg.sender)]:
                                    atBlock[address(msg.sender)] = block.number
                                    if admComiss[stor7]:
                                        stor11 += admComiss[stor7]
                                        payments[address(msg.sender)] += admComiss[stor7]
                                        call msg.sender with:
                                           value admComiss[stor7] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require admComiss[stor7] + cashBack[address(msg.sender)] >= admComiss[stor7]
                                    cashBack[address(msg.sender)] = 0
                                    stor12 = stor12 + admComiss[stor7] + cashBack[address(msg.sender)]
                                    atBlock[address(msg.sender)] = block.number
                                    if admComiss[stor7] + cashBack[address(msg.sender)]:
                                        stor11 = stor11 + admComiss[stor7] + cashBack[address(msg.sender)]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + admComiss[stor7] + cashBack[address(msg.sender)]
                                        call msg.sender with:
                                           value admComiss[stor7] + cashBack[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require admComiss[stor7] + cashRef[address(msg.sender)] >= admComiss[stor7]
                                cashRef[address(msg.sender)] = 0
                                stor13 = stor13 + admComiss[stor7] + cashRef[address(msg.sender)]
                                if not cashBack[address(msg.sender)]:
                                    atBlock[address(msg.sender)] = block.number
                                    if admComiss[stor7] + cashRef[address(msg.sender)]:
                                        stor11 = stor11 + admComiss[stor7] + cashRef[address(msg.sender)]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + admComiss[stor7] + cashRef[address(msg.sender)]
                                        call msg.sender with:
                                           value admComiss[stor7] + cashRef[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require cashBack[address(msg.sender)] >= 0
                                    cashBack[address(msg.sender)] = 0
                                    stor12 = stor12 + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    atBlock[address(msg.sender)] = block.number
                                    if admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                        stor11 = stor11 + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                        call msg.sender with:
                                           value admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.value < 10^16:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.value must be >= 0.01 ether (10 finney)'
                    if msg.value:
                        require msg.value
                        require 15 * msg.value / msg.value == 15
                        admComiss[stor7] += 15 * msg.value / 100
                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                    if not mem[128 len 20]:
                        if investedRef[address(msg.sender)]:
                            if msg.value:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                cashRef[stor2[address(msg.sender)]] += 10 * msg.value / 100
                    else:
                        if msg.sender == mem[128 len 20]:
                            revert with 0, 'referal must be != msg.sender'
                        if msg.value:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            cashRef[mem[128 len 20]] += 10 * msg.value / 100
                        investedRef[address(msg.sender)] = mem[128 len 20]
                        if not invested[address(msg.sender)]:
                            if msg.value:
                                require msg.value
                                require 3 * msg.value / msg.value == 3
                                cashBack[address(msg.sender)] += 3 * msg.value / 100
                    if not invested[address(msg.sender)]:
                        stor9++
                    invested[address(msg.sender)] += msg.value
                    atBlock[address(msg.sender)] = block.number
                    stor10 += msg.value
                    if invested[address(msg.sender)] > 0:
                        stor15 += msg.value
                    stor16 = msg.sender
                    stor17 = msg.value
                    stor18 = block.number
                    atBlock[address(msg.sender)] = block.number
            else:
                require 200 * invested[address(msg.sender)] / 10000
                require (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 200 * invested[address(msg.sender)] / 10000 == block.number - atBlock[address(msg.sender)]
                if not msg.value:
                    if not admComiss[stor7]:
                        if not cashRef[address(msg.sender)]:
                            if not cashBack[address(msg.sender)]:
                                atBlock[address(msg.sender)] = block.number
                                if (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900:
                                    stor11 += (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                                    payments[address(msg.sender)] += (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                                    call msg.sender with:
                                       value (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)] >= (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                                cashBack[address(msg.sender)] = 0
                                stor12 = stor12 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)]
                                atBlock[address(msg.sender)] = block.number
                                if ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)]:
                                    stor11 = stor11 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)]
                                    payments[address(msg.sender)] = payments[address(msg.sender)] + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)]
                                    call msg.sender with:
                                       value ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] >= (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                            cashRef[address(msg.sender)] = 0
                            stor13 = stor13 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)]
                            if not cashBack[address(msg.sender)]:
                                atBlock[address(msg.sender)] = block.number
                                if ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)]:
                                    stor11 = stor11 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)]
                                    payments[address(msg.sender)] = payments[address(msg.sender)] + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)]
                                    call msg.sender with:
                                       value ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require cashBack[address(msg.sender)] >= 0
                                cashBack[address(msg.sender)] = 0
                                stor12 = stor12 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                atBlock[address(msg.sender)] = block.number
                                if ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                    stor11 = stor11 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    payments[address(msg.sender)] = payments[address(msg.sender)] + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    call msg.sender with:
                                       value ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor7 != msg.sender:
                            if not cashRef[address(msg.sender)]:
                                if not cashBack[address(msg.sender)]:
                                    atBlock[address(msg.sender)] = block.number
                                    if (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900:
                                        stor11 += (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                                        payments[address(msg.sender)] += (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                                        call msg.sender with:
                                           value (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)] >= (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                                    cashBack[address(msg.sender)] = 0
                                    stor12 = stor12 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)]
                                    atBlock[address(msg.sender)] = block.number
                                    if ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)]:
                                        stor11 = stor11 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)]
                                        call msg.sender with:
                                           value ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashBack[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] >= (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                                cashRef[address(msg.sender)] = 0
                                stor13 = stor13 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)]
                                if not cashBack[address(msg.sender)]:
                                    atBlock[address(msg.sender)] = block.number
                                    if ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)]:
                                        stor11 = stor11 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)]
                                        call msg.sender with:
                                           value ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require cashBack[address(msg.sender)] >= 0
                                    cashBack[address(msg.sender)] = 0
                                    stor12 = stor12 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    atBlock[address(msg.sender)] = block.number
                                    if ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                        stor11 = stor11 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                        call msg.sender with:
                                           value ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] >= (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                            admComiss[stor7] = 0
                            stor14 = stor14 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7]
                            if not cashRef[address(msg.sender)]:
                                if not cashBack[address(msg.sender)]:
                                    atBlock[address(msg.sender)] = block.number
                                    if ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7]:
                                        stor11 = stor11 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7]
                                        call msg.sender with:
                                           value ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require cashBack[address(msg.sender)] >= 0
                                    cashBack[address(msg.sender)] = 0
                                    stor12 = stor12 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashBack[address(msg.sender)]
                                    atBlock[address(msg.sender)] = block.number
                                    if ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashBack[address(msg.sender)]:
                                        stor11 = stor11 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashBack[address(msg.sender)]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashBack[address(msg.sender)]
                                        call msg.sender with:
                                           value ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashBack[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require cashRef[address(msg.sender)] >= 0
                                cashRef[address(msg.sender)] = 0
                                stor13 = stor13 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashRef[address(msg.sender)]
                                if not cashBack[address(msg.sender)]:
                                    atBlock[address(msg.sender)] = block.number
                                    if ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashRef[address(msg.sender)]:
                                        stor11 = stor11 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashRef[address(msg.sender)]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashRef[address(msg.sender)]
                                        call msg.sender with:
                                           value ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashRef[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require cashBack[address(msg.sender)] >= 0
                                    cashBack[address(msg.sender)] = 0
                                    stor12 = stor12 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                    atBlock[address(msg.sender)] = block.number
                                    if ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]:
                                        stor11 = stor11 + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                        payments[address(msg.sender)] = payments[address(msg.sender)] + ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)]
                                        call msg.sender with:
                                           value ((block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900) + admComiss[stor7] + cashRef[address(msg.sender)] + cashBack[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.value < 10^16:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.value must be >= 0.01 ether (10 finney)'
                    if msg.value:
                        require msg.value
                        require 15 * msg.value / msg.value == 15
                        admComiss[stor7] += 15 * msg.value / 100
                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                    if not mem[128 len 20]:
                        if investedRef[address(msg.sender)]:
                            if msg.value:
                                require msg.value
                                require 10 * msg.value / msg.value == 10
                                cashRef[stor2[address(msg.sender)]] += 10 * msg.value / 100
                    else:
                        if msg.sender == mem[128 len 20]:
                            revert with 0, 'referal must be != msg.sender'
                        if msg.value:
                            require msg.value
                            require 10 * msg.value / msg.value == 10
                            cashRef[mem[128 len 20]] += 10 * msg.value / 100
                        investedRef[address(msg.sender)] = mem[128 len 20]
                        if not invested[address(msg.sender)]:
                            if msg.value:
                                require msg.value
                                require 3 * msg.value / msg.value == 3
                                cashBack[address(msg.sender)] += 3 * msg.value / 100
                    if not invested[address(msg.sender)]:
                        stor9++
                    invested[address(msg.sender)] += msg.value
                    atBlock[address(msg.sender)] = block.number
                    stor10 += msg.value
                    if invested[address(msg.sender)] > 0:
                        stor15 += msg.value
                    stor16 = msg.sender
                    stor17 = msg.value
                    stor18 = block.number
                    atBlock[address(msg.sender)] = block.number
                    if (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900:
                        stor11 += (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                        payments[address(msg.sender)] += (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900
                        call msg.sender with:
                           value (block.number * 200 * invested[address(msg.sender)] / 10000) - (atBlock[address(msg.sender)] * 200 * invested[address(msg.sender)] / 10000) / 5900 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
