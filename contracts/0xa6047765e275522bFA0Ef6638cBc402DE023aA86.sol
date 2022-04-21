contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
array of address stor6;
mapping of uint8 stor7;
address stor8;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'IdeaCoin' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'IDEA' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 100000000 * 10^18
    stor8 = msg.sender
    if not stor7[address(msg.sender)]:
        stor6.length++
        if not stor6.length <= stor6.length + 1:
            idx = stor6.length + 1
            while stor6.length > idx:
                uint256(stor6[idx]) = 0
                idx = idx + 1
                continue 
        address(stor6[stor6.length]) = msg.sender
        stor7[address(msg.sender)] = 1
    return code.data[605 len 7595]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of address accounts;
mapping of uint8 stor7;
address owner;
uint256 earnedEthWei;
uint256 soldIdeaWei;
uint256 stor11; offset 1
uint256 soldIdeaWeiPreIco;
uint256 stor12; offset 1
uint256 soldIdeaWeiIco;
uint256 stor13; offset 1
uint256 soldIdeaWeiPostIco;
uint256 icoStartTimestamp;
mapping of uint256 pieBalances;
array of address pieAccounts;
mapping of uint8 stor17;
uint256 nextRoundReserve;
array of address projects;
address projectAgentAddress;
address bank1Address;
address bank2Address;
uint256 bank1Val;
uint256 bank2Val;
uint256 bankValReserve;
uint8 icoState;

function name() {
    return name[0 len name.length]
}

function projects(uint256 arg1) {
    require arg1 < projects.length
    return address(projects[arg1])
}

function totalSupply() {
    return totalSupply
}

function pieBalances(address arg1) {
    return pieBalances[arg1]
}

function decimals() {
    return decimals
}

function bankValReserve() {
    return bankValReserve
}

function bank1Val() {
    return bank1Val
}

function icoState() {
    require icoState <= 4
    return icoState
}

function pieAccounts(uint256 arg1) {
    require arg1 < pieAccounts.length
    return address(pieAccounts[arg1])
}

