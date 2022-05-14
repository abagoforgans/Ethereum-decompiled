contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2, bytes arg3)
#
const name = 'Banker Token'

const decimals = 8

const symbol = 'BNK'


uint256 stor0;
uint256 totalSupply;
uint64 stor10;
uint256 stor10; offset 64
uint256 blocksPerRound;
uint256 lastBlockNumberInRound;
address stor2;
address stor3;
array of uint64 stor4;
uint8 stor5; offset 224
uint32 stor5; offset 224
uint64 stor5;
uint64 currentRound; offset 160
address stor5;
mapping of struct sub_11fe7e43;
mapping of struct accountBalances;
mapping of uint256 sub_f9368e7a;
mapping of uint256 allowance;

function sub_11fe7e43(?) {
    return sub_11fe7e43[arg1].field_0, 
           sub_11fe7e43[arg1].field_256,
           sub_11fe7e43[arg1].field_512,
           bool(sub_11fe7e43[arg1].field_768)
}

function totalSupply() {
    return totalSupply
}

function isModifiedInRound(address arg1, uint64 arg2) {
    return bool(accountBalances[address(arg1)][2][arg2 << 192].field_0)
}

function paused() {
    return bool(uint8(stor5.field_224))
}

function blocksPerRound() {
    return blocksPerRound
}

function accountBalances(address arg1) {
    return accountBalances[arg1].field_0, accountBalances[arg1].field_1024, accountBalances[arg1].field_1280
}

function balanceOf(address arg1) {
    return accountBalances[address(arg1)].field_0
}

function currentRound() {
    return currentRound
}

function getRoundBalance(address arg1, uint256 arg2) {
    return accountBalances[address(arg1)][1][arg2].field_0
}

function allowance(address arg1, address arg2) {
    require not uint8(stor5.field_224)
    return allowance[address(arg1)][address(arg2)]
}

function lastBlockNumberInRound() {
    return lastBlockNumberInRound
}

function sub_f9368e7a(?) {
    return sub_f9368e7a[arg1]
}

