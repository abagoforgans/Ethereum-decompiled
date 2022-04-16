contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;
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
    stor4[stor8] = stor3
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
    return code.data[943 len 32173]
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
uint256 soldIdeaWeiPreIco;
uint256 soldIdeaWeiIco;
uint256 soldIdeaWeiPostIco;
uint8 icoState;
uint256 icoStartTimestamp;
mapping of uint256 pieBalances;
array of address pieAccounts;
mapping of uint8 stor18;
uint256 nextRoundReserve;
array of address projects;

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

function soldIdeaWeiPostIco() {
    return soldIdeaWeiPostIco
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function accounts(uint256 arg1) {
    require arg1 < accounts.length
    return address(accounts[arg1])
}

function pieBalanceOf(address arg1) {
    return pieBalances[address(arg1)]
}

function startPreIco() {
    require msg.sender == owner
    icoState = 1
}

function startPostIco() {
    require msg.sender == owner
    icoState = 3
}

function startIco() {
    require msg.sender == owner
    icoState = 2
    icoStartTimestamp = block.timestamp
}

function withdrawEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFromPie(uint256 arg1) {
    require arg1 <= pieBalances[address(msg.sender)]
    pieBalances[address(msg.sender)] -= arg1
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
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

function stopIcoAndBurn() {
    require msg.sender == owner
    icoState = 0
    require 2 * -soldIdeaWeiIco + 35000000 * 10^18 <= balanceOf[stor8]
    balanceOf[stor8] -= 2 * -soldIdeaWeiIco + 35000000 * 10^18
    require 2 * -soldIdeaWeiIco + 35000000 * 10^18 <= totalSupply
    totalSupply -= 2 * -soldIdeaWeiIco + 35000000 * 10^18
    require soldIdeaWeiIco <= balanceOf[stor8]
    balanceOf[stor8] -= soldIdeaWeiIco
}

function stopPreIcoAndBurn() {
    require msg.sender == owner
    icoState = 0
    require 2 * -soldIdeaWeiPreIco + 2500000 * 10^18 <= balanceOf[stor8]
    balanceOf[stor8] -= 2 * -soldIdeaWeiPreIco + 2500000 * 10^18
    require 2 * -soldIdeaWeiPreIco + 2500000 * 10^18 <= totalSupply
    totalSupply -= 2 * -soldIdeaWeiPreIco + 2500000 * 10^18
    require soldIdeaWeiPreIco <= balanceOf[stor8]
    balanceOf[stor8] -= soldIdeaWeiPreIco
}

function stopPostIcoAndBurn() {
    require msg.sender == owner
    icoState = 0
    require 2 * -soldIdeaWeiPostIco + 12000000 * 10^18 <= balanceOf[stor8]
    balanceOf[stor8] -= 2 * -soldIdeaWeiPostIco + 12000000 * 10^18
    require 2 * -soldIdeaWeiPostIco + 12000000 * 10^18 <= totalSupply
    totalSupply -= 2 * -soldIdeaWeiPostIco + 12000000 * 10^18
    require soldIdeaWeiPostIco <= balanceOf[stor8]
    balanceOf[stor8] -= soldIdeaWeiPostIco
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
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
    require pieBalances[address(msg.sender)] + arg1 >= pieBalances[address(msg.sender)]
    pieBalances[address(msg.sender)] += arg1
    if not stor18[address(msg.sender)]:
        pieAccounts.length++
        if not pieAccounts.length <= pieAccounts.length + 1:
            idx = pieAccounts.length + 1
            while pieAccounts.length > idx:
                uint256(pieAccounts[idx]) = 0
                idx = idx + 1
                continue 
        address(pieAccounts[pieAccounts.length]) = msg.sender
        stor18[address(msg.sender)] = 1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
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

function makeProject(string arg1, uint256 arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 17528] = code.data[14602 len 17528]
    mem[ceil32(arg1.length) + 17816 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: code.data[14602 len 17528], msg.sender, Array(len=arg3, data=arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), arg2
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 17816] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 17848 len arg1.length % 32]
        create contract with 0 wei
                        code: code.data[14602 len 17528], msg.sender, Array(len=arg3, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 17816 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), arg2
    require create.new_address
    projects.length++
    if not projects.length <= projects.length + 1:
        idx = projects.length + 1
        while projects.length > idx:
            uint256(projects[idx]) = 0
            idx = idx + 1
            continue 
    address(projects[projects.length]) = address(create.new_address)
    return address(create.new_address)
}

function cashBackFromProject(address arg1) {
    require ext_code.size(arg1)
    call arg1.isFundingState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        call arg1.fundingEndTime() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if block.timestamp > ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1.0xdc8452cd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.earned() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(arg1)
            if ext_call.return_data[0] < ext_call.return_data[0]:
                call arg1.projectFundingFail() with:
                     gas gas_remaining - 710 wei
            else:
                call arg1.projectWorkStarted() with:
                     gas gas_remaining - 710 wei
            require ext_call.success
    call arg1.isFundingFailState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    if not ext_call.return_data[0]:
        call arg1.isWorkFailState() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    call arg1.calcInvesting(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require balanceOf[address(msg.sender)] + ext_call.return_data[0] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += ext_call.return_data[0]
    return 1
}

function sub_63347654(?) {
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    call arg1.isFundingState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    if ext_call.return_data[0]:
        call arg1.fundingEndTime() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if block.timestamp > ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1.0xdc8452cd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.earned() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(arg1)
            if ext_call.return_data[0] < ext_call.return_data[0]:
                call arg1.projectFundingFail() with:
                     gas gas_remaining - 710 wei
            else:
                call arg1.projectWorkStarted() with:
                     gas gas_remaining - 710 wei
            require ext_call.success
    call arg1.isWorkflowState() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    if not ext_call.return_data[0]:
        call arg1.isSuccessDoneState() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    call arg1.withdraw(uint8 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    require balanceOf[address(msg.sender)] + ((965 * ext_call.return_data[0]) - (965 * ext_call.return_data[0] % 1000) / 1000) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += (965 * ext_call.return_data[0]) - (965 * ext_call.return_data[0] % 1000) / 1000
    s = 0
    idx = 0
    s = 0
    while idx < pieAccounts.length:
        mem[0] = address(pieAccounts[idx])
        mem[32] = 16
        if pieBalances[address(stor17[idx])] < 10000 * 10^18:
            s = pieBalances[address(stor17[idx])]
            idx = idx + 1
            s = s
            continue 
        require s + pieBalances[address(stor17[idx])] >= s
        s = pieBalances[address(stor17[idx])]
        idx = idx + 1
        s = s + pieBalances[address(stor17[idx])]
        continue 
    t = 0
    u = 0
    u = 0
    idx = 0
    u = 0
    while idx < pieAccounts.length:
        mem[0] = address(pieAccounts[idx])
        mem[32] = 16
        if pieBalances[address(stor17[idx])] < 10000 * 10^18:
            t = t
            u = pieBalances[address(stor17[idx])]
            u = address(pieAccounts[idx])
            idx = idx + 1
            u = u
            continue 
        require s
        require u + ((nextRoundReserve * pieBalances[address(stor17[idx])]) + (ext_call.return_data[0] * pieBalances[address(stor17[idx])]) - ((965 * ext_call.return_data[0]) - (965 * ext_call.return_data[0] % 1000) / 1000 * pieBalances[address(stor17[idx])]) / s) >= u
        require pieBalances[address(stor17[idx])] + ((nextRoundReserve * pieBalances[address(stor17[idx])]) + (ext_call.return_data[0] * pieBalances[address(stor17[idx])]) - ((965 * ext_call.return_data[0]) - (965 * ext_call.return_data[0] % 1000) / 1000 * pieBalances[address(stor17[idx])]) / s) >= pieBalances[address(stor17[idx])]
        mem[0] = address(pieAccounts[idx])
        mem[32] = 16
        pieBalances[address(stor17[idx])] += (nextRoundReserve * pieBalances[address(stor17[idx])]) + (ext_call.return_data[0] * pieBalances[address(stor17[idx])]) - ((965 * ext_call.return_data[0]) - (965 * ext_call.return_data[0] % 1000) / 1000 * pieBalances[address(stor17[idx])]) / s
        t = (nextRoundReserve * pieBalances[address(stor17[idx])]) + (ext_call.return_data[0] * pieBalances[address(stor17[idx])]) - ((965 * ext_call.return_data[0]) - (965 * ext_call.return_data[0] % 1000) / 1000 * pieBalances[address(stor17[idx])]) / s
        u = pieBalances[address(stor17[idx])]
        u = address(pieAccounts[idx])
        idx = idx + 1
        u = u + ((nextRoundReserve * pieBalances[address(stor17[idx])]) + (ext_call.return_data[0] * pieBalances[address(stor17[idx])]) - ((965 * ext_call.return_data[0]) - (965 * ext_call.return_data[0] % 1000) / 1000 * pieBalances[address(stor17[idx])]) / s)
        continue 
    require u <= nextRoundReserve + ext_call.return_data[0] - ((965 * ext_call.return_data[0]) - (965 * ext_call.return_data[0] % 1000) / 1000)
    nextRoundReserve = nextRoundReserve + ext_call.return_data[0] - ((965 * ext_call.return_data[0]) - (965 * ext_call.return_data[0] % 1000) / 1000) - u
    return 1
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
        else:
            if soldIdeaWeiIco > 35000000 * 10^18:
                require icoState <= 4
                require icoState == 3
                require soldIdeaWeiPostIco <= 12000000 * 10^18
                balanceOf[address(msg.sender)] += 500 * msg.value
                soldIdeaWeiPostIco += 500 * msg.value
                earnedEthWei += msg.value
                soldIdeaWei += 500 * msg.value
            else:
                if block.timestamp - icoStartTimestamp <= 24 * 3600:
                    balanceOf[address(msg.sender)] += 1250 * msg.value
                    soldIdeaWeiIco += 1250 * msg.value
                    earnedEthWei += msg.value
                    soldIdeaWei += 1250 * msg.value
                else:
                    if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                        if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                            if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                balanceOf[address(msg.sender)] += 1000 * msg.value
                                soldIdeaWeiIco += 1000 * msg.value
                                earnedEthWei += msg.value
                                soldIdeaWei += 1000 * msg.value
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
                        else:
                            if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                balanceOf[address(msg.sender)] += 1100 * msg.value
                                soldIdeaWeiIco += 1100 * msg.value
                                earnedEthWei += msg.value
                                soldIdeaWei += 1100 * msg.value
                            else:
                                if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                    soldIdeaWeiIco += 1000 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1000 * msg.value
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
                    else:
                        if block.timestamp - icoStartTimestamp > 24 * 3600:
                            balanceOf[address(msg.sender)] += 1150 * msg.value
                            soldIdeaWeiIco += 1150 * msg.value
                            earnedEthWei += msg.value
                            soldIdeaWei += 1150 * msg.value
                        else:
                            if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                                if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                    soldIdeaWeiIco += 1000 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1000 * msg.value
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
                            else:
                                if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1100 * msg.value
                                    soldIdeaWeiIco += 1100 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1100 * msg.value
                                else:
                                    if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
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
            else:
                if soldIdeaWeiIco > 35000000 * 10^18:
                    require icoState <= 4
                    require icoState == 3
                    require soldIdeaWeiPostIco <= 12000000 * 10^18
                    balanceOf[address(msg.sender)] += 500 * msg.value
                    soldIdeaWeiPostIco += 500 * msg.value
                    earnedEthWei += msg.value
                    soldIdeaWei += 500 * msg.value
                else:
                    if block.timestamp - icoStartTimestamp <= 24 * 3600:
                        balanceOf[address(msg.sender)] += 1250 * msg.value
                        soldIdeaWeiIco += 1250 * msg.value
                        earnedEthWei += msg.value
                        soldIdeaWei += 1250 * msg.value
                    else:
                        if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                            if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                                if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1000 * msg.value
                                    soldIdeaWeiIco += 1000 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1000 * msg.value
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
                            else:
                                if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1100 * msg.value
                                    soldIdeaWeiIco += 1100 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1100 * msg.value
                                else:
                                    if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
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
                        else:
                            if block.timestamp - icoStartTimestamp > 24 * 3600:
                                balanceOf[address(msg.sender)] += 1150 * msg.value
                                soldIdeaWeiIco += 1150 * msg.value
                                earnedEthWei += msg.value
                                soldIdeaWei += 1150 * msg.value
                            else:
                                if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                                    if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
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
                                else:
                                    if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1100 * msg.value
                                        soldIdeaWeiIco += 1100 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1100 * msg.value
                                    else:
                                        if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            soldIdeaWeiIco += 1000 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1000 * msg.value
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
        else:
            if soldIdeaWeiPreIco <= 2500000 * 10^18:
                balanceOf[address(msg.sender)] += 1500 * msg.value
                soldIdeaWeiPreIco += 1500 * msg.value
                earnedEthWei += msg.value
                soldIdeaWei += 1500 * msg.value
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
                else:
                    if soldIdeaWeiIco > 35000000 * 10^18:
                        require icoState <= 4
                        require icoState == 3
                        require soldIdeaWeiPostIco <= 12000000 * 10^18
                        balanceOf[address(msg.sender)] += 500 * msg.value
                        soldIdeaWeiPostIco += 500 * msg.value
                        earnedEthWei += msg.value
                        soldIdeaWei += 500 * msg.value
                    else:
                        if block.timestamp - icoStartTimestamp <= 24 * 3600:
                            balanceOf[address(msg.sender)] += 1250 * msg.value
                            soldIdeaWeiIco += 1250 * msg.value
                            earnedEthWei += msg.value
                            soldIdeaWei += 1250 * msg.value
                        else:
                            if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                                    if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1000 * msg.value
                                        soldIdeaWeiIco += 1000 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1000 * msg.value
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
                                else:
                                    if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                        balanceOf[address(msg.sender)] += 1100 * msg.value
                                        soldIdeaWeiIco += 1100 * msg.value
                                        earnedEthWei += msg.value
                                        soldIdeaWei += 1100 * msg.value
                                    else:
                                        if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            soldIdeaWeiIco += 1000 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1000 * msg.value
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
                            else:
                                if block.timestamp - icoStartTimestamp > 24 * 3600:
                                    balanceOf[address(msg.sender)] += 1150 * msg.value
                                    soldIdeaWeiIco += 1150 * msg.value
                                    earnedEthWei += msg.value
                                    soldIdeaWei += 1150 * msg.value
                                else:
                                    if block.timestamp - icoStartTimestamp > 264 * 24 * 3600:
                                        if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1000 * msg.value
                                            soldIdeaWeiIco += 1000 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1000 * msg.value
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
                                    else:
                                        if block.timestamp - icoStartTimestamp > 144 * 24 * 3600:
                                            balanceOf[address(msg.sender)] += 1100 * msg.value
                                            soldIdeaWeiIco += 1100 * msg.value
                                            earnedEthWei += msg.value
                                            soldIdeaWei += 1100 * msg.value
                                        else:
                                            if block.timestamp - icoStartTimestamp > 384 * 24 * 3600:
                                                balanceOf[address(msg.sender)] += 1000 * msg.value
                                                soldIdeaWeiIco += 1000 * msg.value
                                                earnedEthWei += msg.value
                                                soldIdeaWei += 1000 * msg.value
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
}



}
