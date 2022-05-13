contract main {




// =====================  Runtime code  =====================


uint8 currentState;
address sub_04f248f4Address; offset 8
address hostAddress;
address stor2;
uint256 sub_3eddd428;
uint256 minimumContribution;
uint256 sub_d830a52c;
uint256 sub_a23fb7a3;
uint256 stor9;
uint256 baseRate;
uint256 sub_f8a4b734;
uint256 sub_4bd27cfc;
uint256 sub_340188a2;
uint256 stor16;
uint8 stor17;
mapping of uint256 contribution;
mapping of uint256 sub_9923eead;
mapping of uint256 stor20;
mapping of address sub_92e176ef;

function sub_04f248f4(?) {
    return sub_04f248f4Address
}

function sub_08caa910(?) {
    return sub_a23fb7a3
}

function getHost() {
    return hostAddress
}

function getContribution(address arg1) {
    return contribution[address(arg1)]
}

function sub_340188a2(?) {
    return sub_340188a2
}

function getCurrentState() {
    require currentState <= 4
    return currentState
}

function sub_3eddd428(?) {
    return sub_3eddd428
}

function sub_4bd27cfc(?) {
    return sub_4bd27cfc
}

function sub_92e176ef(?) {
    return sub_92e176ef[arg1]
}

function sub_9923eead(?) {
    return sub_9923eead[address(arg1)]
}

function sub_99966b1f(?) {
    return contribution[stor1]
}

function sub_a23fb7a3(?) {
    return sub_a23fb7a3
}

function getBaseRate() {
    return baseRate
}

function sub_d830a52c(?) {
    return sub_d830a52c
}

function sub_f24bbb63(?) {
    return bool(stor17)
}

function getMinimumContribution() {
    return minimumContribution
}

function sub_f8a4b734(?) {
    return sub_f8a4b734
}

function getToken(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f856f373(?) payable {
    require hostAddress == msg.sender
    require currentState <= 4
    if currentState:
        require currentState <= 4
        require currentState == 2
    if 1 == bool(stor17):
        call sub_04f248f4Address with:
           value sub_a23fb7a3 wei
             gas 300000 wei
    else:
        sub_04f248f4Address = arg1
        call arg1 with:
           value sub_a23fb7a3 wei
             gas 300000 wei
        stor17 = 1
    currentState = 1
    return eth.balance(this.address)
}

function cancelPool() {
    require hostAddress == msg.sender
    require currentState <= 4
    if currentState:
        require currentState <= 4
        require currentState == 2
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < stor9:
        require sub_9923eead[stor21[idx]] <= sub_9923eead[stor21[idx]]
        sub_9923eead[stor21[idx]] = 0
        stor20[stor21[idx]] = 0
        require sub_9923eead[stor21[idx]] + contribution[stor21[idx]] >= contribution[stor21[idx]]
        require contribution[stor21[idx]] + sub_d830a52c >= sub_d830a52c
        sub_d830a52c += contribution[stor21[idx]]
        require sub_9923eead[stor21[idx]] <= sub_340188a2
        sub_340188a2 -= sub_9923eead[stor21[idx]]
        require contribution[stor21[idx]] <= sub_a23fb7a3
        sub_a23fb7a3 -= contribution[stor21[idx]]
        mem[0] = sub_92e176ef[idx]
        mem[32] = 18
        contribution[stor21[idx]] = 0
        call sub_92e176ef[idx] with:
           value sub_9923eead[stor21[idx]] + contribution[stor21[idx]] wei
             gas 300000 wei
        s = sub_9923eead[stor21[idx]] + contribution[stor21[idx]]
        s = sub_9923eead[stor21[idx]]
        s = sub_92e176ef[idx]
        idx = idx + 1
        continue 
    currentState = 4
}

function sub_5318cd5f(?) {
    require hostAddress == msg.sender
    require currentState <= 4
    if currentState != 1:
        require currentState <= 4
        require currentState == 3
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < stor9:
        mem[0] = sub_92e176ef[idx]
        mem[32] = 20
        if not stor20[stor21[idx]]:
            require baseRate
            mem[100] = sub_92e176ef[idx]
            mem[132] = 0 / baseRate
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_92e176ef[idx], 0 / baseRate
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            currentState = 3
            s = 0 / baseRate
            s = stor20[stor21[idx]]
            s = sub_92e176ef[idx]
            idx = idx + 1
            continue 
        require ext_call.return_data[0] * stor20[stor21[idx]] / stor20[stor21[idx]] == ext_call.return_data[0]
        require baseRate
        mem[100] = sub_92e176ef[idx]
        mem[132] = ext_call.return_data[0] * stor20[stor21[idx]] / baseRate
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args sub_92e176ef[idx], ext_call.return_data[0] * stor20[stor21[idx]] / baseRate
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        currentState = 3
        s = ext_call.return_data[0] * stor20[stor21[idx]] / baseRate
        s = stor20[stor21[idx]]
        s = sub_92e176ef[idx]
        idx = idx + 1
        continue 
    call hostAddress with:
       value stor16 wei
         gas 300000 wei
    return 0
}

function withdraw(uint256 arg1) {
    require currentState <= 4
    if currentState != 2:
        require currentState <= 4
        require not currentState
    require 0 <= contribution[address(msg.sender)]
    require arg1 <= contribution[address(msg.sender)]
    if contribution[address(msg.sender)] - arg1 < minimumContribution:
        require contribution[address(msg.sender)] == arg1
    if not arg1:
        require baseRate
        if 0 <= contribution[address(msg.sender)]:
            require 0 / baseRate <= sub_340188a2
            sub_340188a2 -= 0 / baseRate
            require 0 / baseRate <= sub_9923eead[address(msg.sender)]
            sub_9923eead[address(msg.sender)] -= 0 / baseRate
            require 0 / baseRate <= stor16
            stor16 -= 0 / baseRate
            require 0 <= contribution[address(msg.sender)]
            require 0 <= sub_a23fb7a3
            require sub_d830a52c >= sub_d830a52c
            if sub_d830a52c:
                require currentState <= 4
                if currentState == 2:
                    currentState = 0
            call msg.sender with:
               value 0 / baseRate wei
                 gas 300000 wei
            s = 0
            idx = 0
            while idx < stor9:
                if not contribution[stor21[idx]]:
                    require sub_a23fb7a3
                    mem[0] = sub_92e176ef[idx]
                    mem[32] = 20
                    stor20[stor21[idx]] = 0 / sub_a23fb7a3
                else:
                    require baseRate * contribution[stor21[idx]] / contribution[stor21[idx]] == baseRate
                    require sub_a23fb7a3
                    mem[0] = sub_92e176ef[idx]
                    mem[32] = 20
                    stor20[stor21[idx]] = baseRate * contribution[stor21[idx]] / sub_a23fb7a3
                s = sub_92e176ef[idx]
                idx = idx + 1
                continue 
    else:
        require arg1 / arg1 == 1
        if not arg1:
            require baseRate
            if arg1 <= contribution[address(msg.sender)]:
                require 0 / baseRate <= sub_340188a2
                sub_340188a2 -= 0 / baseRate
                require 0 / baseRate <= sub_9923eead[address(msg.sender)]
                sub_9923eead[address(msg.sender)] -= 0 / baseRate
                require 0 / baseRate <= stor16
                stor16 -= 0 / baseRate
                require arg1 <= contribution[address(msg.sender)]
                contribution[address(msg.sender)] -= arg1
                require arg1 <= sub_a23fb7a3
                sub_a23fb7a3 -= arg1
                require arg1 + sub_d830a52c >= sub_d830a52c
                sub_d830a52c += arg1
                if arg1 + sub_d830a52c:
                    require currentState <= 4
                    if currentState == 2:
                        currentState = 0
                call msg.sender with:
                   value arg1 + (0 / baseRate) wei
                     gas 300000 wei
                s = 0
                idx = 0
                while idx < stor9:
                    if not contribution[stor21[idx]]:
                        require sub_a23fb7a3
                        mem[0] = sub_92e176ef[idx]
                        mem[32] = 20
                        stor20[stor21[idx]] = 0 / sub_a23fb7a3
                    else:
                        require baseRate * contribution[stor21[idx]] / contribution[stor21[idx]] == baseRate
                        require sub_a23fb7a3
                        mem[0] = sub_92e176ef[idx]
                        mem[32] = 20
                        stor20[stor21[idx]] = baseRate * contribution[stor21[idx]] / sub_a23fb7a3
                    s = sub_92e176ef[idx]
                    idx = idx + 1
                    continue 
        else:
            require sub_f8a4b734 * arg1 / arg1 == sub_f8a4b734
            require baseRate
            if arg1 <= contribution[address(msg.sender)]:
                require sub_f8a4b734 * arg1 / baseRate <= sub_340188a2
                sub_340188a2 -= sub_f8a4b734 * arg1 / baseRate
                require sub_f8a4b734 * arg1 / baseRate <= sub_9923eead[address(msg.sender)]
                sub_9923eead[address(msg.sender)] -= sub_f8a4b734 * arg1 / baseRate
                require sub_f8a4b734 * arg1 / baseRate <= stor16
                stor16 -= sub_f8a4b734 * arg1 / baseRate
                require arg1 <= contribution[address(msg.sender)]
                contribution[address(msg.sender)] -= arg1
                require arg1 <= sub_a23fb7a3
                sub_a23fb7a3 -= arg1
                require arg1 + sub_d830a52c >= sub_d830a52c
                sub_d830a52c += arg1
                if arg1 + sub_d830a52c:
                    require currentState <= 4
                    if currentState == 2:
                        currentState = 0
                call msg.sender with:
                   value arg1 + (sub_f8a4b734 * arg1 / baseRate) wei
                     gas 300000 wei
                s = 0
                idx = 0
                while idx < stor9:
                    if not contribution[stor21[idx]]:
                        require sub_a23fb7a3
                        mem[0] = sub_92e176ef[idx]
                        mem[32] = 20
                        stor20[stor21[idx]] = 0 / sub_a23fb7a3
                    else:
                        require baseRate * contribution[stor21[idx]] / contribution[stor21[idx]] == baseRate
                        require sub_a23fb7a3
                        mem[0] = sub_92e176ef[idx]
                        mem[32] = 20
                        stor20[stor21[idx]] = baseRate * contribution[stor21[idx]] / sub_a23fb7a3
                    s = sub_92e176ef[idx]
                    idx = idx + 1
                    continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require currentState <= 4
        require not currentState
        require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
        require baseRate >= 0
        require baseRate + sub_f8a4b734 + sub_4bd27cfc
        if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
            require 0 <= msg.value
            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
            require baseRate >= 0
            require baseRate + sub_f8a4b734 + sub_4bd27cfc
            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                require 0 <= msg.value
                require msg.value >= minimumContribution
                require msg.value <= sub_d830a52c
            else:
                require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) >= minimumContribution
                require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
        else:
            require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
            require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
            require baseRate >= 0
            require baseRate + sub_f8a4b734 + sub_4bd27cfc
            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                require 0 <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) >= minimumContribution
                require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
            else:
                require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) >= minimumContribution
                require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
        require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
        require baseRate >= 0
        require baseRate + sub_f8a4b734 + sub_4bd27cfc
        if contribution[address(msg.sender)]:
            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                require sub_340188a2 >= sub_340188a2
            else:
                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_340188a2 >= sub_340188a2
                sub_340188a2 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
            require baseRate >= 0
            require baseRate + sub_f8a4b734 + sub_4bd27cfc
            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                require 0 <= msg.value
                require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                require baseRate >= 0
                require baseRate + sub_f8a4b734 + sub_4bd27cfc
                if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                    require 0 <= msg.value
                    require msg.value <= sub_d830a52c
                    sub_d830a52c -= msg.value
                    if not sub_d830a52c - msg.value:
                        currentState = 2
                    require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                    contribution[address(msg.sender)] += msg.value
                    sub_92e176ef[stor9] = msg.sender
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require stor16 >= stor16
                    else:
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                        require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + stor16 >= stor16
                        stor16 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                    require msg.value + sub_a23fb7a3 >= sub_a23fb7a3
                    sub_a23fb7a3 += msg.value
                else:
                    require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                    require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                    require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                    sub_d830a52c = sub_d830a52c - msg.value + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                    if not sub_d830a52c - msg.value + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                        currentState = 2
                    require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                    contribution[address(msg.sender)] = msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                    sub_92e176ef[stor9] = msg.sender
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require stor16 >= stor16
                    else:
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                        require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + stor16 >= stor16
                        stor16 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                    require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                    sub_a23fb7a3 = msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
            else:
                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                require baseRate >= 0
                require baseRate + sub_f8a4b734 + sub_4bd27cfc
                if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                    require 0 <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                    sub_d830a52c = sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                    if not sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                        currentState = 2
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                    contribution[address(msg.sender)] = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                    sub_92e176ef[stor9] = msg.sender
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require stor16 >= stor16
                    else:
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                        require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + stor16 >= stor16
                        stor16 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                    sub_a23fb7a3 = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
                else:
                    require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                    require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                    sub_d830a52c = sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                    if not sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                        currentState = 2
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                    contribution[address(msg.sender)] = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                    sub_92e176ef[stor9] = msg.sender
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require stor16 >= stor16
                    else:
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                        require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + stor16 >= stor16
                        stor16 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                    sub_a23fb7a3 = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
            require baseRate >= 0
            require baseRate + sub_f8a4b734 + sub_4bd27cfc
            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                call stor2 with:
                     gas 300000 wei
            else:
                require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                call stor2 with:
                   value sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc wei
                     gas 300000 wei
        else:
            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                call stor2 with:
                     gas 300000 wei
            else:
                require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                call stor2 with:
                   value sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc wei
                     gas 300000 wei
            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
            require baseRate >= 0
            require baseRate + sub_f8a4b734 + sub_4bd27cfc
            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                require sub_340188a2 >= sub_340188a2
            else:
                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_340188a2 >= sub_340188a2
                sub_340188a2 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
            require baseRate >= 0
            require baseRate + sub_f8a4b734 + sub_4bd27cfc
            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                require sub_9923eead[address(msg.sender)] >= sub_9923eead[address(msg.sender)]
            else:
                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_9923eead[address(msg.sender)] >= sub_9923eead[address(msg.sender)]
                sub_9923eead[address(msg.sender)] += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
            require baseRate >= 0
            require baseRate + sub_f8a4b734 + sub_4bd27cfc
            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                require stor16 >= stor16
            else:
                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + stor16 >= stor16
                stor16 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
            require baseRate >= 0
            require baseRate + sub_f8a4b734 + sub_4bd27cfc
            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                require 0 <= msg.value
                require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                require baseRate >= 0
                require baseRate + sub_f8a4b734 + sub_4bd27cfc
                if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                    require 0 <= msg.value
                    require msg.value <= sub_d830a52c
                    sub_d830a52c -= msg.value
                    if not sub_d830a52c - msg.value:
                        currentState = 2
                    require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                    contribution[address(msg.sender)] += msg.value
                    sub_92e176ef[stor9] = msg.sender
                    require msg.value + sub_a23fb7a3 >= sub_a23fb7a3
                    sub_a23fb7a3 += msg.value
                else:
                    require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                    require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                    require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                    sub_d830a52c = sub_d830a52c - msg.value + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                    if not sub_d830a52c - msg.value + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                        currentState = 2
                    require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                    contribution[address(msg.sender)] = msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                    sub_92e176ef[stor9] = msg.sender
                    require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                    sub_a23fb7a3 = msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
            else:
                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                require baseRate >= 0
                require baseRate + sub_f8a4b734 + sub_4bd27cfc
                if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                    require 0 <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                    sub_d830a52c = sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                    if not sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                        currentState = 2
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                    contribution[address(msg.sender)] = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                    sub_92e176ef[stor9] = msg.sender
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                    sub_a23fb7a3 = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
                else:
                    require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                    require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                    sub_d830a52c = sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                    if not sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                        currentState = 2
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                    contribution[address(msg.sender)] = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                    sub_92e176ef[stor9] = msg.sender
                    require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                    sub_a23fb7a3 = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
            stor9++
        s = 0
        idx = 0
        while idx < stor9:
            if not contribution[stor21[idx]]:
                require sub_a23fb7a3
                mem[0] = sub_92e176ef[idx]
                mem[32] = 20
                stor20[stor21[idx]] = 0 / sub_a23fb7a3
            else:
                require baseRate * contribution[stor21[idx]] / contribution[stor21[idx]] == baseRate
                require sub_a23fb7a3
                mem[0] = sub_92e176ef[idx]
                mem[32] = 20
                stor20[stor21[idx]] = baseRate * contribution[stor21[idx]] / sub_a23fb7a3
            s = sub_92e176ef[idx]
            idx = idx + 1
            continue 
    else:
        if uint32(call.func_hash) == unknown_0x04f248f4(?????):
            require not msg.value
            return sub_04f248f4Address
        if unknown_0x08caa910(?????) == uint32(call.func_hash):
            require not msg.value
            return sub_a23fb7a3
        if unknown_0x1b55b2a8(?????) == uint32(call.func_hash):
            require not msg.value
            require hostAddress == msg.sender
            require currentState <= 4
            if currentState:
                require currentState <= 4
                require currentState == 2
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < stor9:
                require sub_9923eead[stor21[idx]] <= sub_9923eead[stor21[idx]]
                sub_9923eead[stor21[idx]] = 0
                stor20[stor21[idx]] = 0
                require sub_9923eead[stor21[idx]] + contribution[stor21[idx]] >= contribution[stor21[idx]]
                require contribution[stor21[idx]] + sub_d830a52c >= sub_d830a52c
                sub_d830a52c += contribution[stor21[idx]]
                require sub_9923eead[stor21[idx]] <= sub_340188a2
                sub_340188a2 -= sub_9923eead[stor21[idx]]
                require contribution[stor21[idx]] <= sub_a23fb7a3
                sub_a23fb7a3 -= contribution[stor21[idx]]
                mem[0] = sub_92e176ef[idx]
                mem[32] = 18
                contribution[stor21[idx]] = 0
                call sub_92e176ef[idx] with:
                   value sub_9923eead[stor21[idx]] + contribution[stor21[idx]] wei
                     gas 300000 wei
                s = sub_9923eead[stor21[idx]] + contribution[stor21[idx]]
                s = sub_9923eead[stor21[idx]]
                s = sub_92e176ef[idx]
                idx = idx + 1
                continue 
            currentState = 4
        else:
            if unknown_0x20bc4425(?????) == uint32(call.func_hash):
                require not msg.value
                return hostAddress
            if unknown_0x21eff7fc(?????) == uint32(call.func_hash):
                require not msg.value
                return contribution[address(arg1)]
            if unknown_0x2e1a7d4d(?????) == uint32(call.func_hash):
                require not msg.value
                require currentState <= 4
                if currentState != 2:
                    require currentState <= 4
                    require not currentState
                require 0 <= contribution[address(msg.sender)]
                require arg1 <= contribution[address(msg.sender)]
                if contribution[address(msg.sender)] - arg1 < minimumContribution:
                    require contribution[address(msg.sender)] == arg1
                if not arg1:
                    require baseRate
                    if 0 <= contribution[address(msg.sender)]:
                        require 0 / baseRate <= sub_340188a2
                        sub_340188a2 -= 0 / baseRate
                        require 0 / baseRate <= sub_9923eead[address(msg.sender)]
                        sub_9923eead[address(msg.sender)] -= 0 / baseRate
                        require 0 / baseRate <= stor16
                        stor16 -= 0 / baseRate
                        require 0 <= contribution[address(msg.sender)]
                        require 0 <= sub_a23fb7a3
                        require sub_d830a52c >= sub_d830a52c
                        if sub_d830a52c:
                            require currentState <= 4
                            if currentState == 2:
                                currentState = 0
                        call msg.sender with:
                           value 0 / baseRate wei
                             gas 300000 wei
                        s = 0
                        idx = 0
                        while idx < stor9:
                            if not contribution[stor21[idx]]:
                                require sub_a23fb7a3
                                mem[0] = sub_92e176ef[idx]
                                mem[32] = 20
                                stor20[stor21[idx]] = 0 / sub_a23fb7a3
                            else:
                                require baseRate * contribution[stor21[idx]] / contribution[stor21[idx]] == baseRate
                                require sub_a23fb7a3
                                mem[0] = sub_92e176ef[idx]
                                mem[32] = 20
                                stor20[stor21[idx]] = baseRate * contribution[stor21[idx]] / sub_a23fb7a3
                            s = sub_92e176ef[idx]
                            idx = idx + 1
                            continue 
                else:
                    require arg1 / arg1 == 1
                    if not arg1:
                        require baseRate
                        if arg1 <= contribution[address(msg.sender)]:
                            require 0 / baseRate <= sub_340188a2
                            sub_340188a2 -= 0 / baseRate
                            require 0 / baseRate <= sub_9923eead[address(msg.sender)]
                            sub_9923eead[address(msg.sender)] -= 0 / baseRate
                            require 0 / baseRate <= stor16
                            stor16 -= 0 / baseRate
                            require arg1 <= contribution[address(msg.sender)]
                            contribution[address(msg.sender)] -= arg1
                            require arg1 <= sub_a23fb7a3
                            sub_a23fb7a3 -= arg1
                            require arg1 + sub_d830a52c >= sub_d830a52c
                            sub_d830a52c += arg1
                            if arg1 + sub_d830a52c:
                                require currentState <= 4
                                if currentState == 2:
                                    currentState = 0
                            call msg.sender with:
                               value arg1 + (0 / baseRate) wei
                                 gas 300000 wei
                            s = 0
                            idx = 0
                            while idx < stor9:
                                if not contribution[stor21[idx]]:
                                    require sub_a23fb7a3
                                    mem[0] = sub_92e176ef[idx]
                                    mem[32] = 20
                                    stor20[stor21[idx]] = 0 / sub_a23fb7a3
                                else:
                                    require baseRate * contribution[stor21[idx]] / contribution[stor21[idx]] == baseRate
                                    require sub_a23fb7a3
                                    mem[0] = sub_92e176ef[idx]
                                    mem[32] = 20
                                    stor20[stor21[idx]] = baseRate * contribution[stor21[idx]] / sub_a23fb7a3
                                s = sub_92e176ef[idx]
                                idx = idx + 1
                                continue 
                    else:
                        require sub_f8a4b734 * arg1 / arg1 == sub_f8a4b734
                        require baseRate
                        if arg1 <= contribution[address(msg.sender)]:
                            require sub_f8a4b734 * arg1 / baseRate <= sub_340188a2
                            sub_340188a2 -= sub_f8a4b734 * arg1 / baseRate
                            require sub_f8a4b734 * arg1 / baseRate <= sub_9923eead[address(msg.sender)]
                            sub_9923eead[address(msg.sender)] -= sub_f8a4b734 * arg1 / baseRate
                            require sub_f8a4b734 * arg1 / baseRate <= stor16
                            stor16 -= sub_f8a4b734 * arg1 / baseRate
                            require arg1 <= contribution[address(msg.sender)]
                            contribution[address(msg.sender)] -= arg1
                            require arg1 <= sub_a23fb7a3
                            sub_a23fb7a3 -= arg1
                            require arg1 + sub_d830a52c >= sub_d830a52c
                            sub_d830a52c += arg1
                            if arg1 + sub_d830a52c:
                                require currentState <= 4
                                if currentState == 2:
                                    currentState = 0
                            call msg.sender with:
                               value arg1 + (sub_f8a4b734 * arg1 / baseRate) wei
                                 gas 300000 wei
                            s = 0
                            idx = 0
                            while idx < stor9:
                                if not contribution[stor21[idx]]:
                                    require sub_a23fb7a3
                                    mem[0] = sub_92e176ef[idx]
                                    mem[32] = 20
                                    stor20[stor21[idx]] = 0 / sub_a23fb7a3
                                else:
                                    require baseRate * contribution[stor21[idx]] / contribution[stor21[idx]] == baseRate
                                    require sub_a23fb7a3
                                    mem[0] = sub_92e176ef[idx]
                                    mem[32] = 20
                                    stor20[stor21[idx]] = baseRate * contribution[stor21[idx]] / sub_a23fb7a3
                                s = sub_92e176ef[idx]
                                idx = idx + 1
                                continue 
            else:
                if unknown_0x340188a2(?????) == uint32(call.func_hash):
                    require not msg.value
                    return sub_340188a2
                if unknown_0x378aa701(?????) == uint32(call.func_hash):
                    require not msg.value
                    require currentState <= 4
                    return currentState
                if unknown_0x3eddd428(?????) == uint32(call.func_hash):
                    require not msg.value
                    return sub_3eddd428
                if unknown_0x4bd27cfc(?????) == uint32(call.func_hash):
                    require not msg.value
                    return sub_4bd27cfc
                if unknown_0x5318cd5f(?????) == uint32(call.func_hash):
                    require not msg.value
                    require hostAddress == msg.sender
                    require currentState <= 4
                    if currentState != 1:
                        require currentState <= 4
                        require currentState == 3
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    while idx < stor9:
                        mem[0] = sub_92e176ef[idx]
                        mem[32] = 20
                        if not stor20[stor21[idx]]:
                            require baseRate
                            mem[132] = sub_92e176ef[idx]
                            mem[164] = 0 / baseRate
                            require ext_code.size(arg1)
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_92e176ef[idx], 0 / baseRate
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            currentState = 3
                            s = 0 / baseRate
                            s = stor20[stor21[idx]]
                            s = sub_92e176ef[idx]
                            idx = idx + 1
                            continue 
                        require ext_call.return_data[0] * stor20[stor21[idx]] / stor20[stor21[idx]] == ext_call.return_data[0]
                        require baseRate
                        mem[132] = sub_92e176ef[idx]
                        mem[164] = ext_call.return_data[0] * stor20[stor21[idx]] / baseRate
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_92e176ef[idx], ext_call.return_data[0] * stor20[stor21[idx]] / baseRate
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        currentState = 3
                        s = ext_call.return_data[0] * stor20[stor21[idx]] / baseRate
                        s = stor20[stor21[idx]]
                        s = sub_92e176ef[idx]
                        idx = idx + 1
                        continue 
                    call hostAddress with:
                       value stor16 wei
                         gas 300000 wei
                    return 0
                if unknown_0x59770438(?????) == uint32(call.func_hash):
                    require not msg.value
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x92e176ef(?????) == uint32(call.func_hash):
                    require not msg.value
                    return sub_92e176ef[arg1]
                if unknown_0x9923eead(?????) == uint32(call.func_hash):
                    require not msg.value
                    return sub_9923eead[address(arg1)]
                if unknown_0x99966b1f(?????) == uint32(call.func_hash):
                    require not msg.value
                    return contribution[stor1]
                if unknown_0xa23fb7a3(?????) == uint32(call.func_hash):
                    require not msg.value
                    return sub_a23fb7a3
                if unknown_0xb655d0c4(?????) == uint32(call.func_hash):
                    require not msg.value
                    return baseRate
                if unknown_0xd830a52c(?????) == uint32(call.func_hash):
                    require not msg.value
                    return sub_d830a52c
                if unknown_0xf24bbb63(?????) == uint32(call.func_hash):
                    require not msg.value
                    return bool(stor17)
                if unknown_0xf84038b1(?????) == uint32(call.func_hash):
                    require not msg.value
                    return minimumContribution
                if unknown_0xf856f373(?????) == uint32(call.func_hash):
                    require hostAddress == msg.sender
                    require currentState <= 4
                    if currentState:
                        require currentState <= 4
                        require currentState == 2
                    if 1 == bool(stor17):
                        call sub_04f248f4Address with:
                           value sub_a23fb7a3 wei
                             gas 300000 wei
                    else:
                        sub_04f248f4Address = arg1
                        call arg1 with:
                           value sub_a23fb7a3 wei
                             gas 300000 wei
                        stor17 = 1
                    currentState = 1
                    return eth.balance(this.address)
                if unknown_0xf8a4b734(?????) == uint32(call.func_hash):
                    require not msg.value
                    return sub_f8a4b734
                require currentState <= 4
                require not currentState
                require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                require baseRate >= 0
                require baseRate + sub_f8a4b734 + sub_4bd27cfc
                if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                    require 0 <= msg.value
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require 0 <= msg.value
                        require msg.value >= minimumContribution
                        require msg.value <= sub_d830a52c
                    else:
                        require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                        require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                        require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) >= minimumContribution
                        require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                else:
                    require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                    require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require 0 <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                        require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) >= minimumContribution
                        require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                    else:
                        require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                        require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                        require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) >= minimumContribution
                        require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                require baseRate >= 0
                require baseRate + sub_f8a4b734 + sub_4bd27cfc
                if contribution[address(msg.sender)]:
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require sub_340188a2 >= sub_340188a2
                    else:
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                        require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_340188a2 >= sub_340188a2
                        sub_340188a2 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require 0 <= msg.value
                        require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                        require baseRate >= 0
                        require baseRate + sub_f8a4b734 + sub_4bd27cfc
                        if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                            require 0 <= msg.value
                            require msg.value <= sub_d830a52c
                            sub_d830a52c -= msg.value
                            if not sub_d830a52c - msg.value:
                                currentState = 2
                            require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                            contribution[address(msg.sender)] += msg.value
                            sub_92e176ef[stor9] = msg.sender
                            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                            require baseRate >= 0
                            require baseRate + sub_f8a4b734 + sub_4bd27cfc
                            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                                require stor16 >= stor16
                            else:
                                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                                require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + stor16 >= stor16
                                stor16 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                            require msg.value + sub_a23fb7a3 >= sub_a23fb7a3
                            sub_a23fb7a3 += msg.value
                        else:
                            require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                            require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                            require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                            sub_d830a52c = sub_d830a52c - msg.value + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                            if not sub_d830a52c - msg.value + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                                currentState = 2
                            require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                            contribution[address(msg.sender)] = msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                            sub_92e176ef[stor9] = msg.sender
                            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                            require baseRate >= 0
                            require baseRate + sub_f8a4b734 + sub_4bd27cfc
                            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                                require stor16 >= stor16
                            else:
                                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                                require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + stor16 >= stor16
                                stor16 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                            require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                            sub_a23fb7a3 = msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
                    else:
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                        require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                        require baseRate >= 0
                        require baseRate + sub_f8a4b734 + sub_4bd27cfc
                        if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                            require 0 <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                            sub_d830a52c = sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                            if not sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                                currentState = 2
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                            contribution[address(msg.sender)] = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                            sub_92e176ef[stor9] = msg.sender
                            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                            require baseRate >= 0
                            require baseRate + sub_f8a4b734 + sub_4bd27cfc
                            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                                require stor16 >= stor16
                            else:
                                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                                require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + stor16 >= stor16
                                stor16 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                            sub_a23fb7a3 = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
                        else:
                            require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                            require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                            sub_d830a52c = sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                            if not sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                                currentState = 2
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                            contribution[address(msg.sender)] = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                            sub_92e176ef[stor9] = msg.sender
                            require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                            require baseRate >= 0
                            require baseRate + sub_f8a4b734 + sub_4bd27cfc
                            if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                                require stor16 >= stor16
                            else:
                                require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                                require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + stor16 >= stor16
                                stor16 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                            sub_a23fb7a3 = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        call stor2 with:
                             gas 300000 wei
                    else:
                        require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                        call stor2 with:
                           value sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc wei
                             gas 300000 wei
                else:
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        call stor2 with:
                             gas 300000 wei
                    else:
                        require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                        call stor2 with:
                           value sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc wei
                             gas 300000 wei
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require sub_340188a2 >= sub_340188a2
                    else:
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                        require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_340188a2 >= sub_340188a2
                        sub_340188a2 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require sub_9923eead[address(msg.sender)] >= sub_9923eead[address(msg.sender)]
                    else:
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                        require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_9923eead[address(msg.sender)] >= sub_9923eead[address(msg.sender)]
                        sub_9923eead[address(msg.sender)] += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require stor16 >= stor16
                    else:
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                        require (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + stor16 >= stor16
                        stor16 += sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc
                    require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                    require baseRate >= 0
                    require baseRate + sub_f8a4b734 + sub_4bd27cfc
                    if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                        require 0 <= msg.value
                        require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                        require baseRate >= 0
                        require baseRate + sub_f8a4b734 + sub_4bd27cfc
                        if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                            require 0 <= msg.value
                            require msg.value <= sub_d830a52c
                            sub_d830a52c -= msg.value
                            if not sub_d830a52c - msg.value:
                                currentState = 2
                            require msg.value + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                            contribution[address(msg.sender)] += msg.value
                            sub_92e176ef[stor9] = msg.sender
                            require msg.value + sub_a23fb7a3 >= sub_a23fb7a3
                            sub_a23fb7a3 += msg.value
                        else:
                            require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                            require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                            require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                            sub_d830a52c = sub_d830a52c - msg.value + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                            if not sub_d830a52c - msg.value + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                                currentState = 2
                            require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                            contribution[address(msg.sender)] = msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                            sub_92e176ef[stor9] = msg.sender
                            require msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                            sub_a23fb7a3 = msg.value - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
                    else:
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_f8a4b734
                        require sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value
                        require sub_f8a4b734 + sub_4bd27cfc >= sub_4bd27cfc
                        require baseRate >= 0
                        require baseRate + sub_f8a4b734 + sub_4bd27cfc
                        if not msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc:
                            require 0 <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                            sub_d830a52c = sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                            if not sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                                currentState = 2
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                            contribution[address(msg.sender)] = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                            sub_92e176ef[stor9] = msg.sender
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                            sub_a23fb7a3 = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
                        else:
                            require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc / msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc == sub_4bd27cfc
                            require sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc <= msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) <= sub_d830a52c
                            sub_d830a52c = sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc)
                            if not sub_d830a52c - msg.value + (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc):
                                currentState = 2
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)] >= contribution[address(msg.sender)]
                            contribution[address(msg.sender)] = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + contribution[address(msg.sender)]
                            sub_92e176ef[stor9] = msg.sender
                            require msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3 >= sub_a23fb7a3
                            sub_a23fb7a3 = msg.value - (sub_f8a4b734 * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) - (sub_4bd27cfc * msg.value / baseRate + sub_f8a4b734 + sub_4bd27cfc) + sub_a23fb7a3
                    stor9++
                s = 0
                idx = 0
                while idx < stor9:
                    if not contribution[stor21[idx]]:
                        require sub_a23fb7a3
                        mem[0] = sub_92e176ef[idx]
                        mem[32] = 20
                        stor20[stor21[idx]] = 0 / sub_a23fb7a3
                    else:
                        require baseRate * contribution[stor21[idx]] / contribution[stor21[idx]] == baseRate
                        require sub_a23fb7a3
                        mem[0] = sub_92e176ef[idx]
                        mem[32] = 20
                        stor20[stor21[idx]] = baseRate * contribution[stor21[idx]] / sub_a23fb7a3
                    s = sub_92e176ef[idx]
                    idx = idx + 1
                    continue 
}



}