function _fallback() payable {
    require not uint8(stor5.field_224)
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2
    return (arg1 / arg2)
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function resume() {
    require msg.sender == stor2
    require uint8(stor5.field_224)
    uint32(stor5.field_224) = 0
}

function pause() {
    require msg.sender == stor2
    require not uint8(stor5.field_224)
    uint32(stor5.field_224) = 1
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg1 + arg2 >= arg1
    require arg1 + arg2 >= arg2
    return (arg1 + arg2)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg1 * arg2)
    require arg1
    require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor5.field_224)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setBlocksPerRound(uint64 arg1) {
    require not uint8(stor5.field_224)
    if address(stor4.length) != msg.sender:
        require msg.sender == stor2
    uint64(stor10.field_0) = arg1
    Mask(192, 0, stor10.field_64) = 0
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= arg2
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function changeContractOwner(address arg1) {
    require msg.sender == stor2
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound:
            require block.number - lastBlockNumberInRound / blocksPerRound
            require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        idx = 0
        while idx < block.number - lastBlockNumberInRound / blocksPerRound:
            sub_f9368e7a[uint64(stor5.field_0)] = stor0
            mem[0] = currentRound
            mem[32] = 6
            sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
            currentRound = uint64(currentRound + 1)
            idx = idx + 1
            continue 
    require arg1 != stor2
    stor2 = arg1
}

function changeRewardManager(address arg1) {
    require msg.sender == stor2
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound:
            require block.number - lastBlockNumberInRound / blocksPerRound
            require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        idx = 0
        while idx < block.number - lastBlockNumberInRound / blocksPerRound:
            sub_f9368e7a[uint64(stor5.field_0)] = stor0
            mem[0] = currentRound
            mem[32] = 6
            sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
            currentRound = uint64(currentRound + 1)
            idx = idx + 1
            continue 
    require arg1 != stor3
    stor3 = arg1
}

function changeRoundManager(address arg1) {
    require msg.sender == stor2
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound:
            require block.number - lastBlockNumberInRound / blocksPerRound
            require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        idx = 0
        while idx < block.number - lastBlockNumberInRound / blocksPerRound:
            sub_f9368e7a[uint64(stor5.field_0)] = stor0
            mem[0] = currentRound
            mem[32] = 6
            sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
            currentRound = uint64(currentRound + 1)
            idx = idx + 1
            continue 
    require arg1 != address(stor4.length)
    address(stor4.length) = arg1
}

function changeIssueManager(address arg1) {
    require msg.sender == stor2
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound:
            require block.number - lastBlockNumberInRound / blocksPerRound
            require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        idx = 0
        while idx < block.number - lastBlockNumberInRound / blocksPerRound:
            sub_f9368e7a[uint64(stor5.field_0)] = stor0
            mem[0] = currentRound
            mem[32] = 6
            sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
            currentRound = uint64(currentRound + 1)
            idx = idx + 1
            continue 
    require arg1 != address(stor5.field_0)
    address(stor5.field_0) = arg1
}

function getBalanceModificationRounds(address arg1) {
    if not accountBalances[address(arg1)].field_768:
        mem[(32 * accountBalances[address(arg1)].field_768) + 128] = 32
        mem[(32 * accountBalances[address(arg1)].field_768) + 160] = accountBalances[address(arg1)].field_768
        mem[(32 * accountBalances[address(arg1)].field_768) + 192 len floor32(accountBalances[address(arg1)].field_768)] = mem[128 len floor32(accountBalances[address(arg1)].field_768)]
        return memory
          from (32 * accountBalances[address(arg1)].field_768) + 128
           len (96 * accountBalances[address(arg1)].field_768) + 64
    mem[128] = accountBalances[address(arg1)][3].field_0
    idx = 128
    s = 0
    while (32 * accountBalances[address(arg1)].field_768) + 96 > idx:
        mem[idx + 32] = accountBalances[address(arg1)][3].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    mem[(32 * accountBalances[address(arg1)].field_768) + 192 len floor32(accountBalances[address(arg1)].field_768)] = mem[128 len floor32(accountBalances[address(arg1)].field_768)]
    return Array(len=accountBalances[address(arg1)].field_768, data=mem[128 len floor32(accountBalances[address(arg1)].field_768)], mem[(32 * accountBalances[address(arg1)].field_768) + floor32(accountBalances[address(arg1)].field_768) + 192 len (32 * accountBalances[address(arg1)].field_768) - floor32(accountBalances[address(arg1)].field_768)]), 
}

function withdrawEther() {
    require msg.sender == stor2
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound:
            require block.number - lastBlockNumberInRound / blocksPerRound
            require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        idx = 0
        while idx < block.number - lastBlockNumberInRound / blocksPerRound:
            sub_f9368e7a[uint64(stor5.field_0)] = stor0
            mem[0] = currentRound
            mem[32] = 6
            sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
            currentRound = uint64(currentRound + 1)
            idx = idx + 1
            continue 
    require eth.balance(this.address) > 0
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setReward(uint64 arg1, uint256 arg2) {
    require not uint8(stor5.field_224)
    if stor3 != msg.sender:
        require msg.sender == stor2
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound:
            require block.number - lastBlockNumberInRound / blocksPerRound
            require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        idx = 0
        while idx < block.number - lastBlockNumberInRound / blocksPerRound:
            sub_f9368e7a[uint64(stor5.field_0)] = stor0
            mem[0] = currentRound
            mem[32] = 6
            sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
            currentRound = uint64(currentRound + 1)
            idx = idx + 1
            continue 
    require sub_11fe7e43[arg1 << 192].field_0 == arg1
    require not sub_11fe7e43[arg1 << 192].field_768
    sub_11fe7e43[arg1 << 192].field_256 = arg2
    if arg2 > 0:
        require sub_f9368e7a[arg1 << 192]
        sub_11fe7e43[arg1 << 192].field_512 = arg2 / sub_f9368e7a[arg1 << 192]
    sub_11fe7e43[arg1 << 192].field_768 = 1
}

function createRounds(uint256 arg1) {
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound <= arg1:
            if block.number - lastBlockNumberInRound / blocksPerRound:
                require block.number - lastBlockNumberInRound / blocksPerRound
                require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            idx = 0
            while idx < block.number - lastBlockNumberInRound / blocksPerRound:
                sub_f9368e7a[uint64(stor5.field_0)] = stor0
                mem[0] = currentRound
                mem[32] = 6
                sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
                currentRound = uint64(currentRound + 1)
                idx = idx + 1
                continue 
        else:
            if arg1:
                require arg1
                require arg1 * blocksPerRound / arg1 == blocksPerRound
            require lastBlockNumberInRound + (arg1 * blocksPerRound) >= lastBlockNumberInRound
            require lastBlockNumberInRound + (arg1 * blocksPerRound) >= arg1 * blocksPerRound
            lastBlockNumberInRound += arg1 * blocksPerRound
            idx = 0
            while idx < arg1:
                sub_f9368e7a[uint64(stor5.field_0)] = stor0
                mem[0] = currentRound
                mem[32] = 6
                sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
                currentRound = uint64(currentRound + 1)
                idx = idx + 1
                continue 
}

function issueTokens(address arg1, uint256 arg2) {
    require not uint8(stor5.field_224)
    if address(stor5.field_0) != msg.sender:
        require msg.sender == stor2
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound:
            require block.number - lastBlockNumberInRound / blocksPerRound
            require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        idx = 0
        while idx < block.number - lastBlockNumberInRound / blocksPerRound:
            sub_f9368e7a[uint64(stor5.field_0)] = stor0
            mem[0] = currentRound
            mem[32] = 6
            sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
            currentRound = uint64(currentRound + 1)
            idx = idx + 1
            continue 
    require arg2
    require arg2 + stor0 >= arg2
    require arg2 + stor0 >= stor0
    require arg2 + stor0 <= totalSupply
    if not accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0:
        if not accountBalances[address(arg1)].field_768:
            if currentRound > 0:
                accountBalances[address(arg1)].field_1024 = currentRound
        accountBalances[address(arg1)].field_768++
        stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(arg1)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(arg1)].field_768)) and stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0
        accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0 = 1
    require accountBalances[address(arg1)].field_0 + arg2 >= accountBalances[address(arg1)].field_0
    require accountBalances[address(arg1)].field_0 + arg2 >= arg2
    accountBalances[address(arg1)].field_0 += arg2
    accountBalances[address(arg1)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(arg1)].field_0
    stor0 += arg2
    if ext_code.size(arg1) > 0:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    emit Transfer(arg2, msg.sender, arg1);
}

