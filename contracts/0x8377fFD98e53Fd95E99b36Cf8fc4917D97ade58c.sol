contract main {




// =====================  Runtime code  =====================


const sub_63615abf(?) = eth.balance(this.address)

const harvestabledivs = ext_call.return_data[0]

const amountofp3d = ext_call.return_data[0]


uint256 sub_126879e6;
uint256 sub_cbc774ba;
uint256 nextFormation;
mapping of uint256 sub_8da12b2b;
mapping of uint256 sub_500d7c74;
mapping of uint256 stor5;
address stor6;
address stor7;
mapping of struct formation;
uint8 stor9;
uint256 stor10;
uint256 stor11;

function sub_126879e6(?) {
    return sub_126879e6
}

function sub_500d7c74(?) {
    require calldata.size - 4 >= 32
    return sub_500d7c74[arg1]
}

function nextFormation() {
    return nextFormation
}

function sub_8da12b2b(?) {
    return sub_8da12b2b[address(msg.sender)]
}

function formation(uint256 arg1) {
    require calldata.size - 4 >= 32
    return formation[arg1].field_0, formation[arg1].field_160
}

function sub_cbc774ba(?) {
    return sub_cbc774ba
}

function sub_d5a0eb97(?) {
    require calldata.size - 4 >= 32
    return sub_8da12b2b[arg1]
}

function sub_5aa8ad82(?) {
    require stor5[address(msg.sender)] <= block.number
    return (block.number - stor5[address(msg.sender)])
}

function sub_926d9181(?) {
    require sub_500d7c74[address(msg.sender)] + sub_cbc774ba >= sub_500d7c74[address(msg.sender)]
    return (sub_500d7c74[address(msg.sender)] + sub_cbc774ba)
}

function sub_e5ec5d8a(?) {
    require sub_500d7c74[address(msg.sender)] <= block.number
    if sub_cbc774ba > block.number - sub_500d7c74[address(msg.sender)]:
        return 0
    return 1
}

function sub_5f3ebe0a(?) {
    require stor10 <= block.number
    if block.number - stor10:
        require block.number - stor10
        require (block.number * sub_126879e6) - (stor10 * sub_126879e6) / block.number - stor10 == sub_126879e6
    require stor11 >= 0
    return ((block.number * sub_126879e6) - (stor10 * sub_126879e6) + stor11)
}

function P3DDivstocontract() {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    staticcall 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.withdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7 = msg.sender
}

function sub_aaaea047(?) payable {
    require msg.value == 2 * 10^17
    require not stor9
    sub_8da12b2b[address(msg.sender)] += 3
    formation[stor2].field_0 = msg.sender
    formation[stor2].field_160 = 1
    nextFormation++
    formation[stor2].field_0 = msg.sender
    formation[stor2].field_160 = 2
    nextFormation++
    formation[stor2].field_0 = msg.sender
    formation[stor2].field_160 = 3
    nextFormation++
    sub_500d7c74[address(msg.sender)] = block.number
    stor5[address(msg.sender)] = block.number
    sub_126879e6 += 3
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
       value 2 * 10^15 wei
         gas gas_remaining wei
        args stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor6 with:
       value 2 * 10^15 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = block.number
    stor9 = 1
}

function _fallback() payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value == 2 * 10^17:
        if not sub_8da12b2b[address(msg.sender)]:
            sub_8da12b2b[address(msg.sender)] = 3
            formation[stor2].field_0 = msg.sender
            formation[stor2].field_160 = 1
            formation[stor2 + 1].field_0 = msg.sender
            formation[stor2 + 1].field_160 = 2
            formation[stor2 + 2].field_0 = msg.sender
            formation[stor2 + 2].field_160 = 3
            nextFormation += 3
            sub_500d7c74[address(msg.sender)] = block.number
            stor5[address(msg.sender)] = block.number
            sub_126879e6 += 3
            require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
            call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
               value 2 * 10^15 wei
                 gas gas_remaining wei
                args stor7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call stor6 with:
               value 2 * 10^15 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_a81005bf(?) payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value == 2 * 10^17:
        if not sub_8da12b2b[address(msg.sender)]:
            sub_8da12b2b[address(msg.sender)] = 3
            formation[stor2].field_0 = msg.sender
            formation[stor2].field_160 = 1
            formation[stor2 + 1].field_0 = msg.sender
            formation[stor2 + 1].field_160 = 2
            formation[stor2 + 2].field_0 = msg.sender
            formation[stor2 + 2].field_160 = 3
            nextFormation += 3
            sub_500d7c74[address(msg.sender)] = block.number
            stor5[address(msg.sender)] = block.number
            sub_126879e6 += 3
            require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
            call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.buy(address arg1) with:
               value 2 * 10^15 wei
                 gas gas_remaining wei
                args stor7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call stor6 with:
               value 2 * 10^15 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_39db10e7(?) {
    require calldata.size - 4 >= 32
    require sub_8da12b2b[address(msg.sender)] > 0
    require block.number > sub_500d7c74[address(msg.sender)] + sub_cbc774ba
    require stor10 <= block.number
    if block.number - stor10:
        require block.number - stor10
        require (block.number * sub_126879e6) - (stor10 * sub_126879e6) / block.number - stor10 == sub_126879e6
    require stor11 >= 0
    stor11 = (block.number * sub_126879e6) - (stor10 * sub_126879e6) + stor11
    stor10 = block.number
    sub_500d7c74[address(msg.sender)] = block.number
    require nextFormation
    if formation[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_160 == 1:
        nextFormation--
        formation[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0 = formation[stor2 - 1].field_0
        formation[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_160 = formation[stor2 - 1].field_160
        formation[stor2].field_0 = 0
        formation[stor2].field_160 = 0
        require stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] <= block.number
        if eth.balance(this.address):
            require eth.balance(this.address)
            require (block.number * eth.balance(this.address)) - (stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] * eth.balance(this.address)) / eth.balance(this.address) == block.number - stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0]
        require stor11 > 0
        require stor11
        require block.number - stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] <= stor11
        stor11 = stor11 - block.number + stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0]
        sub_126879e6--
        sub_8da12b2b[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0]--
        call msg.sender with:
           value (block.number * eth.balance(this.address)) - (stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] * eth.balance(this.address)) / stor11 / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_9a0c1269(?) {
    require calldata.size - 4 >= 32
    require sub_8da12b2b[address(msg.sender)] > 0
    require block.number > sub_500d7c74[address(msg.sender)] + sub_cbc774ba
    require stor10 <= block.number
    if block.number - stor10:
        require block.number - stor10
        require (block.number * sub_126879e6) - (stor10 * sub_126879e6) / block.number - stor10 == sub_126879e6
    require stor11 >= 0
    stor11 = (block.number * sub_126879e6) - (stor10 * sub_126879e6) + stor11
    stor10 = block.number
    sub_500d7c74[address(msg.sender)] = block.number
    require nextFormation
    if formation[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_160 == 3:
        nextFormation--
        formation[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0 = formation[stor2 - 1].field_0
        formation[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_160 = formation[stor2 - 1].field_160
        formation[stor2].field_0 = 0
        formation[stor2].field_160 = 0
        require stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] <= block.number
        if eth.balance(this.address):
            require eth.balance(this.address)
            require (block.number * eth.balance(this.address)) - (stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] * eth.balance(this.address)) / eth.balance(this.address) == block.number - stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0]
        require stor11 > 0
        require stor11
        require block.number - stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] <= stor11
        stor11 = stor11 - block.number + stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0]
        sub_126879e6--
        sub_8da12b2b[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0]--
        call msg.sender with:
           value (block.number * eth.balance(this.address)) - (stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] * eth.balance(this.address)) / stor11 / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_a44ffec7(?) {
    require calldata.size - 4 >= 32
    require sub_8da12b2b[address(msg.sender)] > 0
    require block.number > sub_500d7c74[address(msg.sender)] + sub_cbc774ba
    require stor10 <= block.number
    if block.number - stor10:
        require block.number - stor10
        require (block.number * sub_126879e6) - (stor10 * sub_126879e6) / block.number - stor10 == sub_126879e6
    require stor11 >= 0
    stor11 = (block.number * sub_126879e6) - (stor10 * sub_126879e6) + stor11
    stor10 = block.number
    sub_500d7c74[address(msg.sender)] = block.number
    require nextFormation
    if formation[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_160 == 2:
        nextFormation--
        formation[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0 = formation[stor2 - 1].field_0
        formation[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_160 = formation[stor2 - 1].field_160
        formation[stor2].field_0 = 0
        formation[stor2].field_160 = 0
        require stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] <= block.number
        if eth.balance(this.address):
            require eth.balance(this.address)
            require (block.number * eth.balance(this.address)) - (stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] * eth.balance(this.address)) / eth.balance(this.address) == block.number - stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0]
        require stor11 > 0
        require stor11
        require block.number - stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] <= stor11
        stor11 = stor11 - block.number + stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0]
        sub_126879e6--
        sub_8da12b2b[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0]--
        call msg.sender with:
           value (block.number * eth.balance(this.address)) - (stor5[stor8[sha3(block.timestamp, block.difficulty, arg1) % stor2].field_0] * eth.balance(this.address)) / stor11 / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_f0385bc4(?) {
    require calldata.size - 4 >= 32
    require sub_8da12b2b[address(msg.sender)] > 0
    require block.number > sub_500d7c74[address(msg.sender)] + sub_cbc774ba
    if formation[arg1].field_0 == msg.sender:
        require stor10 <= block.number
        if block.number - stor10:
            require block.number - stor10
            require (block.number * sub_126879e6) - (stor10 * sub_126879e6) / block.number - stor10 == sub_126879e6
        require stor11 >= 0
        stor11 = (block.number * sub_126879e6) - (stor10 * sub_126879e6) + stor11
        stor10 = block.number
        sub_500d7c74[address(msg.sender)] = block.number
        require sub_500d7c74[address(msg.sender)] + sub_cbc774ba >= sub_500d7c74[address(msg.sender)]
        if block.number >= sub_500d7c74[address(msg.sender)] + sub_cbc774ba:
            nextFormation--
            formation[arg1].field_0 = formation[stor2 - 1].field_0
            formation[arg1].field_160 = formation[stor2 - 1].field_160
            formation[stor2].field_0 = 0
            formation[stor2].field_160 = 0
            sub_126879e6--
            sub_8da12b2b[address(msg.sender)]--
            require stor5[address(msg.sender)] <= block.number
            if block.number - stor5[address(msg.sender)] >= 69420:
                if eth.balance(this.address):
                    require eth.balance(this.address)
                    require 69420 * eth.balance(this.address) / eth.balance(this.address) == 69420
                if 69420 * eth.balance(this.address):
                    require 69420 * eth.balance(this.address)
                    require 4 * 69420 * eth.balance(this.address) / 69420 * eth.balance(this.address) == 4
                require stor11 > 0
                require stor11
                require block.number - stor5[address(msg.sender)] <= stor11
                stor11 = stor11 - block.number + stor5[address(msg.sender)]
                call msg.sender with:
                   value 4 * 69420 * eth.balance(this.address) / stor11 wei
                     gas 2300 * is_zero(value) wei
            else:
                if block.number - stor5[address(msg.sender)]:
                    require block.number - stor5[address(msg.sender)]
                    require (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)]) / block.number - stor5[address(msg.sender)] == block.number - stor5[address(msg.sender)]
                if (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)]):
                    require (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)])
                    require (10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)]) == 10000
                require ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000 >= (10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000
                if eth.balance(this.address):
                    require eth.balance(this.address)
                    require (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) / eth.balance(this.address) == block.number - stor5[address(msg.sender)]
                if (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                    require (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address))
                    require (10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) == ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000
                require stor11 > 0
                require stor11
                require block.number - stor5[address(msg.sender)] <= stor11
                stor11 = stor11 - block.number + stor5[address(msg.sender)]
                call msg.sender with:
                   value (10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_2dbb323f(?) {
    require stor5[address(msg.sender)] <= block.number
    if block.number - stor5[address(msg.sender)] >= 69420:
        if not eth.balance(this.address):
            if not 69420 * eth.balance(this.address):
                require stor11 > 0
                if stor11:
                    return (4 * 69420 * eth.balance(this.address) / stor11)
            else:
                if 69420 * eth.balance(this.address):
                    require 4 * 69420 * eth.balance(this.address) / 69420 * eth.balance(this.address) == 4
                    require stor11 > 0
                    if stor11:
                        return (4 * 69420 * eth.balance(this.address) / stor11)
        else:
            if eth.balance(this.address):
                require 69420 * eth.balance(this.address) / eth.balance(this.address) == 69420
                if not 69420 * eth.balance(this.address):
                    require stor11 > 0
                    if stor11:
                        return (4 * 69420 * eth.balance(this.address) / stor11)
                else:
                    if 69420 * eth.balance(this.address):
                        require 4 * 69420 * eth.balance(this.address) / 69420 * eth.balance(this.address) == 4
                        require stor11 > 0
                        if stor11:
                            return (4 * 69420 * eth.balance(this.address) / stor11)
    else:
        if not block.number - stor5[address(msg.sender)]:
            if not (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)]):
                require ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000 >= (10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000
                if not eth.balance(this.address):
                    if not (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                        require stor11 > 0
                        if stor11:
                            return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                    else:
                        if (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                            require (10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) == ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000
                            require stor11 > 0
                            if stor11:
                                return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                else:
                    if eth.balance(this.address):
                        require (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) / eth.balance(this.address) == block.number - stor5[address(msg.sender)]
                        if not (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                            require stor11 > 0
                            if stor11:
                                return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                        else:
                            if (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                require (10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) == ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000
                                require stor11 > 0
                                if stor11:
                                    return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
            else:
                if (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)]):
                    require (10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)]) == 10000
                    require ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000 >= (10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000
                    if not eth.balance(this.address):
                        if not (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                            require stor11 > 0
                            if stor11:
                                return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                        else:
                            if (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                require (10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) == ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000
                                require stor11 > 0
                                if stor11:
                                    return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                    else:
                        if eth.balance(this.address):
                            require (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) / eth.balance(this.address) == block.number - stor5[address(msg.sender)]
                            if not (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                require stor11 > 0
                                if stor11:
                                    return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                            else:
                                if (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                    require (10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) == ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000
                                    require stor11 > 0
                                    if stor11:
                                        return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
        else:
            if block.number - stor5[address(msg.sender)]:
                require (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)]) / block.number - stor5[address(msg.sender)] == block.number - stor5[address(msg.sender)]
                if not (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)]):
                    require ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000 >= (10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000
                    if not eth.balance(this.address):
                        if not (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                            require stor11 > 0
                            if stor11:
                                return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                        else:
                            if (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                require (10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) == ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000
                                require stor11 > 0
                                if stor11:
                                    return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                    else:
                        if eth.balance(this.address):
                            require (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) / eth.balance(this.address) == block.number - stor5[address(msg.sender)]
                            if not (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                require stor11 > 0
                                if stor11:
                                    return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                            else:
                                if (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                    require (10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) == ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000
                                    require stor11 > 0
                                    if stor11:
                                        return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                else:
                    if (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)]):
                        require (10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / (block.number * block.number) - (stor5[address(msg.sender)] * block.number) - (block.number * stor5[address(msg.sender)]) + (stor5[address(msg.sender)] * stor5[address(msg.sender)]) == 10000
                        require ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000 >= (10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000
                        if not eth.balance(this.address):
                            if not (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                require stor11 > 0
                                if stor11:
                                    return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                            else:
                                if (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                    require (10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) == ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000
                                    require stor11 > 0
                                    if stor11:
                                        return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                        else:
                            if eth.balance(this.address):
                                require (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) / eth.balance(this.address) == block.number - stor5[address(msg.sender)]
                                if not (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                    require stor11 > 0
                                    if stor11:
                                        return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
                                else:
                                    if (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)):
                                        require (10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / (block.number * eth.balance(this.address)) - (stor5[address(msg.sender)] * eth.balance(this.address)) == ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000) + 10000
                                        require stor11 > 0
                                        if stor11:
                                            return ((10000 * block.number * eth.balance(this.address)) + ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * block.number * eth.balance(this.address)) - (10000 * stor5[address(msg.sender)] * eth.balance(this.address)) - ((10000 * block.number * block.number) - (10000 * stor5[address(msg.sender)] * block.number) - (10000 * block.number * stor5[address(msg.sender)]) + (10000 * stor5[address(msg.sender)] * stor5[address(msg.sender)]) / 1953640000 * stor5[address(msg.sender)] * eth.balance(this.address)) / stor11 / 10000)
    revert
}



}
