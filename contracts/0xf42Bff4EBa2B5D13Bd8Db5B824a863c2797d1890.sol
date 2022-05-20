contract main {




// =====================  Runtime code  =====================


const TOKEN_DECIMALS = 100 * 10^6

const ETH_DECIMALS = 10^18


address WALLETAddress;
uint256 totalCrowdsaleSupply;
uint256 stor2;
uint256 stor3;
address sub_601c3ef1Address;
uint8 stor5; offset 160
address owner;
uint256 startdatePresale;
uint256 enddatePresale;
uint256 startdateICO;
uint256 enddateICO;
uint256 sub_e3b5a24e;
uint256 sub_47c7fbe3;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 eTHcollected;
uint256 minContribution;
uint256 totalCrowdsaleContributions;
uint256 stor18;
uint256 sub_0e93cd99;
uint256 sub_df159fc8;
uint256 sub_7d1a88a4;
uint256 sub_c45bb2fc;
uint256 sub_8e17e382;
uint256 stor24;
uint256 sub_5ed6ad0e;
mapping of uint256 deposited;
mapping of uint256 sub_d7df39ad;
mapping of uint256 sub_b53224f5;
uint8 stage;

function sub_0e93cd99(?) {
    return sub_0e93cd99
}

function EnddateICO() {
    return enddateICO
}

function StartdateICO() {
    return startdateICO
}

function ETHcollected() {
    return eTHcollected
}

function sub_47c7fbe3(?) {
    return sub_47c7fbe3
}

function sub_5ed6ad0e(?) {
    return sub_5ed6ad0e
}

function sub_601c3ef1(?) {
    return sub_601c3ef1Address
}

function WALLET() {
    return WALLETAddress
}

function StartdatePresale() {
    return startdatePresale
}

function sub_7d1a88a4(?) {
    return sub_7d1a88a4
}

function owner() {
    return owner
}

function sub_8e17e382(?) {
    return sub_8e17e382
}

function TotalCrowdsaleSupply() {
    return totalCrowdsaleSupply
}

function minContribution() {
    return minContribution
}

function TotalCrowdsaleContributions() {
    return totalCrowdsaleContributions
}

function sub_b53224f5(?) {
    return sub_b53224f5[arg1]
}

function stage() {
    require stage <= 3
    return stage
}

function EnddatePresale() {
    return enddatePresale
}

function sub_c45bb2fc(?) {
    return sub_c45bb2fc
}

function deposited(address arg1) {
    return deposited[arg1]
}

function sub_d7df39ad(?) {
    return sub_d7df39ad[arg1]
}

function sub_df159fc8(?) {
    return sub_df159fc8
}

function sub_e3b5a24e(?) {
    return sub_e3b5a24e
}

function pauseICO() {
    require owner == msg.sender
    stor5 = 1
}

function resumeICO() {
    require owner == msg.sender
    stor5 = 0
}

function setpricefactor(uint256 arg1) {
    require owner == msg.sender
    sub_df159fc8 = arg1
}

function startPreICO() {
    require owner == msg.sender
    require stage <= 3
    require not stage
    stage = 1
    stor5 = 0
    startdatePresale = block.timestamp
    enddatePresale = stor2 + block.timestamp
}

function startICO() {
    require owner == msg.sender
    require stage <= 3
    require stage == 1
    require block.timestamp > enddatePresale
    stage = 2
    stor5 = 0
    startdateICO = block.timestamp
    enddateICO = stor3 + block.timestamp
}

function forwardFunds() {
    require owner == msg.sender
    call WALLETAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_737482bb(?) {
    require owner == msg.sender
    require block.timestamp > enddateICO
    require owner == msg.sender
    require totalCrowdsaleSupply > 0
    require totalCrowdsaleSupply
    require totalCrowdsaleContributions == (totalCrowdsaleSupply * totalCrowdsaleContributions / totalCrowdsaleSupply) + (totalCrowdsaleContributions % totalCrowdsaleSupply)
    if totalCrowdsaleContributions / totalCrowdsaleSupply <= 50:
        stor24 = 50
    else:
        stor24 = totalCrowdsaleContributions / totalCrowdsaleSupply
    sub_5ed6ad0e = stor24
    stage = 3
}

function sub_79a42f34(?) {
    require stage <= 3
    require stage == 3
    require deposited[address(arg1)] > 0
    require sub_5ed6ad0e > 0
    require sub_5ed6ad0e
    require deposited[address(arg1)] == (sub_5ed6ad0e * deposited[address(arg1)] / sub_5ed6ad0e) + (deposited[address(arg1)] % sub_5ed6ad0e)
    require deposited[address(arg1)] / sub_5ed6ad0e == (10^10 * deposited[address(arg1)] / sub_5ed6ad0e / 10^10) + (deposited[address(arg1)] / sub_5ed6ad0e % 10^10)
    deposited[address(arg1)] = 0
    require ext_code.size(sub_601c3ef1Address)
    call sub_601c3ef1Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), deposited[address(arg1)] / sub_5ed6ad0e / 10^10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_217d7e68(?) {
    require owner == msg.sender
    require stage <= 3
    require stage == 2
    if not arg1:
        require sub_47c7fbe3 >= sub_47c7fbe3
        require sub_47c7fbe3 <= 1440 * 24 * 3600
    else:
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        require (24 * 3600 * arg1) + sub_47c7fbe3 >= sub_47c7fbe3
        require (24 * 3600 * arg1) + sub_47c7fbe3 <= 1440 * 24 * 3600
    if not arg1:
        require sub_47c7fbe3 >= sub_47c7fbe3
    else:
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        require (24 * 3600 * arg1) + sub_47c7fbe3 >= sub_47c7fbe3
        sub_47c7fbe3 += 24 * 3600 * arg1
    if not arg1:
        require enddateICO >= enddateICO
    else:
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        require (24 * 3600 * arg1) + enddateICO >= enddateICO
        enddateICO += 24 * 3600 * arg1
    emit 0x9754f253: arg1, msg.sender
}

function sub_f568a05e(?) {
    require owner == msg.sender
    require stage <= 3
    require stage == 1
    if not arg1:
        require sub_e3b5a24e >= sub_e3b5a24e
        require sub_e3b5a24e <= 1440 * 24 * 3600
    else:
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        require (24 * 3600 * arg1) + sub_e3b5a24e >= sub_e3b5a24e
        require (24 * 3600 * arg1) + sub_e3b5a24e <= 1440 * 24 * 3600
    if not arg1:
        require sub_e3b5a24e >= sub_e3b5a24e
    else:
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        require (24 * 3600 * arg1) + sub_e3b5a24e >= sub_e3b5a24e
        sub_e3b5a24e += 24 * 3600 * arg1
    if not arg1:
        require enddatePresale >= enddatePresale
    else:
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        require (24 * 3600 * arg1) + enddatePresale >= enddatePresale
        enddatePresale += 24 * 3600 * arg1
    emit 0x9754f253: arg1, msg.sender
}

function _fallback() payable {
    if calldata.size < 4:
        require totalCrowdsaleContributions < sub_7d1a88a4
        require stage <= 3
        require stage != 3
        require not stor5
        require owner != msg.sender
        require stage <= 3
        if stage != 1:
            require stage <= 3
            require stage == 2
            require block.timestamp <= enddateICO
            require msg.value + sub_b53224f5[address(msg.sender)] >= sub_b53224f5[address(msg.sender)]
            require msg.value + sub_b53224f5[address(msg.sender)] <= sub_8e17e382
            require msg.value + sub_b53224f5[address(msg.sender)] >= sub_b53224f5[address(msg.sender)]
            sub_b53224f5[address(msg.sender)] += msg.value
        else:
            if block.timestamp <= enddatePresale:
                require msg.value + sub_d7df39ad[address(msg.sender)] >= sub_d7df39ad[address(msg.sender)]
                require msg.value + sub_d7df39ad[address(msg.sender)] <= sub_c45bb2fc
                require msg.value + sub_d7df39ad[address(msg.sender)] >= sub_d7df39ad[address(msg.sender)]
                sub_d7df39ad[address(msg.sender)] += msg.value
            else:
                require stage <= 3
                require stage == 2
                require block.timestamp <= enddateICO
                require msg.value + sub_b53224f5[address(msg.sender)] >= sub_b53224f5[address(msg.sender)]
                require msg.value + sub_b53224f5[address(msg.sender)] <= sub_8e17e382
                require msg.value + sub_b53224f5[address(msg.sender)] >= sub_b53224f5[address(msg.sender)]
                sub_b53224f5[address(msg.sender)] += msg.value
        if not sub_df159fc8:
            if msg.value:
                require not 0 / msg.value
            stor13 = 0
            require totalCrowdsaleContributions >= totalCrowdsaleContributions
        else:
            require 100 * sub_df159fc8 / sub_df159fc8 == 100
            if not msg.value:
                stor13 = 0
                require totalCrowdsaleContributions >= totalCrowdsaleContributions
            else:
                require 100 * sub_df159fc8 * msg.value / msg.value == 100 * sub_df159fc8
                stor13 = 100 * sub_df159fc8 * msg.value
                require 100 * sub_df159fc8 * msg.value == (10^18 * 100 * sub_df159fc8 * msg.value / 10^18) + (100 * sub_df159fc8 * msg.value % 10^18)
                require (100 * sub_df159fc8 * msg.value / 10^18) + totalCrowdsaleContributions >= totalCrowdsaleContributions
                totalCrowdsaleContributions += 100 * sub_df159fc8 * msg.value / 10^18
        if not minContribution:
            require stor13 >= 0
        else:
            require 10^18 * minContribution / minContribution == 10^18
            require stor13 >= 10^18 * minContribution
        require stage <= 3
        if stage != 1:
            require stage <= 3
            require stage == 2
            require block.timestamp <= enddateICO
            require startdateICO <= block.timestamp
            require block.timestamp - startdateICO == (336 * 24 * 3600 * block.timestamp - startdateICO / 336 * 24 * 3600) + (block.timestamp - startdateICO % 336 * 24 * 3600)
            stor12 = block.timestamp - startdateICO / 336 * 24 * 3600
            if block.timestamp - startdateICO / 336 * 24 * 3600 != 0:
                if 1 > stor12:
                    stor18 = 0
                else:
                    stor18 = 15
            else:
                if 1 > stor12:
                    stor18 = 20
                else:
                    stor18 = 15
        else:
            if block.timestamp <= enddatePresale:
                require startdatePresale <= block.timestamp
                require block.timestamp - startdatePresale == (336 * 24 * 3600 * block.timestamp - startdatePresale / 336 * 24 * 3600) + (block.timestamp - startdatePresale % 336 * 24 * 3600)
                stor12 = block.timestamp - startdatePresale / 336 * 24 * 3600
                if block.timestamp - startdatePresale / 336 * 24 * 3600 != 0:
                    if 1 > stor12:
                        stor18 = 0
                    else:
                        stor18 = 25
                else:
                    if 1 > stor12:
                        stor18 = 30
                    else:
                        stor18 = 25
            else:
                require stage <= 3
                require stage == 2
                require block.timestamp <= enddateICO
                require startdateICO <= block.timestamp
                require block.timestamp - startdateICO == (336 * 24 * 3600 * block.timestamp - startdateICO / 336 * 24 * 3600) + (block.timestamp - startdateICO % 336 * 24 * 3600)
                stor12 = block.timestamp - startdateICO / 336 * 24 * 3600
                if block.timestamp - startdateICO / 336 * 24 * 3600 != 0:
                    if 1 > stor12:
                        stor18 = 0
                    else:
                        stor18 = 15
                else:
                    if 1 > stor12:
                        stor18 = 20
                    else:
                        stor18 = 15
        if not stor13:
            require sub_0e93cd99 >= sub_0e93cd99
        else:
            require stor18 * stor13 / stor13 == stor18
            require stor18 * stor13 == (100 * stor18 * stor13 / 100) + (stor18 * stor13 % 100)
            require stor18 * stor13 / 100 == (10^18 * stor18 * stor13 / 100 / 10^18) + (stor18 * stor13 / 100 % 10^18)
            require (stor18 * stor13 / 100 / 10^18) + sub_0e93cd99 >= sub_0e93cd99
            sub_0e93cd99 += stor18 * stor13 / 100 / 10^18
        if not stor13:
            require stor13 >= stor13
            stor14 = stor13
            require stor13 + deposited[address(msg.sender)] >= deposited[address(msg.sender)]
            deposited[address(msg.sender)] += stor13
        else:
            require stor18 * stor13 / stor13 == stor18
            require stor18 * stor13 == (100 * stor18 * stor13 / 100) + (stor18 * stor13 % 100)
            require (stor18 * stor13 / 100) + stor13 >= stor13
            stor14 = (stor18 * stor13 / 100) + stor13
            require (stor18 * stor13 / 100) + stor13 + deposited[address(msg.sender)] >= deposited[address(msg.sender)]
            deposited[address(msg.sender)] = (stor18 * stor13 / 100) + stor13 + deposited[address(msg.sender)]
        require msg.value + eTHcollected >= eTHcollected
        eTHcollected += msg.value
        emit Deposited(msg.sender, stor14);
    else:
        if uint32(call.func_hash) == setpricefactor(uint256 arg1):
            require not msg.value
            require owner == msg.sender
            sub_df159fc8 = arg1
        else:
            if unknown_0x0e93cd99(?????) == uint32(call.func_hash):
                require not msg.value
                return sub_0e93cd99
            if unknown_0x1391c5f8(?????) == uint32(call.func_hash):
                require not msg.value
                return enddateICO
            if unknown_0x18bdb1b0(?????) == uint32(call.func_hash):
                require not msg.value
                return startdateICO
            if unknown_0x21424e7d(?????) == uint32(call.func_hash):
                require not msg.value
                return eTHcollected
            if unknown_0x217d7e68(?????) == uint32(call.func_hash):
                require not msg.value
                require owner == msg.sender
                require stage <= 3
                require stage == 2
                if not arg1:
                    require sub_47c7fbe3 >= sub_47c7fbe3
                    require sub_47c7fbe3 <= 1440 * 24 * 3600
                else:
                    require 24 * 3600 * arg1 / arg1 == 24 * 3600
                    require (24 * 3600 * arg1) + sub_47c7fbe3 >= sub_47c7fbe3
                    require (24 * 3600 * arg1) + sub_47c7fbe3 <= 1440 * 24 * 3600
                if not arg1:
                    require sub_47c7fbe3 >= sub_47c7fbe3
                else:
                    require 24 * 3600 * arg1 / arg1 == 24 * 3600
                    require (24 * 3600 * arg1) + sub_47c7fbe3 >= sub_47c7fbe3
                    sub_47c7fbe3 += 24 * 3600 * arg1
                if not arg1:
                    require enddateICO >= enddateICO
                else:
                    require 24 * 3600 * arg1 / arg1 == 24 * 3600
                    require (24 * 3600 * arg1) + enddateICO >= enddateICO
                    enddateICO += 24 * 3600 * arg1
                emit 0x9754f253: arg1, msg.sender
            else:
                if unknown_0x33c77a6d(?????) == uint32(call.func_hash):
                    require not msg.value
                    require owner == msg.sender
                    stor5 = 1
                else:
                    if unknown_0x47c7fbe3(?????) == uint32(call.func_hash):
                        require not msg.value
                        return sub_47c7fbe3
                    if unknown_0x5b7f415c(?????) == uint32(call.func_hash):
                        require not msg.value
                        return 100 * 10^6
                    if unknown_0x5ed6ad0e(?????) == uint32(call.func_hash):
                        require not msg.value
                        return sub_5ed6ad0e
                    if unknown_0x601c3ef1(?????) == uint32(call.func_hash):
                        require not msg.value
                        return sub_601c3ef1Address
                    if unknown_0x6d9cdbc6(?????) == uint32(call.func_hash):
                        require not msg.value
                        return WALLETAddress
                    if unknown_0x6f6007bb(?????) == uint32(call.func_hash):
                        require not msg.value
                        return startdatePresale
                    if unknown_0x737482bb(?????) == uint32(call.func_hash):
                        require not msg.value
                        require owner == msg.sender
                        require block.timestamp > enddateICO
                        require owner == msg.sender
                        require totalCrowdsaleSupply > 0
                        require totalCrowdsaleSupply
                        require totalCrowdsaleContributions == (totalCrowdsaleSupply * totalCrowdsaleContributions / totalCrowdsaleSupply) + (totalCrowdsaleContributions % totalCrowdsaleSupply)
                        if totalCrowdsaleContributions / totalCrowdsaleSupply <= 50:
                            stor24 = 50
                        else:
                            stor24 = totalCrowdsaleContributions / totalCrowdsaleSupply
                        sub_5ed6ad0e = stor24
                        stage = 3
                    else:
                        if unknown_0x79a42f34(?????) == uint32(call.func_hash):
                            require not msg.value
                            require stage <= 3
                            require stage == 3
                            require deposited[address(arg1)] > 0
                            require sub_5ed6ad0e > 0
                            require sub_5ed6ad0e
                            require deposited[address(arg1)] == (sub_5ed6ad0e * deposited[address(arg1)] / sub_5ed6ad0e) + (deposited[address(arg1)] % sub_5ed6ad0e)
                            require deposited[address(arg1)] / sub_5ed6ad0e == (10^10 * deposited[address(arg1)] / sub_5ed6ad0e / 10^10) + (deposited[address(arg1)] / sub_5ed6ad0e % 10^10)
                            deposited[address(arg1)] = 0
                            require ext_code.size(sub_601c3ef1Address)
                            call sub_601c3ef1Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), deposited[address(arg1)] / sub_5ed6ad0e / 10^10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if unknown_0x7d1a88a4(?????) == uint32(call.func_hash):
                                require not msg.value
                                return sub_7d1a88a4
                            if unknown_0x7fa8c158(?????) == uint32(call.func_hash):
                                require not msg.value
                                require owner == msg.sender
                                require stage <= 3
                                require stage == 1
                                require block.timestamp > enddatePresale
                                stage = 2
                                stor5 = 0
                                startdateICO = block.timestamp
                                enddateICO = stor3 + block.timestamp
                            else:
                                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return owner
                                if unknown_0x8e17e382(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return sub_8e17e382
                                if unknown_0x92cd1ff2(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return 10^18
                                if unknown_0x9cbd7da5(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    require owner == msg.sender
                                    stor5 = 0
                                else:
                                    if unknown_0x9d735286(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        require owner == msg.sender
                                        call WALLETAddress with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if unknown_0xaa85048a(?????) == uint32(call.func_hash):
                                            require not msg.value
                                            return totalCrowdsaleSupply
                                        if unknown_0xaaffadf3(?????) == uint32(call.func_hash):
                                            require not msg.value
                                            return minContribution
                                        if unknown_0xb5217c39(?????) == uint32(call.func_hash):
                                            require not msg.value
                                            return totalCrowdsaleContributions
                                        if unknown_0xb53224f5(?????) == uint32(call.func_hash):
                                            require not msg.value
                                            return sub_b53224f5[address(arg1)]
                                        if unknown_0xbc40b52a(?????) == uint32(call.func_hash):
                                            require not msg.value
                                            require owner == msg.sender
                                            require stage <= 3
                                            require not stage
                                            stage = 1
                                            stor5 = 0
                                            startdatePresale = block.timestamp
                                            enddatePresale = stor2 + block.timestamp
                                        else:
                                            if unknown_0xc040e6b8(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                require stage <= 3
                                                return stage
                                            if unknown_0xc203367a(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return enddatePresale
                                            if unknown_0xc45bb2fc(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return sub_c45bb2fc
                                            if unknown_0xcb13cddb(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return deposited[address(arg1)]
                                            if unknown_0xd7df39ad(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return sub_d7df39ad[address(arg1)]
                                            if unknown_0xdf159fc8(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return sub_df159fc8
                                            if unknown_0xe3b5a24e(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                return sub_e3b5a24e
                                            if unknown_0xf568a05e(?????) == uint32(call.func_hash):
                                                require not msg.value
                                                require owner == msg.sender
                                                require stage <= 3
                                                require stage == 1
                                                if not arg1:
                                                    require sub_e3b5a24e >= sub_e3b5a24e
                                                    require sub_e3b5a24e <= 1440 * 24 * 3600
                                                else:
                                                    require 24 * 3600 * arg1 / arg1 == 24 * 3600
                                                    require (24 * 3600 * arg1) + sub_e3b5a24e >= sub_e3b5a24e
                                                    require (24 * 3600 * arg1) + sub_e3b5a24e <= 1440 * 24 * 3600
                                                if not arg1:
                                                    require sub_e3b5a24e >= sub_e3b5a24e
                                                else:
                                                    require 24 * 3600 * arg1 / arg1 == 24 * 3600
                                                    require (24 * 3600 * arg1) + sub_e3b5a24e >= sub_e3b5a24e
                                                    sub_e3b5a24e += 24 * 3600 * arg1
                                                if not arg1:
                                                    require enddatePresale >= enddatePresale
                                                else:
                                                    require 24 * 3600 * arg1 / arg1 == 24 * 3600
                                                    require (24 * 3600 * arg1) + enddatePresale >= enddatePresale
                                                    enddatePresale += 24 * 3600 * arg1
                                                emit 0x9754f253: arg1, msg.sender
                                            else:
                                                require totalCrowdsaleContributions < sub_7d1a88a4
                                                require stage <= 3
                                                require stage != 3
                                                require not stor5
                                                require owner != msg.sender
                                                require stage <= 3
                                                if stage != 1:
                                                    require stage <= 3
                                                    require stage == 2
                                                    require block.timestamp <= enddateICO
                                                    require msg.value + sub_b53224f5[address(msg.sender)] >= sub_b53224f5[address(msg.sender)]
                                                    require msg.value + sub_b53224f5[address(msg.sender)] <= sub_8e17e382
                                                    require msg.value + sub_b53224f5[address(msg.sender)] >= sub_b53224f5[address(msg.sender)]
                                                    sub_b53224f5[address(msg.sender)] += msg.value
                                                else:
                                                    if block.timestamp <= enddatePresale:
                                                        require msg.value + sub_d7df39ad[address(msg.sender)] >= sub_d7df39ad[address(msg.sender)]
                                                        require msg.value + sub_d7df39ad[address(msg.sender)] <= sub_c45bb2fc
                                                        require msg.value + sub_d7df39ad[address(msg.sender)] >= sub_d7df39ad[address(msg.sender)]
                                                        sub_d7df39ad[address(msg.sender)] += msg.value
                                                    else:
                                                        require stage <= 3
                                                        require stage == 2
                                                        require block.timestamp <= enddateICO
                                                        require msg.value + sub_b53224f5[address(msg.sender)] >= sub_b53224f5[address(msg.sender)]
                                                        require msg.value + sub_b53224f5[address(msg.sender)] <= sub_8e17e382
                                                        require msg.value + sub_b53224f5[address(msg.sender)] >= sub_b53224f5[address(msg.sender)]
                                                        sub_b53224f5[address(msg.sender)] += msg.value
                                                if not sub_df159fc8:
                                                    if msg.value:
                                                        require not 0 / msg.value
                                                    stor13 = 0
                                                    require totalCrowdsaleContributions >= totalCrowdsaleContributions
                                                else:
                                                    require 100 * sub_df159fc8 / sub_df159fc8 == 100
                                                    if not msg.value:
                                                        stor13 = 0
                                                        require totalCrowdsaleContributions >= totalCrowdsaleContributions
                                                    else:
                                                        require 100 * sub_df159fc8 * msg.value / msg.value == 100 * sub_df159fc8
                                                        stor13 = 100 * sub_df159fc8 * msg.value
                                                        require 100 * sub_df159fc8 * msg.value == (10^18 * 100 * sub_df159fc8 * msg.value / 10^18) + (100 * sub_df159fc8 * msg.value % 10^18)
                                                        require (100 * sub_df159fc8 * msg.value / 10^18) + totalCrowdsaleContributions >= totalCrowdsaleContributions
                                                        totalCrowdsaleContributions += 100 * sub_df159fc8 * msg.value / 10^18
                                                if not minContribution:
                                                    require stor13 >= 0
                                                else:
                                                    require 10^18 * minContribution / minContribution == 10^18
                                                    require stor13 >= 10^18 * minContribution
                                                require stage <= 3
                                                if stage != 1:
                                                    require stage <= 3
                                                    require stage == 2
                                                    require block.timestamp <= enddateICO
                                                    require startdateICO <= block.timestamp
                                                    require block.timestamp - startdateICO == (336 * 24 * 3600 * block.timestamp - startdateICO / 336 * 24 * 3600) + (block.timestamp - startdateICO % 336 * 24 * 3600)
                                                    stor12 = block.timestamp - startdateICO / 336 * 24 * 3600
                                                    if block.timestamp - startdateICO / 336 * 24 * 3600 != 0:
                                                        if 1 > stor12:
                                                            stor18 = 0
                                                        else:
                                                            stor18 = 15
                                                    else:
                                                        if 1 > stor12:
                                                            stor18 = 20
                                                        else:
                                                            stor18 = 15
                                                else:
                                                    if block.timestamp <= enddatePresale:
                                                        require startdatePresale <= block.timestamp
                                                        require block.timestamp - startdatePresale == (336 * 24 * 3600 * block.timestamp - startdatePresale / 336 * 24 * 3600) + (block.timestamp - startdatePresale % 336 * 24 * 3600)
                                                        stor12 = block.timestamp - startdatePresale / 336 * 24 * 3600
                                                        if block.timestamp - startdatePresale / 336 * 24 * 3600 != 0:
                                                            if 1 > stor12:
                                                                stor18 = 0
                                                            else:
                                                                stor18 = 25
                                                        else:
                                                            if 1 > stor12:
                                                                stor18 = 30
                                                            else:
                                                                stor18 = 25
                                                    else:
                                                        require stage <= 3
                                                        require stage == 2
                                                        require block.timestamp <= enddateICO
                                                        require startdateICO <= block.timestamp
                                                        require block.timestamp - startdateICO == (336 * 24 * 3600 * block.timestamp - startdateICO / 336 * 24 * 3600) + (block.timestamp - startdateICO % 336 * 24 * 3600)
                                                        stor12 = block.timestamp - startdateICO / 336 * 24 * 3600
                                                        if block.timestamp - startdateICO / 336 * 24 * 3600 != 0:
                                                            if 1 > stor12:
                                                                stor18 = 0
                                                            else:
                                                                stor18 = 15
                                                        else:
                                                            if 1 > stor12:
                                                                stor18 = 20
                                                            else:
                                                                stor18 = 15
                                                if not stor13:
                                                    require sub_0e93cd99 >= sub_0e93cd99
                                                else:
                                                    require stor18 * stor13 / stor13 == stor18
                                                    require stor18 * stor13 == (100 * stor18 * stor13 / 100) + (stor18 * stor13 % 100)
                                                    require stor18 * stor13 / 100 == (10^18 * stor18 * stor13 / 100 / 10^18) + (stor18 * stor13 / 100 % 10^18)
                                                    require (stor18 * stor13 / 100 / 10^18) + sub_0e93cd99 >= sub_0e93cd99
                                                    sub_0e93cd99 += stor18 * stor13 / 100 / 10^18
                                                if not stor13:
                                                    require stor13 >= stor13
                                                    stor14 = stor13
                                                    require stor13 + deposited[address(msg.sender)] >= deposited[address(msg.sender)]
                                                    deposited[address(msg.sender)] += stor13
                                                else:
                                                    require stor18 * stor13 / stor13 == stor18
                                                    require stor18 * stor13 == (100 * stor18 * stor13 / 100) + (stor18 * stor13 % 100)
                                                    require (stor18 * stor13 / 100) + stor13 >= stor13
                                                    stor14 = (stor18 * stor13 / 100) + stor13
                                                    require (stor18 * stor13 / 100) + stor13 + deposited[address(msg.sender)] >= deposited[address(msg.sender)]
                                                    deposited[address(msg.sender)] = (stor18 * stor13 / 100) + stor13 + deposited[address(msg.sender)]
                                                require msg.value + eTHcollected >= eTHcollected
                                                eTHcollected += msg.value
                                                emit Deposited(msg.sender, stor14);
}



}