function calculateClaimableRewardTillRound(address arg1, uint64 arg2) {
    require arg2 <= currentRound
    require currentRound >= 1
    mem[0] = arg1
    mem[32] = 7
    require accountBalances[address(arg1)].field_768
    require arg2 >= accountBalances[address(arg1)].field_1024
    s = 0
    idx = uint64(stor4[sha3(mem[0 len 64])])
    s = 0
    while uint64(idx) < arg2:
        require sub_11fe7e43[idx << 192].field_768
        if accountBalances[address(arg1)][2][idx << 192].field_0:
            mem[0] = uint64(idx)
            mem[32] = sha3(address(arg1), 7) + 1
            if not accountBalances[address(arg1)][1][idx << 192].field_0:
                if s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                    if s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                        s = sha3(idx << 192, 6)
                        idx = idx + 1
                        s = s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                        continue 
            else:
                if accountBalances[address(arg1)][1][idx << 192].field_0:
                    if accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(arg1)][1][idx << 192].field_0 == sub_11fe7e43[idx << 192].field_512:
                        if s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                            if s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                                s = sha3(idx << 192, 6)
                                idx = idx + 1
                                s = s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                                continue 
        else:
            u = 0
            t = accountBalances[address(arg1)].field_768
            while t > 0:
                require t - 1 < accountBalances[address(arg1)].field_768
                mem[0] = sha3(address(arg1), 7) + 3
                if stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))))[uint8(t - 1)] > uint64(idx):
                    u = stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))))[uint8(t - 1)]
                    t = t - 1
                    continue 
                mem[0] = stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))))[uint8(t - 1)]
                mem[32] = sha3(address(arg1), 7) + 1
                if not accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0:
                    if s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                        if s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                            s = sha3(idx << 192, 6)
                            idx = idx + 1
                            s = s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                            continue 
                else:
                    if accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0:
                        if accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 == sub_11fe7e43[idx << 192].field_512:
                            if s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                                if s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                                    s = sha3(idx << 192, 6)
                                    idx = idx + 1
                                    s = s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                                    continue 
                revert
            mem[0] = 0
            mem[32] = sha3(address(arg1), 7) + 1
            if not accountBalances[address(arg1)][1][0].field_0:
                if s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                    if s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512:
                        s = sha3(idx << 192, 6)
                        idx = idx + 1
                        s = s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512)
                        continue 
            else:
                if accountBalances[address(arg1)][1][0].field_0:
                    if accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(arg1)][1][0].field_0 == sub_11fe7e43[idx << 192].field_512:
                        if s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                            if s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512:
                                s = sha3(idx << 192, 6)
                                idx = idx + 1
                                s = s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512)
                                continue 
        revert
    return s
}