function soldIdeaWeiPreIco() {
    return soldIdeaWeiPreIco
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function earnedEthWei() {
    return earnedEthWei
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function soldIdeaWeiIco() {
    return soldIdeaWeiIco
}

function icoStartTimestamp() {
    return icoStartTimestamp
}

function soldIdeaWei() {
    return soldIdeaWei
}

function nextRoundReserve() {
    return nextRoundReserve
}

function bank2() {
    return bank2Address
}

function soldIdeaWeiPostIco() {
    return soldIdeaWeiPostIco
}

function bank1() {
    return bank1Address
}

function projectAgent() {
    return projectAgentAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function bank2Val() {
    return bank2Val
}

function accounts(uint256 arg1) {
    require arg1 < accounts.length
    return address(accounts[arg1])
}

function pieBalanceOf(address arg1) {
    return pieBalances[address(arg1)]
}

function startPreIco() {
    require owner == msg.sender
    icoState = 1
}

function startPostIco() {
    require owner == msg.sender
    icoState = 3
}

function setProjectAgent(address arg1) {
    require owner == msg.sender
    projectAgentAddress = arg1
}

function startIco() {
    require owner == msg.sender
    icoState = 2
    icoStartTimestamp = block.timestamp
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function stopIcoAndBurn() {
    require owner == msg.sender
    icoState = 0
    require 2 * -soldIdeaWeiIco + 35000000 * 10^18 <= totalSupply
    totalSupply -= 2 * -soldIdeaWeiIco + 35000000 * 10^18
    balanceOf[stor21] += stor12
    balanceOf[stor22] += stor12
}

function stopPreIcoAndBurn() {
    require owner == msg.sender
    icoState = 0
    require 2 * -soldIdeaWeiPreIco + 2500000 * 10^18 <= totalSupply
    totalSupply -= 2 * -soldIdeaWeiPreIco + 2500000 * 10^18
    balanceOf[stor21] += stor11
    balanceOf[stor22] += stor11
}

function stopPostIcoAndBurn() {
    require owner == msg.sender
    icoState = 0
    require 2 * -soldIdeaWeiPostIco + 12000000 * 10^18 <= totalSupply
    totalSupply -= 2 * -soldIdeaWeiPostIco + 12000000 * 10^18
    balanceOf[stor21] += stor13
    balanceOf[stor22] += stor13
}

function transferFromPie(uint256 arg1) {
    require arg1 <= pieBalances[address(msg.sender)]
    pieBalances[address(msg.sender)] -= arg1
    require arg1 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    return 1
}

function setBank(address arg1, address arg2) {
    require owner == msg.sender
    require not bank1Address
    require not bank2Address
    require arg1
    require arg2
    bank1Address = arg1
    bank2Address = arg2
    balanceOf[address(arg1)] = 500000 * 10^18
    balanceOf[stor22] = 500000 * 10^18
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function cashBackFromProject(address arg1) {
    require ext_code.size(projectAgentAddress)
    call projectAgentAddress.0xe8561d36 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[32] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += ext_call.return_data[32]
    return bool(ext_call.return_data[0])
}

function buyProduct(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.0xa035b1fe with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] * arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * ext_call.return_data[0] * arg2
    require ext_code.size(projectAgentAddress)
    call projectAgentAddress.0x5008b7dd with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.sender, arg2
    require ext_call.success
}

function makeProject(string arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(projectAgentAddress)
    call projectAgentAddress.0x9803b with:
         gas gas_remaining - 710 wei
        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2, arg3
    require ext_call.success
    projects.length++
    if not projects.length <= projects.length + 1:
        idx = projects.length + 1
        while projects.length > idx:
            uint256(projects[idx]) = 0
            idx = idx + 1
            continue 
    address(projects[projects.length]) = address(ext_call.return_data[0])
    return address(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if not stor7[address(arg1)]:
        accounts.length++
        if not accounts.length <= accounts.length + 1:
            idx = accounts.length + 1
            while accounts.length > idx:
                uint256(accounts[idx]) = 0
                idx = idx + 1
                continue 
        address(accounts[accounts.length]) = arg1
        stor7[address(arg1)] = 1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferToPie(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 + pieBalances[address(msg.sender)] >= pieBalances[address(msg.sender)]
    pieBalances[address(msg.sender)] += arg1
    if not stor17[address(msg.sender)]:
        pieAccounts.length++
        if not pieAccounts.length <= pieAccounts.length + 1:
            idx = pieAccounts.length + 1
            while pieAccounts.length > idx:
                uint256(pieAccounts[idx]) = 0
                idx = idx + 1
                continue 
        address(pieAccounts[pieAccounts.length]) = msg.sender
        stor17[address(msg.sender)] = 1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not stor7[address(arg2)]:
        accounts.length++
        if not accounts.length <= accounts.length + 1:
            idx = accounts.length + 1
            while accounts.length > idx:
                uint256(accounts[idx]) = 0
                idx = idx + 1
                continue 
        address(accounts[accounts.length]) = arg2
        stor7[address(arg2)] = 1
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawEther() {
    if bank1Address == msg.sender:
        call bank1Address with:
           value bank1Val wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        bank1Val = 0
    else:
        require bank2Address == msg.sender
        if bank1Address == msg.sender:
            call bank1Address with:
               value bank1Val wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            bank1Val = 0
    if bank2Address == msg.sender:
        call bank2Address with:
           value bank2Val wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        bank2Val = 0
    if not bank1Val:
        if not bank2Val:
            if eth.balance(this.address):
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}

function withdrawFromProject(address arg1, uint256 arg2) {
    require ext_code.size(projectAgentAddress)
    call projectAgentAddress.0x30e804d1 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        require ((965 * ext_call.return_data[32]) - (965 * ext_call.return_data[32] % 1000) / 1000) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += (965 * ext_call.return_data[32]) - (965 * ext_call.return_data[32] % 1000) / 1000
        s = 0
        idx = 0
        s = 0
        while idx < pieAccounts.length:
            mem[0] = address(pieAccounts[idx])
            mem[32] = 15
            if pieBalances[address(stor16[idx])] < 10000 * 10^18:
                s = pieBalances[address(stor16[idx])]
                idx = idx + 1
                s = s
                continue 
            require pieBalances[address(stor16[idx])] + s >= s
            s = pieBalances[address(stor16[idx])]
            idx = idx + 1
            s = pieBalances[address(stor16[idx])] + s
            continue 
        t = 0
        u = 0
        u = 0
        idx = 0
        u = 0
        while idx < pieAccounts.length:
            mem[0] = address(pieAccounts[idx])
            mem[32] = 15
            if pieBalances[address(stor16[idx])] < 10000 * 10^18:
                t = t
                u = pieBalances[address(stor16[idx])]
                u = address(pieAccounts[idx])
                idx = idx + 1
                u = u
                continue 
            require s
            require ((nextRoundReserve * pieBalances[address(stor16[idx])]) + (ext_call.return_data[32] * pieBalances[address(stor16[idx])]) - ((965 * ext_call.return_data[32]) - (965 * ext_call.return_data[32] % 1000) / 1000 * pieBalances[address(stor16[idx])]) / s) + u >= u
            require ((nextRoundReserve * pieBalances[address(stor16[idx])]) + (ext_call.return_data[32] * pieBalances[address(stor16[idx])]) - ((965 * ext_call.return_data[32]) - (965 * ext_call.return_data[32] % 1000) / 1000 * pieBalances[address(stor16[idx])]) / s) + pieBalances[address(stor16[idx])] >= pieBalances[address(stor16[idx])]
            mem[0] = address(pieAccounts[idx])
            mem[32] = 15
            pieBalances[address(stor16[idx])] += (nextRoundReserve * pieBalances[address(stor16[idx])]) + (ext_call.return_data[32] * pieBalances[address(stor16[idx])]) - ((965 * ext_call.return_data[32]) - (965 * ext_call.return_data[32] % 1000) / 1000 * pieBalances[address(stor16[idx])]) / s
            t = (nextRoundReserve * pieBalances[address(stor16[idx])]) + (ext_call.return_data[32] * pieBalances[address(stor16[idx])]) - ((965 * ext_call.return_data[32]) - (965 * ext_call.return_data[32] % 1000) / 1000 * pieBalances[address(stor16[idx])]) / s
            u = pieBalances[address(stor16[idx])]
            u = address(pieAccounts[idx])
            idx = idx + 1
            u = ((nextRoundReserve * pieBalances[address(stor16[idx])]) + (ext_call.return_data[32] * pieBalances[address(stor16[idx])]) - ((965 * ext_call.return_data[32]) - (965 * ext_call.return_data[32] % 1000) / 1000 * pieBalances[address(stor16[idx])]) / s) + u
            continue 
        require u <= nextRoundReserve + ext_call.return_data[32] - ((965 * ext_call.return_data[32]) - (965 * ext_call.return_data[32] % 1000) / 1000)
        nextRoundReserve = nextRoundReserve + ext_call.return_data[32] - ((965 * ext_call.return_data[32]) - (965 * ext_call.return_data[32] % 1000) / 1000) - u
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require icoState <= 4
    if icoState != 1:
        require icoState <= 4
        if icoState != 2:
            require icoState <= 4
            require icoState == 3
            require soldIdeaWeiPostIco <= 12000000 * 10^18
            balanceOf[address(msg.sender)] += 500 * msg.value
            soldIdeaWeiPostIco += 500 * msg.value
            earnedEthWei += msg.value
            soldIdeaWei += 500 * msg.value
            bank1Val += bankValReserve + msg.value / 2
            bank2Val += bankValReserve + msg.value / 2
            bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
            if not stor7[address(msg.sender)]:
                accounts.length++
                if not accounts.length <= accounts.length + 1:
                    idx = accounts.length + 1
                    while accounts.length > idx:
                        uint256(accounts[idx]) = 0
                        idx = idx + 1
                        continue 
                address(accounts[accounts.length]) = msg.sender
                stor7[address(msg.sender)] = 1
        else:
            if soldIdeaWeiIco > 35000000 * 10^18:
                require icoState <= 4
                require icoState == 3
                require soldIdeaWeiPostIco <= 12000000 * 10^18
                balanceOf[address(msg.sender)] += 500 * msg.value
                soldIdeaWeiPostIco += 500 * msg.value
                earnedEthWei += msg.value
                soldIdeaWei += 500 * msg.value
                bank1Val += bankValReserve + msg.value / 2
                bank2Val += bankValReserve + msg.value / 2
                bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                if not stor7[address(msg.sender)]:
                    accounts.length++
                    if not accounts.length <= accounts.length + 1:
                        idx = accounts.length + 1
                        while accounts.length > idx:
                            uint256(accounts[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(accounts[accounts.length]) = msg.sender
                    stor7[address(msg.sender)] = 1
            else:
                if block.timestamp - icoStartTimestamp <= 24 * 3600:
                    balanceOf[address(msg.sender)] += 1250 * msg.value
                    soldIdeaWeiIco += 1250 * msg.value
                    earnedEthWei += msg.value
                    soldIdeaWei += 1250 * msg.value
                    bank1Val += bankValReserve + msg.value / 2
                    bank2Val += bankValReserve + msg.value / 2
                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                    if not stor7[address(msg.sender)]:
                        accounts.length++
                        if not accounts.length <= accounts.length + 1:
                            idx = accounts.length + 1
                            while accounts.length > idx:
                                uint256(accounts[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(accounts[accounts.length]) = msg.sender
                        stor7[address(msg.sender)] = 1
                else:
                    if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                        if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                            if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                balanceOf[address(msg.sender)] += 1000 * msg.value
                                soldIdeaWeiIco += 1000 * msg.value
                                earnedEthWei += msg.value
                                soldIdeaWei += 1000 * msg.value
                                bank1Val += bankValReserve + msg.value / 2
                                bank2Val += bankValReserve + msg.value / 2
                                bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                if not stor7[address(msg.sender)]:
                                    accounts.length++
                                    if not accounts.length <= accounts.length + 1:
                                        idx = accounts.length + 1
                                        while accounts.length > idx:
                                            uint256(accounts[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(accounts[accounts.length]) = msg.sender
                                    stor7[address(msg.sender)] = 1
                            else:
                                if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                    soldIdeaWeiIco += 1000 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1000 * msg.value
                                else:
                                    balanceOf[address(msg.sender)] += 1050 * msg.value
                                    soldIdeaWeiIco += 1050 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1050 * msg.value
                                bank1Val += bankValReserve + msg.value / 2
                                bank2Val += bankValReserve + msg.value / 2
                                bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                if not stor7[address(msg.sender)]:
                                    accounts.length++
                                    if not accounts.length <= accounts.length + 1:
                                        idx = accounts.length + 1
                                        while accounts.length > idx:
                                            uint256(accounts[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(accounts[accounts.length]) = msg.sender
                                    stor7[address(msg.sender)] = 1
                        else:
                            if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                balanceOf[address(msg.sender)] += 1100 * msg.value
                                soldIdeaWeiIco += 1100 * msg.value
                                earnedEthWei += msg.value
                                soldIdeaWei += 1100 * msg.value
                                bank1Val += bankValReserve + msg.value / 2
                                bank2Val += bankValReserve + msg.value / 2
                                bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                if not stor7[address(msg.sender)]:
                                    accounts.length++
                                    if not accounts.length <= accounts.length + 1:
                                        idx = accounts.length + 1
                                        while accounts.length > idx:
                                            uint256(accounts[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(accounts[accounts.length]) = msg.sender
                                    stor7[address(msg.sender)] = 1
                            else:
                                if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                    soldIdeaWeiIco += 1000 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1000 * msg.value
                                    bank1Val += bankValReserve + msg.value / 2
                                    bank2Val += bankValReserve + msg.value / 2
                                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                    if not stor7[address(msg.sender)]:
                                        accounts.length++
                                        if not accounts.length <= accounts.length + 1:
                                            idx = accounts.length + 1
                                            while accounts.length > idx:
                                                uint256(accounts[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accounts[accounts.length]) = msg.sender
                                        stor7[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
                                    else:
                                        balanceOf[address(msg.sender)] += 1050 * msg.value
                                        soldIdeaWeiIco += 1050 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1050 * msg.value
                                    bank1Val += bankValReserve + msg.value / 2
                                    bank2Val += bankValReserve + msg.value / 2
                                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                    if not stor7[address(msg.sender)]:
                                        accounts.length++
                                        if not accounts.length <= accounts.length + 1:
                                            idx = accounts.length + 1
                                            while accounts.length > idx:
                                                uint256(accounts[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accounts[accounts.length]) = msg.sender
                                        stor7[address(msg.sender)] = 1
                    else:
                        if block.timestamp - icoStartTimestamp > 24 * 3600:
                            balanceOf[address(msg.sender)] += 1150 * msg.value
                            soldIdeaWeiIco += 1150 * msg.value
                            earnedEthWei += msg.value
                            soldIdeaWei += 1150 * msg.value
                            bank1Val += bankValReserve + msg.value / 2
                            bank2Val += bankValReserve + msg.value / 2
                            bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                            if not stor7[address(msg.sender)]:
                                accounts.length++
                                if not accounts.length <= accounts.length + 1:
                                    idx = accounts.length + 1
                                    while accounts.length > idx:
                                        uint256(accounts[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(accounts[accounts.length]) = msg.sender
                                stor7[address(msg.sender)] = 1
                        else:
                            if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                                if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                    soldIdeaWeiIco += 1000 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1000 * msg.value
                                    bank1Val += bankValReserve + msg.value / 2
                                    bank2Val += bankValReserve + msg.value / 2
                                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                    if not stor7[address(msg.sender)]:
                                        accounts.length++
                                        if not accounts.length <= accounts.length + 1:
                                            idx = accounts.length + 1
                                            while accounts.length > idx:
                                                uint256(accounts[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accounts[accounts.length]) = msg.sender
                                        stor7[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
                                    else:
                                        balanceOf[address(msg.sender)] += 1050 * msg.value
                                        soldIdeaWeiIco += 1050 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1050 * msg.value
                                    bank1Val += bankValReserve + msg.value / 2
                                    bank2Val += bankValReserve + msg.value / 2
                                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                    if not stor7[address(msg.sender)]:
                                        accounts.length++
                                        if not accounts.length <= accounts.length + 1:
                                            idx = accounts.length + 1
                                            while accounts.length > idx:
                                                uint256(accounts[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accounts[accounts.length]) = msg.sender
                                        stor7[address(msg.sender)] = 1
                            else:
                                if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1100 * msg.value
                                    soldIdeaWeiIco += 1100 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1100 * msg.value
                                    bank1Val += bankValReserve + msg.value / 2
                                    bank2Val += bankValReserve + msg.value / 2
                                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                    if not stor7[address(msg.sender)]:
                                        accounts.length++
                                        if not accounts.length <= accounts.length + 1:
                                            idx = accounts.length + 1
                                            while accounts.length > idx:
                                                uint256(accounts[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accounts[accounts.length]) = msg.sender
                                        stor7[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
                                        bank1Val += bankValReserve + msg.value / 2
                                        bank2Val += bankValReserve + msg.value / 2
                                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                        if not stor7[address(msg.sender)]:
                                            accounts.length++
                                            if not accounts.length <= accounts.length + 1:
                                                idx = accounts.length + 1
                                                while accounts.length > idx:
                                                    uint256(accounts[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(accounts[accounts.length]) = msg.sender
                                            stor7[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            soldIdeaWeiIco += 1000 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1000 * msg.value
                                        else:
                                            balanceOf[address(msg.sender)] += 1050 * msg.value
                                            soldIdeaWeiIco += 1050 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1050 * msg.value
                                        bank1Val += bankValReserve + msg.value / 2
                                        bank2Val += bankValReserve + msg.value / 2
                                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                        if not stor7[address(msg.sender)]:
                                            accounts.length++
                                            if not accounts.length <= accounts.length + 1:
                                                idx = accounts.length + 1
                                                while accounts.length > idx:
                                                    uint256(accounts[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(accounts[accounts.length]) = msg.sender
                                            stor7[address(msg.sender)] = 1
    else:
        if msg.value < 20 * 10^18:
            require icoState <= 4
            if icoState != 2:
                require icoState <= 4
                require icoState == 3
                require soldIdeaWeiPostIco <= 12000000 * 10^18
                balanceOf[address(msg.sender)] += 500 * msg.value
                soldIdeaWeiPostIco += 500 * msg.value
                earnedEthWei += msg.value
                soldIdeaWei += 500 * msg.value
                bank1Val += bankValReserve + msg.value / 2
                bank2Val += bankValReserve + msg.value / 2
                bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                if not stor7[address(msg.sender)]:
                    accounts.length++
                    if not accounts.length <= accounts.length + 1:
                        idx = accounts.length + 1
                        while accounts.length > idx:
                            uint256(accounts[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(accounts[accounts.length]) = msg.sender
                    stor7[address(msg.sender)] = 1
            else:
                if soldIdeaWeiIco > 35000000 * 10^18:
                    require icoState <= 4
                    require icoState == 3
                    require soldIdeaWeiPostIco <= 12000000 * 10^18
                    balanceOf[address(msg.sender)] += 500 * msg.value
                    soldIdeaWeiPostIco += 500 * msg.value
                    earnedEthWei += msg.value
                    soldIdeaWei += 500 * msg.value
                    bank1Val += bankValReserve + msg.value / 2
                    bank2Val += bankValReserve + msg.value / 2
                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                    if not stor7[address(msg.sender)]:
                        accounts.length++
                        if not accounts.length <= accounts.length + 1:
                            idx = accounts.length + 1
                            while accounts.length > idx:
                                uint256(accounts[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(accounts[accounts.length]) = msg.sender
                        stor7[address(msg.sender)] = 1
                else:
                    if block.timestamp - icoStartTimestamp <= 24 * 3600:
                        balanceOf[address(msg.sender)] += 1250 * msg.value
                        soldIdeaWeiIco += 1250 * msg.value
                        earnedEthWei += msg.value
                        soldIdeaWei += 1250 * msg.value
                        bank1Val += bankValReserve + msg.value / 2
                        bank2Val += bankValReserve + msg.value / 2
                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                        if not stor7[address(msg.sender)]:
                            accounts.length++
                            if not accounts.length <= accounts.length + 1:
                                idx = accounts.length + 1
                                while accounts.length > idx:
                                    uint256(accounts[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(accounts[accounts.length]) = msg.sender
                            stor7[address(msg.sender)] = 1
                    else:
                        if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                            if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                                if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                    soldIdeaWeiIco += 1000 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1000 * msg.value
                                    bank1Val += bankValReserve + msg.value / 2
                                    bank2Val += bankValReserve + msg.value / 2
                                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                    if not stor7[address(msg.sender)]:
                                        accounts.length++
                                        if not accounts.length <= accounts.length + 1:
                                            idx = accounts.length + 1
                                            while accounts.length > idx:
                                                uint256(accounts[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accounts[accounts.length]) = msg.sender
                                        stor7[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
                                    else:
                                        balanceOf[address(msg.sender)] += 1050 * msg.value
                                        soldIdeaWeiIco += 1050 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1050 * msg.value
                                    bank1Val += bankValReserve + msg.value / 2
                                    bank2Val += bankValReserve + msg.value / 2
                                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                    if not stor7[address(msg.sender)]:
                                        accounts.length++
                                        if not accounts.length <= accounts.length + 1:
                                            idx = accounts.length + 1
                                            while accounts.length > idx:
                                                uint256(accounts[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accounts[accounts.length]) = msg.sender
                                        stor7[address(msg.sender)] = 1
                            else:
                                if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1100 * msg.value
                                    soldIdeaWeiIco += 1100 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1100 * msg.value
                                    bank1Val += bankValReserve + msg.value / 2
                                    bank2Val += bankValReserve + msg.value / 2
                                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                    if not stor7[address(msg.sender)]:
                                        accounts.length++
                                        if not accounts.length <= accounts.length + 1:
                                            idx = accounts.length + 1
                                            while accounts.length > idx:
                                                uint256(accounts[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accounts[accounts.length]) = msg.sender
                                        stor7[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
                                        bank1Val += bankValReserve + msg.value / 2
                                        bank2Val += bankValReserve + msg.value / 2
                                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                        if not stor7[address(msg.sender)]:
                                            accounts.length++
                                            if not accounts.length <= accounts.length + 1:
                                                idx = accounts.length + 1
                                                while accounts.length > idx:
                                                    uint256(accounts[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(accounts[accounts.length]) = msg.sender
                                            stor7[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            soldIdeaWeiIco += 1000 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1000 * msg.value
                                        else:
                                            balanceOf[address(msg.sender)] += 1050 * msg.value
                                            soldIdeaWeiIco += 1050 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1050 * msg.value
                                        bank1Val += bankValReserve + msg.value / 2
                                        bank2Val += bankValReserve + msg.value / 2
                                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                        if not stor7[address(msg.sender)]:
                                            accounts.length++
                                            if not accounts.length <= accounts.length + 1:
                                                idx = accounts.length + 1
                                                while accounts.length > idx:
                                                    uint256(accounts[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(accounts[accounts.length]) = msg.sender
                                            stor7[address(msg.sender)] = 1
                        else:
                            if block.timestamp - icoStartTimestamp > 24 * 3600:
                                balanceOf[address(msg.sender)] += 1150 * msg.value
                                soldIdeaWeiIco += 1150 * msg.value
                                earnedEthWei += msg.value
                                soldIdeaWei += 1150 * msg.value
                                bank1Val += bankValReserve + msg.value / 2
                                bank2Val += bankValReserve + msg.value / 2
                                bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                if not stor7[address(msg.sender)]:
                                    accounts.length++
                                    if not accounts.length <= accounts.length + 1:
                                        idx = accounts.length + 1
                                        while accounts.length > idx:
                                            uint256(accounts[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    address(accounts[accounts.length]) = msg.sender
                                    stor7[address(msg.sender)] = 1
                            else:
                                if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                                    if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
                                        bank1Val += bankValReserve + msg.value / 2
                                        bank2Val += bankValReserve + msg.value / 2
                                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                        if not stor7[address(msg.sender)]:
                                            accounts.length++
                                            if not accounts.length <= accounts.length + 1:
                                                idx = accounts.length + 1
                                                while accounts.length > idx:
                                                    uint256(accounts[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(accounts[accounts.length]) = msg.sender
                                            stor7[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            soldIdeaWeiIco += 1000 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1000 * msg.value
                                        else:
                                            balanceOf[address(msg.sender)] += 1050 * msg.value
                                            soldIdeaWeiIco += 1050 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1050 * msg.value
                                        bank1Val += bankValReserve + msg.value / 2
                                        bank2Val += bankValReserve + msg.value / 2
                                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                        if not stor7[address(msg.sender)]:
                                            accounts.length++
                                            if not accounts.length <= accounts.length + 1:
                                                idx = accounts.length + 1
                                                while accounts.length > idx:
                                                    uint256(accounts[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(accounts[accounts.length]) = msg.sender
                                            stor7[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1100 * msg.value
                                        soldIdeaWeiIco += 1100 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1100 * msg.value
                                        bank1Val += bankValReserve + msg.value / 2
                                        bank2Val += bankValReserve + msg.value / 2
                                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                        if not stor7[address(msg.sender)]:
                                            accounts.length++
                                            if not accounts.length <= accounts.length + 1:
                                                idx = accounts.length + 1
                                                while accounts.length > idx:
                                                    uint256(accounts[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(accounts[accounts.length]) = msg.sender
                                            stor7[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            soldIdeaWeiIco += 1000 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1000 * msg.value
                                            bank1Val += bankValReserve + msg.value / 2
                                            bank2Val += bankValReserve + msg.value / 2
                                            bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                            if not stor7[address(msg.sender)]:
                                                accounts.length++
                                                if not accounts.length <= accounts.length + 1:
                                                    idx = accounts.length + 1
                                                    while accounts.length > idx:
                                                        uint256(accounts[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(accounts[accounts.length]) = msg.sender
                                                stor7[address(msg.sender)] = 1
                                        else:
                                            if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                                balanceOf[address(msg.sender)] += 1000 * msg.value
                                                soldIdeaWeiIco += 1000 * msg.value
                                                earnedEthWei += msg.value
                                                soldIdeaWei += 1000 * msg.value
                                            else:
                                                balanceOf[address(msg.sender)] += 1050 * msg.value
                                                soldIdeaWeiIco += 1050 * msg.value
                                                earnedEthWei += msg.value
                                                soldIdeaWei += 1050 * msg.value
                                            bank1Val += bankValReserve + msg.value / 2
                                            bank2Val += bankValReserve + msg.value / 2
                                            bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                            if not stor7[address(msg.sender)]:
                                                accounts.length++
                                                if not accounts.length <= accounts.length + 1:
                                                    idx = accounts.length + 1
                                                    while accounts.length > idx:
                                                        uint256(accounts[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(accounts[accounts.length]) = msg.sender
                                                stor7[address(msg.sender)] = 1
        else:
            if soldIdeaWeiPreIco <= 2500000 * 10^18:
                balanceOf[address(msg.sender)] += 1500 * msg.value
                soldIdeaWeiPreIco += 1500 * msg.value
                earnedEthWei += msg.value
                soldIdeaWei += 1500 * msg.value
                bank1Val += bankValReserve + msg.value / 2
                bank2Val += bankValReserve + msg.value / 2
                bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                if not stor7[address(msg.sender)]:
                    accounts.length++
                    if not accounts.length <= accounts.length + 1:
                        idx = accounts.length + 1
                        while accounts.length > idx:
                            uint256(accounts[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(accounts[accounts.length]) = msg.sender
                    stor7[address(msg.sender)] = 1
            else:
                require icoState <= 4
                if icoState != 2:
                    require icoState <= 4
                    require icoState == 3
                    require soldIdeaWeiPostIco <= 12000000 * 10^18
                    balanceOf[address(msg.sender)] += 500 * msg.value
                    soldIdeaWeiPostIco += 500 * msg.value
                    earnedEthWei += msg.value
                    soldIdeaWei += 500 * msg.value
                    bank1Val += bankValReserve + msg.value / 2
                    bank2Val += bankValReserve + msg.value / 2
                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                    if not stor7[address(msg.sender)]:
                        accounts.length++
                        if not accounts.length <= accounts.length + 1:
                            idx = accounts.length + 1
                            while accounts.length > idx:
                                uint256(accounts[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(accounts[accounts.length]) = msg.sender
                        stor7[address(msg.sender)] = 1
                else:
                    if soldIdeaWeiIco > 35000000 * 10^18:
                        require icoState <= 4
                        require icoState == 3
                        require soldIdeaWeiPostIco <= 12000000 * 10^18
                        balanceOf[address(msg.sender)] += 500 * msg.value
                        soldIdeaWeiPostIco += 500 * msg.value
                        earnedEthWei += msg.value
                        soldIdeaWei += 500 * msg.value
                        bank1Val += bankValReserve + msg.value / 2
                        bank2Val += bankValReserve + msg.value / 2
                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                        if not stor7[address(msg.sender)]:
                            accounts.length++
                            if not accounts.length <= accounts.length + 1:
                                idx = accounts.length + 1
                                while accounts.length > idx:
                                    uint256(accounts[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(accounts[accounts.length]) = msg.sender
                            stor7[address(msg.sender)] = 1
                    else:
                        if block.timestamp - icoStartTimestamp <= 24 * 3600:
                            balanceOf[address(msg.sender)] += 1250 * msg.value
                            soldIdeaWeiIco += 1250 * msg.value
                            earnedEthWei += msg.value
                            soldIdeaWei += 1250 * msg.value
                            bank1Val += bankValReserve + msg.value / 2
                            bank2Val += bankValReserve + msg.value / 2
                            bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                            if not stor7[address(msg.sender)]:
                                accounts.length++
                                if not accounts.length <= accounts.length + 1:
                                    idx = accounts.length + 1
                                    while accounts.length > idx:
                                        uint256(accounts[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                address(accounts[accounts.length]) = msg.sender
                                stor7[address(msg.sender)] = 1
                        else:
                            if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                                    if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
                                        bank1Val += bankValReserve + msg.value / 2
                                        bank2Val += bankValReserve + msg.value / 2
                                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                        if not stor7[address(msg.sender)]:
                                            accounts.length++
                                            if not accounts.length <= accounts.length + 1:
                                                idx = accounts.length + 1
                                                while accounts.length > idx:
                                                    uint256(accounts[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(accounts[accounts.length]) = msg.sender
                                            stor7[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            soldIdeaWeiIco += 1000 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1000 * msg.value
                                        else:
                                            balanceOf[address(msg.sender)] += 1050 * msg.value
                                            soldIdeaWeiIco += 1050 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1050 * msg.value
                                        bank1Val += bankValReserve + msg.value / 2
                                        bank2Val += bankValReserve + msg.value / 2
                                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                        if not stor7[address(msg.sender)]:
                                            accounts.length++
                                            if not accounts.length <= accounts.length + 1:
                                                idx = accounts.length + 1
                                                while accounts.length > idx:
                                                    uint256(accounts[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(accounts[accounts.length]) = msg.sender
                                            stor7[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1100 * msg.value
                                        soldIdeaWeiIco += 1100 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1100 * msg.value
                                        bank1Val += bankValReserve + msg.value / 2
                                        bank2Val += bankValReserve + msg.value / 2
                                        bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                        if not stor7[address(msg.sender)]:
                                            accounts.length++
                                            if not accounts.length <= accounts.length + 1:
                                                idx = accounts.length + 1
                                                while accounts.length > idx:
                                                    uint256(accounts[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            address(accounts[accounts.length]) = msg.sender
                                            stor7[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            soldIdeaWeiIco += 1000 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1000 * msg.value
                                            bank1Val += bankValReserve + msg.value / 2
                                            bank2Val += bankValReserve + msg.value / 2
                                            bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                            if not stor7[address(msg.sender)]:
                                                accounts.length++
                                                if not accounts.length <= accounts.length + 1:
                                                    idx = accounts.length + 1
                                                    while accounts.length > idx:
                                                        uint256(accounts[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(accounts[accounts.length]) = msg.sender
                                                stor7[address(msg.sender)] = 1
                                        else:
                                            if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                                balanceOf[address(msg.sender)] += 1000 * msg.value
                                                soldIdeaWeiIco += 1000 * msg.value
                                                earnedEthWei += msg.value
                                                soldIdeaWei += 1000 * msg.value
                                            else:
                                                balanceOf[address(msg.sender)] += 1050 * msg.value
                                                soldIdeaWeiIco += 1050 * msg.value
                                                earnedEthWei += msg.value
                                                soldIdeaWei += 1050 * msg.value
                                            bank1Val += bankValReserve + msg.value / 2
                                            bank2Val += bankValReserve + msg.value / 2
                                            bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                            if not stor7[address(msg.sender)]:
                                                accounts.length++
                                                if not accounts.length <= accounts.length + 1:
                                                    idx = accounts.length + 1
                                                    while accounts.length > idx:
                                                        uint256(accounts[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(accounts[accounts.length]) = msg.sender
                                                stor7[address(msg.sender)] = 1
                            else:
                                if block.timestamp - icoStartTimestamp > 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1150 * msg.value
                                    soldIdeaWeiIco += 1150 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1150 * msg.value
                                    bank1Val += bankValReserve + msg.value / 2
                                    bank2Val += bankValReserve + msg.value / 2
                                    bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                    if not stor7[address(msg.sender)]:
                                        accounts.length++
                                        if not accounts.length <= accounts.length + 1:
                                            idx = accounts.length + 1
                                            while accounts.length > idx:
                                                uint256(accounts[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        address(accounts[accounts.length]) = msg.sender
                                        stor7[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                                        if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            soldIdeaWeiIco += 1000 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1000 * msg.value
                                            bank1Val += bankValReserve + msg.value / 2
                                            bank2Val += bankValReserve + msg.value / 2
                                            bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                            if not stor7[address(msg.sender)]:
                                                accounts.length++
                                                if not accounts.length <= accounts.length + 1:
                                                    idx = accounts.length + 1
                                                    while accounts.length > idx:
                                                        uint256(accounts[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(accounts[accounts.length]) = msg.sender
                                                stor7[address(msg.sender)] = 1
                                        else:
                                            if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                                balanceOf[address(msg.sender)] += 1000 * msg.value
                                                soldIdeaWeiIco += 1000 * msg.value
                                                earnedEthWei += msg.value
                                                soldIdeaWei += 1000 * msg.value
                                            else:
                                                balanceOf[address(msg.sender)] += 1050 * msg.value
                                                soldIdeaWeiIco += 1050 * msg.value
                                                earnedEthWei += msg.value
                                                soldIdeaWei += 1050 * msg.value
                                            bank1Val += bankValReserve + msg.value / 2
                                            bank2Val += bankValReserve + msg.value / 2
                                            bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                            if not stor7[address(msg.sender)]:
                                                accounts.length++
                                                if not accounts.length <= accounts.length + 1:
                                                    idx = accounts.length + 1
                                                    while accounts.length > idx:
                                                        uint256(accounts[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(accounts[accounts.length]) = msg.sender
                                                stor7[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1100 * msg.value
                                            soldIdeaWeiIco += 1100 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1100 * msg.value
                                            bank1Val += bankValReserve + msg.value / 2
                                            bank2Val += bankValReserve + msg.value / 2
                                            bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                            if not stor7[address(msg.sender)]:
                                                accounts.length++
                                                if not accounts.length <= accounts.length + 1:
                                                    idx = accounts.length + 1
                                                    while accounts.length > idx:
                                                        uint256(accounts[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                address(accounts[accounts.length]) = msg.sender
                                                stor7[address(msg.sender)] = 1
                                        else:
                                            if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                                balanceOf[address(msg.sender)] += 1000 * msg.value
                                                soldIdeaWeiIco += 1000 * msg.value
                                                earnedEthWei += msg.value
                                                soldIdeaWei += 1000 * msg.value
                                                bank1Val += bankValReserve + msg.value / 2
                                                bank2Val += bankValReserve + msg.value / 2
                                                bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                                if not stor7[address(msg.sender)]:
                                                    accounts.length++
                                                    if not accounts.length <= accounts.length + 1:
                                                        idx = accounts.length + 1
                                                        while accounts.length > idx:
                                                            uint256(accounts[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(accounts[accounts.length]) = msg.sender
                                                    stor7[address(msg.sender)] = 1
                                            else:
                                                if block.timestamp - icoStartTimestamp <= 264 * 24 * 3600:
                                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                                    soldIdeaWeiIco += 1000 * msg.value
                                                    earnedEthWei += msg.value
                                                    soldIdeaWei += 1000 * msg.value
                                                else:
                                                    balanceOf[address(msg.sender)] += 1050 * msg.value
                                                    soldIdeaWeiIco += 1050 * msg.value
                                                    earnedEthWei += msg.value
                                                    soldIdeaWei += 1050 * msg.value
                                                bank1Val += bankValReserve + msg.value / 2
                                                bank2Val += bankValReserve + msg.value / 2
                                                bankValReserve = bankValReserve + msg.value - Mask(255, 1, bankValReserve + msg.value)
                                                if not stor7[address(msg.sender)]:
                                                    accounts.length++
                                                    if not accounts.length <= accounts.length + 1:
                                                        idx = accounts.length + 1
                                                        while accounts.length > idx:
                                                            uint256(accounts[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    address(accounts[accounts.length]) = msg.sender
                                                    stor7[address(msg.sender)] = 1
}



}