function calculateClaimableReward(address arg1) {
    require currentRound <= currentRound
    require currentRound >= 1
    mem[0] = arg1
    mem[32] = 7
    require accountBalances[address(arg1)].field_768
    require currentRound >= accountBalances[address(arg1)].field_1024
    s = 0
    idx = uint64(stor4[sha3(mem[0 len 64])])
    s = 0
    while uint64(idx) < currentRound:
        require sub_11fe7e43[idx << 192].field_768
        if accountBalances[address(arg1)][2][idx << 192].field_0:
            mem[0] = uint64(idx)
            mem[32] = sha3(address(arg1), 7) + 1
            if not accountBalances[address(arg1)][1][idx << 192].field_0:
                if s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                    if s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                        s = sha3(idx << 192, 6)
                        idx = idx + 1
                        s = s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                        continue 
            else:
                if accountBalances[address(arg1)][1][idx << 192].field_0:
                    if accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(arg1)][1][idx << 192].field_0 == sub_11fe7e43[idx << 192].field_512:
                        if s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                            if s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                                s = sha3(idx << 192, 6)
                                idx = idx + 1
                                s = s + (accountBalances[address(arg1)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                                continue 
        else:
            u = 0
            t = accountBalances[address(arg1)].field_768
            while t > 0:
                require t - 1 < accountBalances[address(arg1)].field_768
                mem[0] = sha3(address(arg1), 7) + 3
                if stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))))[uint8(t - 1)] > uint64(idx):
                    u = stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))))[uint8(t - 1)]
                    t = t - 1
                    continue 
                mem[0] = stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor7', 7))))[uint8(t - 1)]
                mem[32] = sha3(address(arg1), 7) + 1
                if not accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0:
                    if s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                        if s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                            s = sha3(idx << 192, 6)
                            idx = idx + 1
                            s = s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                            continue 
                else:
                    if accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0:
                        if accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 == sub_11fe7e43[idx << 192].field_512:
                            if s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                                if s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                                    s = sha3(idx << 192, 6)
                                    idx = idx + 1
                                    s = s + (accountBalances[address(arg1)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                                    continue 
                revert
            mem[0] = 0
            mem[32] = sha3(address(arg1), 7) + 1
            if not accountBalances[address(arg1)][1][0].field_0:
                if s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                    if s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512:
                        s = sha3(idx << 192, 6)
                        idx = idx + 1
                        s = s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512)
                        continue 
            else:
                if accountBalances[address(arg1)][1][0].field_0:
                    if accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(arg1)][1][0].field_0 == sub_11fe7e43[idx << 192].field_512:
                        if s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                            if s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512:
                                s = sha3(idx << 192, 6)
                                idx = idx + 1
                                s = s + (accountBalances[address(arg1)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512)
                                continue 
        revert
    return s
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != msg.sender
    require not uint8(stor5.field_224)
    require arg1
    require accountBalances[address(msg.sender)].field_0 >= arg2
    require accountBalances[address(arg1)].field_0 + arg2 >= accountBalances[address(arg1)].field_0
    require accountBalances[address(arg1)].field_0 + arg2 >= arg2
    require accountBalances[address(arg1)].field_0 + arg2 >= accountBalances[address(arg1)].field_0
    require lastBlockNumberInRound <= block.number
    if ext_code.size(arg1) <= 0:
        if block.number - lastBlockNumberInRound >= blocksPerRound:
            require blocksPerRound
            if block.number - lastBlockNumberInRound / blocksPerRound:
                require block.number - lastBlockNumberInRound / blocksPerRound
                require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            idx = 0
            while idx < block.number - lastBlockNumberInRound / blocksPerRound:
                sub_f9368e7a[uint64(stor5.field_0)] = stor0
                mem[0] = currentRound
                mem[32] = 6
                sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
                currentRound = uint64(currentRound + 1)
                idx = idx + 1
                continue 
        if not accountBalances[address(msg.sender)][2][uint64(stor5.field_0)].field_0:
            accountBalances[address(msg.sender)].field_768++
            stor[accountBalances[address(msg.sender)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(msg.sender)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(msg.sender)].field_768)) and stor[accountBalances[address(msg.sender)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(msg.sender)][2][uint64(stor5.field_0)].field_0 = 1
        require arg2 <= accountBalances[address(msg.sender)].field_0
        accountBalances[address(msg.sender)].field_0 -= arg2
        accountBalances[address(msg.sender)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(msg.sender)].field_0
        if not accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0:
            if not accountBalances[address(arg1)].field_768:
                if currentRound > 0:
                    accountBalances[address(arg1)].field_1024 = currentRound
            accountBalances[address(arg1)].field_768++
            stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(arg1)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(arg1)].field_768)) and stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0 = 1
        require accountBalances[address(arg1)].field_0 + arg2 >= accountBalances[address(arg1)].field_0
        require accountBalances[address(arg1)].field_0 + arg2 >= arg2
        accountBalances[address(arg1)].field_0 += arg2
        accountBalances[address(arg1)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(arg1)].field_0
    else:
        if block.number - lastBlockNumberInRound >= blocksPerRound:
            require blocksPerRound
            if block.number - lastBlockNumberInRound / blocksPerRound:
                require block.number - lastBlockNumberInRound / blocksPerRound
                require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            idx = 0
            while idx < block.number - lastBlockNumberInRound / blocksPerRound:
                sub_f9368e7a[uint64(stor5.field_0)] = stor0
                mem[0] = currentRound
                mem[32] = 6
                sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
                currentRound = uint64(currentRound + 1)
                idx = idx + 1
                continue 
        if not accountBalances[address(msg.sender)][2][uint64(stor5.field_0)].field_0:
            accountBalances[address(msg.sender)].field_768++
            stor[accountBalances[address(msg.sender)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(msg.sender)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(msg.sender)].field_768)) and stor[accountBalances[address(msg.sender)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(msg.sender)][2][uint64(stor5.field_0)].field_0 = 1
        require arg2 <= accountBalances[address(msg.sender)].field_0
        accountBalances[address(msg.sender)].field_0 -= arg2
        accountBalances[address(msg.sender)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(msg.sender)].field_0
        if not accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0:
            if not accountBalances[address(arg1)].field_768:
                if currentRound > 0:
                    accountBalances[address(arg1)].field_1024 = currentRound
            accountBalances[address(arg1)].field_768++
            stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(arg1)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(arg1)].field_768)) and stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0 = 1
        require accountBalances[address(arg1)].field_0 + arg2 >= accountBalances[address(arg1)].field_0
        require accountBalances[address(arg1)].field_0 + arg2 >= arg2
        accountBalances[address(arg1)].field_0 += arg2
        accountBalances[address(arg1)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(arg1)].field_0
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor5.field_224)
    require arg2
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require accountBalances[address(arg1)].field_0 >= arg3
    require accountBalances[address(arg2)].field_0 + arg3 >= accountBalances[address(arg2)].field_0
    require accountBalances[address(arg2)].field_0 + arg3 >= arg3
    require accountBalances[address(arg2)].field_0 + arg3 >= accountBalances[address(arg2)].field_0
    require lastBlockNumberInRound <= block.number
    if ext_code.size(arg2) <= 0:
        if block.number - lastBlockNumberInRound >= blocksPerRound:
            require blocksPerRound
            if block.number - lastBlockNumberInRound / blocksPerRound:
                require block.number - lastBlockNumberInRound / blocksPerRound
                require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            idx = 0
            while idx < block.number - lastBlockNumberInRound / blocksPerRound:
                sub_f9368e7a[uint64(stor5.field_0)] = stor0
                mem[0] = currentRound
                mem[32] = 6
                sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
                currentRound = uint64(currentRound + 1)
                idx = idx + 1
                continue 
        if not accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0:
            accountBalances[address(arg1)].field_768++
            stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(arg1)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(arg1)].field_768)) and stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0 = 1
        require arg3 <= accountBalances[address(arg1)].field_0
        accountBalances[address(arg1)].field_0 -= arg3
        accountBalances[address(arg1)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(arg1)].field_0
        if not accountBalances[address(arg2)][2][uint64(stor5.field_0)].field_0:
            if not accountBalances[address(arg2)].field_768:
                if currentRound > 0:
                    accountBalances[address(arg2)].field_1024 = currentRound
            accountBalances[address(arg2)].field_768++
            stor[accountBalances[address(arg2)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(arg2)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(arg2)].field_768)) and stor[accountBalances[address(arg2)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(arg2)][2][uint64(stor5.field_0)].field_0 = 1
        require accountBalances[address(arg2)].field_0 + arg3 >= accountBalances[address(arg2)].field_0
        require accountBalances[address(arg2)].field_0 + arg3 >= arg3
        accountBalances[address(arg2)].field_0 += arg3
        accountBalances[address(arg2)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(arg2)].field_0
    else:
        if block.number - lastBlockNumberInRound >= blocksPerRound:
            require blocksPerRound
            if block.number - lastBlockNumberInRound / blocksPerRound:
                require block.number - lastBlockNumberInRound / blocksPerRound
                require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            idx = 0
            while idx < block.number - lastBlockNumberInRound / blocksPerRound:
                sub_f9368e7a[uint64(stor5.field_0)] = stor0
                mem[0] = currentRound
                mem[32] = 6
                sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
                currentRound = uint64(currentRound + 1)
                idx = idx + 1
                continue 
        if not accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0:
            accountBalances[address(arg1)].field_768++
            stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(arg1)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(arg1)].field_768)) and stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0 = 1
        require arg3 <= accountBalances[address(arg1)].field_0
        accountBalances[address(arg1)].field_0 -= arg3
        accountBalances[address(arg1)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(arg1)].field_0
        if not accountBalances[address(arg2)][2][uint64(stor5.field_0)].field_0:
            if not accountBalances[address(arg2)].field_768:
                if currentRound > 0:
                    accountBalances[address(arg2)].field_1024 = currentRound
            accountBalances[address(arg2)].field_768++
            stor[accountBalances[address(arg2)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(arg2)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(arg2)].field_768)) and stor[accountBalances[address(arg2)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(arg2)][2][uint64(stor5.field_0)].field_0 = 1
        require accountBalances[address(arg2)].field_0 + arg3 >= accountBalances[address(arg2)].field_0
        require accountBalances[address(arg2)].field_0 + arg3 >= arg3
        accountBalances[address(arg2)].field_0 += arg3
        accountBalances[address(arg2)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(arg2)].field_0
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = 0, arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg2)
        call arg2.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, 0, arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 64
    mem[160] = arg3
    mem[192 len ceil32(arg3)] = mem[128 len ceil32(arg3)]
    emit Transfer(arg3, Array(len=arg3, data=mem[192 len arg3]), arg1, arg2);
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require not uint8(stor5.field_224)
    require arg1 != msg.sender
    require arg1
    require accountBalances[address(msg.sender)].field_0 >= arg2
    require accountBalances[address(arg1)].field_0 + arg2 >= accountBalances[address(arg1)].field_0
    require accountBalances[address(arg1)].field_0 + arg2 >= arg2
    require accountBalances[address(arg1)].field_0 + arg2 >= accountBalances[address(arg1)].field_0
    require lastBlockNumberInRound <= block.number
    if ext_code.size(arg1) <= 0:
        if block.number - lastBlockNumberInRound >= blocksPerRound:
            require blocksPerRound
            if block.number - lastBlockNumberInRound / blocksPerRound:
                require block.number - lastBlockNumberInRound / blocksPerRound
                require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            idx = 0
            while idx < block.number - lastBlockNumberInRound / blocksPerRound:
                sub_f9368e7a[uint64(stor5.field_0)] = stor0
                mem[0] = currentRound
                mem[32] = 6
                sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
                currentRound = uint64(currentRound + 1)
                idx = idx + 1
                continue 
        if not accountBalances[address(msg.sender)][2][uint64(stor5.field_0)].field_0:
            accountBalances[address(msg.sender)].field_768++
            stor[accountBalances[address(msg.sender)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(msg.sender)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(msg.sender)].field_768)) and stor[accountBalances[address(msg.sender)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(msg.sender)][2][uint64(stor5.field_0)].field_0 = 1
        require arg2 <= accountBalances[address(msg.sender)].field_0
        accountBalances[address(msg.sender)].field_0 -= arg2
        accountBalances[address(msg.sender)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(msg.sender)].field_0
        if not accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0:
            if not accountBalances[address(arg1)].field_768:
                if currentRound > 0:
                    accountBalances[address(arg1)].field_1024 = currentRound
            accountBalances[address(arg1)].field_768++
            stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(arg1)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(arg1)].field_768)) and stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0 = 1
        require accountBalances[address(arg1)].field_0 + arg2 >= accountBalances[address(arg1)].field_0
        require accountBalances[address(arg1)].field_0 + arg2 >= arg2
        accountBalances[address(arg1)].field_0 += arg2
        accountBalances[address(arg1)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(arg1)].field_0
    else:
        if block.number - lastBlockNumberInRound >= blocksPerRound:
            require blocksPerRound
            if block.number - lastBlockNumberInRound / blocksPerRound:
                require block.number - lastBlockNumberInRound / blocksPerRound
                require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
            require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
            idx = 0
            while idx < block.number - lastBlockNumberInRound / blocksPerRound:
                sub_f9368e7a[uint64(stor5.field_0)] = stor0
                mem[0] = currentRound
                mem[32] = 6
                sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
                currentRound = uint64(currentRound + 1)
                idx = idx + 1
                continue 
        if not accountBalances[address(msg.sender)][2][uint64(stor5.field_0)].field_0:
            accountBalances[address(msg.sender)].field_768++
            stor[accountBalances[address(msg.sender)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(msg.sender)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(msg.sender)].field_768)) and stor[accountBalances[address(msg.sender)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(msg.sender)][2][uint64(stor5.field_0)].field_0 = 1
        require arg2 <= accountBalances[address(msg.sender)].field_0
        accountBalances[address(msg.sender)].field_0 -= arg2
        accountBalances[address(msg.sender)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(msg.sender)].field_0
        if not accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0:
            if not accountBalances[address(arg1)].field_768:
                if currentRound > 0:
                    accountBalances[address(arg1)].field_1024 = currentRound
            accountBalances[address(arg1)].field_768++
            stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0 = currentRound * 256^(8 * accountBalances[address(arg1)].field_768) or !(test266151307() * 256^(8 * accountBalances[address(arg1)].field_768)) and stor[accountBalances[address(arg1)].field_770 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'accountBalances', 7)))].field_0
            accountBalances[address(arg1)][2][uint64(stor5.field_0)].field_0 = 1
        require accountBalances[address(arg1)].field_0 + arg2 >= accountBalances[address(arg1)].field_0
        require accountBalances[address(arg1)].field_0 + arg2 >= arg2
        accountBalances[address(arg1)].field_0 += arg2
        accountBalances[address(arg1)][1][uint64(stor5.field_0)].field_0 = accountBalances[address(arg1)].field_0
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[ceil32(arg3.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 160 len arg4.length % 32]))
        call arg1.mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 4] with:
             gas gas_remaining wei
            args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        require ext_call.success
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function claimRewardTillRound(uint64 arg1) {
    require not uint8(stor5.field_224)
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound:
            require block.number - lastBlockNumberInRound / blocksPerRound
            require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        idx = 0
        while idx < block.number - lastBlockNumberInRound / blocksPerRound:
            sub_f9368e7a[uint64(stor5.field_0)] = stor0
            mem[0] = currentRound
            mem[32] = 6
            sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
            currentRound = uint64(currentRound + 1)
            idx = idx + 1
            continue 
    require arg1 <= currentRound
    require currentRound >= 1
    mem[0] = msg.sender
    mem[32] = 7
    require accountBalances[address(msg.sender)].field_768
    require arg1 >= accountBalances[address(msg.sender)].field_1024
    s = 0
    idx = uint64(stor4[sha3(mem[0 len 64])])
    s = 0
    while uint64(idx) < arg1:
        require sub_11fe7e43[idx << 192].field_768
        if accountBalances[address(msg.sender)][2][idx << 192].field_0:
            mem[0] = uint64(idx)
            mem[32] = sha3(address(msg.sender), 7) + 1
            if not accountBalances[address(msg.sender)][1][idx << 192].field_0:
                if s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                    if s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                        s = sha3(idx << 192, 6)
                        idx = idx + 1
                        s = s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                        continue 
            else:
                if accountBalances[address(msg.sender)][1][idx << 192].field_0:
                    if accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(msg.sender)][1][idx << 192].field_0 == sub_11fe7e43[idx << 192].field_512:
                        if s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                            if s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                                s = sha3(idx << 192, 6)
                                idx = idx + 1
                                s = s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                                continue 
        else:
            u = 0
            t = accountBalances[address(msg.sender)].field_768
            while t > 0:
                require t - 1 < accountBalances[address(msg.sender)].field_768
                mem[0] = sha3(address(msg.sender), 7) + 3
                if stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))))[uint8(t - 1)] > uint64(idx):
                    u = stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))))[uint8(t - 1)]
                    t = t - 1
                    continue 
                mem[0] = stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))))[uint8(t - 1)]
                mem[32] = sha3(address(msg.sender), 7) + 1
                if not accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0:
                    if s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                        if s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                            s = sha3(idx << 192, 6)
                            idx = idx + 1
                            s = s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                            continue 
                else:
                    if accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0:
                        if accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 == sub_11fe7e43[idx << 192].field_512:
                            if s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                                if s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                                    s = sha3(idx << 192, 6)
                                    idx = idx + 1
                                    s = s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                                    continue 
                revert
            mem[0] = 0
            mem[32] = sha3(address(msg.sender), 7) + 1
            if not accountBalances[address(msg.sender)][1][0].field_0:
                if s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                    if s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512:
                        s = sha3(idx << 192, 6)
                        idx = idx + 1
                        s = s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512)
                        continue 
            else:
                if accountBalances[address(msg.sender)][1][0].field_0:
                    if accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(msg.sender)][1][0].field_0 == sub_11fe7e43[idx << 192].field_512:
                        if s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                            if s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512:
                                s = sha3(idx << 192, 6)
                                idx = idx + 1
                                s = s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512)
                                continue 
        revert
    accountBalances[address(msg.sender)].field_1024 = arg1
    if s > 0:
        require accountBalances[address(msg.sender)].field_1280 + s >= accountBalances[address(msg.sender)].field_1280
        require accountBalances[address(msg.sender)].field_1280 + s >= s
        accountBalances[address(msg.sender)].field_1280 += s
        call msg.sender with:
           value s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return s
}

function claimReward() {
    require not uint8(stor5.field_224)
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound:
            require block.number - lastBlockNumberInRound / blocksPerRound
            require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        idx = 0
        while idx < block.number - lastBlockNumberInRound / blocksPerRound:
            sub_f9368e7a[uint64(stor5.field_0)] = stor0
            mem[0] = currentRound
            mem[32] = 6
            sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
            currentRound = uint64(currentRound + 1)
            idx = idx + 1
            continue 
    require not uint8(stor5.field_224)
    require lastBlockNumberInRound <= block.number
    if block.number - lastBlockNumberInRound >= blocksPerRound:
        require blocksPerRound
        if block.number - lastBlockNumberInRound / blocksPerRound:
            require block.number - lastBlockNumberInRound / blocksPerRound
            require block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound / block.number - lastBlockNumberInRound / blocksPerRound == blocksPerRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= lastBlockNumberInRound
        require lastBlockNumberInRound + (block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound) >= block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        lastBlockNumberInRound += block.number - lastBlockNumberInRound / blocksPerRound * blocksPerRound
        idx = 0
        while idx < block.number - lastBlockNumberInRound / blocksPerRound:
            sub_f9368e7a[uint64(stor5.field_0)] = stor0
            mem[0] = currentRound
            mem[32] = 6
            sub_11fe7e43[uint64(stor5.field_0)].field_0 = currentRound
            currentRound = uint64(currentRound + 1)
            idx = idx + 1
            continue 
    require currentRound <= currentRound
    require currentRound >= 1
    mem[0] = msg.sender
    mem[32] = 7
    require accountBalances[address(msg.sender)].field_768
    require currentRound >= accountBalances[address(msg.sender)].field_1024
    s = 0
    idx = uint64(stor4[sha3(mem[0 len 64])])
    s = 0
    while uint64(idx) < currentRound:
        require sub_11fe7e43[idx << 192].field_768
        if accountBalances[address(msg.sender)][2][idx << 192].field_0:
            mem[0] = uint64(idx)
            mem[32] = sha3(address(msg.sender), 7) + 1
            if not accountBalances[address(msg.sender)][1][idx << 192].field_0:
                if s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                    if s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                        s = sha3(idx << 192, 6)
                        idx = idx + 1
                        s = s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                        continue 
            else:
                if accountBalances[address(msg.sender)][1][idx << 192].field_0:
                    if accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(msg.sender)][1][idx << 192].field_0 == sub_11fe7e43[idx << 192].field_512:
                        if s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                            if s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                                s = sha3(idx << 192, 6)
                                idx = idx + 1
                                s = s + (accountBalances[address(msg.sender)][1][idx << 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                                continue 
        else:
            u = 0
            t = accountBalances[address(msg.sender)].field_768
            while t > 0:
                require t - 1 < accountBalances[address(msg.sender)].field_768
                mem[0] = sha3(address(msg.sender), 7) + 3
                if stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))))[uint8(t - 1)] > uint64(idx):
                    u = stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))))[uint8(t - 1)]
                    t = t - 1
                    continue 
                mem[0] = stor((0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor7', 7))))[uint8(t - 1)]
                mem[32] = sha3(address(msg.sender), 7) + 1
                if not accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0:
                    if s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                        if s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                            s = sha3(idx << 192, 6)
                            idx = idx + 1
                            s = s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                            continue 
                else:
                    if accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0:
                        if accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 == sub_11fe7e43[idx << 192].field_512:
                            if s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                                if s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512:
                                    s = sha3(idx << 192, 6)
                                    idx = idx + 1
                                    s = s + (accountBalances[address(msg.sender)][1][stor[(0.25 / t - 1) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'accountBalances', 7)))].field_(64 * t - 1 % 4) - 192].field_0 * sub_11fe7e43[idx << 192].field_512)
                                    continue 
                revert
            mem[0] = 0
            mem[32] = sha3(address(msg.sender), 7) + 1
            if not accountBalances[address(msg.sender)][1][0].field_0:
                if s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                    if s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512:
                        s = sha3(idx << 192, 6)
                        idx = idx + 1
                        s = s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512)
                        continue 
            else:
                if accountBalances[address(msg.sender)][1][0].field_0:
                    if accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512 / accountBalances[address(msg.sender)][1][0].field_0 == sub_11fe7e43[idx << 192].field_512:
                        if s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= s:
                            if s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512) >= accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512:
                                s = sha3(idx << 192, 6)
                                idx = idx + 1
                                s = s + (accountBalances[address(msg.sender)][1][0].field_0 * sub_11fe7e43[idx << 192].field_512)
                                continue 
        revert
    accountBalances[address(msg.sender)].field_1024 = currentRound
    if s > 0:
        require accountBalances[address(msg.sender)].field_1280 + s >= accountBalances[address(msg.sender)].field_1280
        require accountBalances[address(msg.sender)].field_1280 + s >= s
        accountBalances[address(msg.sender)].field_1280 += s
        call msg.sender with:
           value s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return s
}



}
