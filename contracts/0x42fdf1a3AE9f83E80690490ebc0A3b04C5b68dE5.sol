contract main {




// =====================  Runtime code  =====================


#
#  - reinvest(uint256 arg1, uint256 arg2)
#  - grant(address arg1, uint256 arg2)
#  - invest(uint256 arg1, uint256 arg2)
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
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020071;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020072;

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
    storF3F7[stor8.length] = arg2
    storF3F7[stor8.length] = arg3
    storF3F7[stor8.length] = arg4
    storF3F7[stor8.length] = arg5
    storF3F7[stor8.length] = block.timestamp
}

function sub_b124a607(?) {
    require msg.sender == owner
    if arg1 < 0:
        revert with 0, 'Wrong investment plan id'
    if arg1 >= stor8.length:
        revert with 0, 'Wrong investment plan id'
    stor8[arg1].field_768 = arg2
    require arg3 + stor8[arg1].field_1024 >= stor8[arg1].field_1024
    stor8[arg1].field_1024 += arg3
    stor8[arg1].field_1280 = block.timestamp
}

function sub_ddc50d85(?) {
    if owner != msg.sender:
        if arg1 != address2UID[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner or self can check the investor info.'
    if arg2 < 0:
        revert with 0, 'Wrong investment plan id'
    if arg2 >= stor8.length:
        revert with 0, 'Wrong investment plan id'
    if 0 == stor8[arg2].field_512:
        return stor8[arg2].field_512, stor8[arg2].field_1024, 0
    idx = 0
    while idx < uid2Investor[arg1].field_1024:
        if not uid2Investor[arg1][5][idx].field_256:
            revert with 0, 'wrong investment date'
        mem[0] = idx
        mem[32] = sha3(arg1, 7) + 5
        if arg2 != uid2Investor[arg1][5][idx].field_0:
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
        if arg1 != address2UID[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner or self can check the investor info.'
    if not uid2Investor[arg1].field_1024:
        mem[(32 * uid2Investor[arg1].field_1024) + 128] = uid2Investor[arg1].field_1024
    else:
        mem[128 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
        mem[(32 * uid2Investor[arg1].field_1024) + 128] = uid2Investor[arg1].field_1024
        mem[(32 * uid2Investor[arg1].field_1024) + 160 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
    idx = 0
    while idx < uid2Investor[arg1].field_1024:
        if not uid2Investor[arg1][5][idx].field_256:
            revert with 0, 'wrong investment date'
        require idx < mem[(32 * uid2Investor[arg1].field_1024) + 128]
        mem[(32 * uid2Investor[arg1].field_1024) + (32 * idx) + 160] = uid2Investor[arg1][5][idx].field_1024
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
                mem[(32 * idx) + 128] = (block.timestamp * stor8[stor7[arg1][5][idx].field_0].field_0 * uid2Investor[arg1][5][idx].field_512 / 1000) - (uid2Investor[arg1][5][idx].field_768 * stor8[stor7[arg1][5][idx].field_0].field_0 * uid2Investor[arg1][5][idx].field_512 / 1000) / 24 * 3600
            else:
                require stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256 >= uid2Investor[arg1][5][idx].field_256
                require uid2Investor[arg1][5][idx].field_0 < stor8.length
                if block.timestamp < stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 7) + 5
                    require idx < uid2Investor[arg1].field_1024
                    mem[(32 * idx) + 128] = (block.timestamp * stor8[stor7[arg1][5][idx].field_0].field_0 * uid2Investor[arg1][5][idx].field_512 / 1000) - (uid2Investor[arg1][5][idx].field_768 * stor8[stor7[arg1][5][idx].field_0].field_0 * uid2Investor[arg1][5][idx].field_512 / 1000) / 24 * 3600
                else:
                    require uid2Investor[arg1][5][idx].field_0 < stor8.length
                    require stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256 >= uid2Investor[arg1][5][idx].field_256
                    mem[0] = idx
                    mem[32] = sha3(arg1, 7) + 5
                    require idx < uid2Investor[arg1].field_1024
                    mem[(32 * idx) + 128] = (stor8[stor7[arg1][5][idx].field_0].field_256 * stor8[stor7[arg1][5][idx].field_0].field_0 * uid2Investor[arg1][5][idx].field_512 / 1000) + (uid2Investor[arg1][5][idx].field_256 * stor8[stor7[arg1][5][idx].field_0].field_0 * uid2Investor[arg1][5][idx].field_512 / 1000) - (uid2Investor[arg1][5][idx].field_768 * stor8[stor7[arg1][5][idx].field_0].field_0 * uid2Investor[arg1][5][idx].field_512 / 1000) / 24 * 3600
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
    if not address2UID[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not withdraw because no any investments'
    idx = 0
    while idx < uid2Investor[stor6[msg.sender]].field_1024:
        if not uid2Investor[stor6[msg.sender]][5][idx].field_1280:
            require uid2Investor[stor6[msg.sender]][5][idx].field_0 < stor8.length
            if stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 <= 0:
                require (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 >= 0
                call msg.sender with:
                   value (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uid2Investor[stor6[msg.sender]][5][idx].field_768 = block.timestamp
                uid2Investor[stor6[msg.sender]][5][idx].field_1280 = 0
                uid2Investor[stor6[msg.sender]][5][idx].field_1024 += (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600
            else:
                require stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 + uid2Investor[stor6[msg.sender]][5][idx].field_256 >= uid2Investor[stor6[msg.sender]][5][idx].field_256
                if block.timestamp < stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 + uid2Investor[stor6[msg.sender]][5][idx].field_256:
                    require (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 >= 0
                    call msg.sender with:
                       value (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uid2Investor[stor6[msg.sender]][5][idx].field_768 = block.timestamp
                    uid2Investor[stor6[msg.sender]][5][idx].field_1280 = 0
                    uid2Investor[stor6[msg.sender]][5][idx].field_1024 += (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600
                else:
                    require (stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) + (uid2Investor[stor6[msg.sender]][5][idx].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 >= 0
                    call msg.sender with:
                       value (stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) + (uid2Investor[stor6[msg.sender]][5][idx].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uid2Investor[stor6[msg.sender]][5][idx].field_768 = stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 + uid2Investor[stor6[msg.sender]][5][idx].field_256
                    uid2Investor[stor6[msg.sender]][5][idx].field_1280 = 1
                    uid2Investor[stor6[msg.sender]][5][idx].field_1024 += (stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) + (uid2Investor[stor6[msg.sender]][5][idx].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600
        mem[0] = address2UID[msg.sender]
        mem[32] = 7
        idx = idx + 1
        continue 
    if uid2Investor[stor6[msg.sender]].field_512 > 0:
        call msg.sender with:
           value uid2Investor[stor6[msg.sender]].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require uid2Investor[stor6[msg.sender]].field_256 + uid2Investor[stor6[msg.sender]].field_512 >= uid2Investor[stor6[msg.sender]].field_512
        uid2Investor[stor6[msg.sender]].field_256 += uid2Investor[stor6[msg.sender]].field_512
        uid2Investor[stor6[msg.sender]].field_512 = 0
    emit onWithdraw(msg.sender, 0);
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
            mem[(32 * stor8.length) + (32 * idx) + 160] = stor8[idx].field_0
            require idx < mem[(64 * stor8.length) + 160]
            mem[(64 * stor8.length) + (32 * idx) + 192] = stor8[idx].field_256
            require idx < mem[(98 * stor8.length) + 192]
            mem[(98 * stor8.length) + (32 * idx) + 224] = stor8[idx].field_512
            require idx < mem[(131 * stor8.length) + 224]
            mem[(131 * stor8.length) + (32 * idx) + 256] = stor8[idx].field_768
            require idx < mem[(164 * stor8.length) + 256]
            mem[(164 * stor8.length) + (32 * idx) + 288] = stor8[idx].field_1024
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
            mem[(6 * stor8.length * stor8.length) + (32 * mem[96]) + mem[64] + 256] = mem[(6 * stor8.length * stor8.length) + (32 * stor8.length) + 160]
            s = (6 * stor8.length * stor8.length) + 32
            continue 
        mem[mem[64] + 64] = (32 * mem[(32 * stor8.length) + 128]) + (32 * mem[96]) + 256
        mem[(32 * _121) + (32 * mem[96]) + mem[64] + 256] = mem[(64 * stor8.length) + 160]
        _155 = mem[(64 * stor8.length) + 160]
        mem[(32 * _121) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(64 * stor8.length) + 160])] = mem[(64 * stor8.length) + 192 len floor32(mem[(64 * stor8.length) + 160])]
        mem[mem[64] + 96] = (32 * _155) + (32 * _121) + (32 * mem[96]) + 288
        mem[(32 * _155) + (32 * _121) + (32 * mem[96]) + mem[64] + 288] = mem[(98 * stor8.length) + 192]
        _183 = mem[(98 * stor8.length) + 192]
        mem[(32 * _155) + (32 * _121) + (32 * mem[96]) + mem[64] + 320 len floor32(mem[(98 * stor8.length) + 192])] = mem[(98 * stor8.length) + 224 len floor32(mem[(98 * stor8.length) + 192])]
        mem[mem[64] + 128] = (32 * _183) + (32 * _155) + (32 * _121) + (32 * mem[96]) + 320
        mem[(32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + mem[64] + 320] = mem[(131 * stor8.length) + 224]
        _205 = mem[(131 * stor8.length) + 224]
        mem[(32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + mem[64] + 352 len floor32(mem[(131 * stor8.length) + 224])] = mem[(131 * stor8.length) + 256 len floor32(mem[(131 * stor8.length) + 224])]
        mem[mem[64] + 160] = (32 * _205) + (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + 352
        mem[(32 * _205) + (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + mem[64] + 352] = mem[(164 * stor8.length) + 256]
        _221 = mem[(164 * stor8.length) + 256]
        mem[(32 * _205) + (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + mem[64] + 384 len floor32(mem[(164 * stor8.length) + 256])] = mem[(164 * stor8.length) + 288 len floor32(mem[(164 * stor8.length) + 256])]
        return 192, 
               mem[mem[64] + 32 len 128],
               (32 * _205) + (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + 352,
               mem[mem[64] + 192 len (32 * _221) + (32 * _205) + (32 * _183) + (32 * _155) + (32 * _121) + (32 * _68) + 192]
    mem[128 len 32 * stor8.length] = code.data[11615 len 32 * stor8.length]
    mem[(32 * stor8.length) + 128] = stor8.length
    mem[(32 * stor8.length) + 160 len 32 * stor8.length] = code.data[11615 len 32 * stor8.length]
    mem[(64 * stor8.length) + 160] = stor8.length
    mem[(64 * stor8.length) + 192 len 32 * stor8.length] = code.data[11615 len 32 * stor8.length]
    mem[(98 * stor8.length) + 192] = stor8.length
    mem[(98 * stor8.length) + 224 len 32 * stor8.length] = code.data[11615 len 32 * stor8.length]
    mem[(131 * stor8.length) + 224] = stor8.length
    mem[(131 * stor8.length) + 256 len 32 * stor8.length] = code.data[11615 len 32 * stor8.length]
    mem[(164 * stor8.length) + 256] = stor8.length
    mem[64] = (197 * stor8.length) + 288
    mem[(164 * stor8.length) + 288 len 32 * stor8.length] = code.data[11615 len 32 * stor8.length]
    s = 0
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        require idx < mem[96]
        mem[(32 * idx) + 128] = idx
        require idx < mem[(32 * stor8.length) + 128]
        mem[(32 * stor8.length) + (32 * idx) + 160] = stor8[idx].field_0
        require idx < mem[(64 * stor8.length) + 160]
        mem[(64 * stor8.length) + (32 * idx) + 192] = stor8[idx].field_256
        require idx < mem[(98 * stor8.length) + 192]
        mem[(98 * stor8.length) + (32 * idx) + 224] = stor8[idx].field_512
        require idx < mem[(131 * stor8.length) + 224]
        mem[(131 * stor8.length) + (32 * idx) + 256] = stor8[idx].field_768
        require idx < mem[(164 * stor8.length) + 256]
        mem[(164 * stor8.length) + (32 * idx) + 288] = stor8[idx].field_1024
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
        mem[(6 * stor8.length * stor8.length) + (32 * mem[96]) + mem[64] + 256] = mem[(6 * stor8.length * stor8.length) + (32 * stor8.length) + 160]
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

function getInvestmentPlanByUID(uint256 arg1) {
    if msg.sender == owner:
        if not uid2Investor[arg1].field_1024:
            mem[(32 * uid2Investor[arg1].field_1024) + 128] = uid2Investor[arg1].field_1024
            mem[(64 * uid2Investor[arg1].field_1024) + 160] = uid2Investor[arg1].field_1024
            mem[(98 * uid2Investor[arg1].field_1024) + 192] = uid2Investor[arg1].field_1024
            mem[(131 * uid2Investor[arg1].field_1024) + 224] = uid2Investor[arg1].field_1024
            idx = 0
            while idx < uid2Investor[arg1].field_1024:
                if not uid2Investor[arg1][5][idx].field_256:
                    revert with 0, 'wrong investment date'
                require idx < uid2Investor[arg1].field_1024
                mem[(32 * idx) + 128] = uid2Investor[arg1][5][idx].field_0
                require idx < mem[(98 * uid2Investor[arg1].field_1024) + 192]
                mem[(98 * uid2Investor[arg1].field_1024) + (32 * idx) + 224] = uid2Investor[arg1][5][idx].field_1024
                require idx < mem[(32 * uid2Investor[arg1].field_1024) + 128]
                mem[(32 * uid2Investor[arg1].field_1024) + (32 * idx) + 160] = uid2Investor[arg1][5][idx].field_256
                require idx < mem[(64 * uid2Investor[arg1].field_1024) + 160]
                mem[(64 * uid2Investor[arg1].field_1024) + (32 * idx) + 192] = uid2Investor[arg1][5][idx].field_512
                mem[0] = idx
                mem[32] = sha3(arg1, 7) + 5
                require idx < mem[(131 * uid2Investor[arg1].field_1024) + 224]
                if uid2Investor[arg1][5][idx].field_1280:
                    mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 1
                else:
                    mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 0
                    mem[32] = sha3(arg1, 7) + 5
                    require uid2Investor[arg1][5][idx].field_0 < stor8.length
                    mem[0] = 8
                    if stor8[stor7[arg1][5][idx].field_0].field_256 > 0:
                        require uid2Investor[arg1][5][idx].field_0 < stor8.length
                        mem[0] = idx
                        mem[32] = sha3(arg1, 7) + 5
                        require stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256 >= uid2Investor[arg1][5][idx].field_256
                        if block.timestamp >= stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256:
                            require idx < mem[(131 * uid2Investor[arg1].field_1024) + 224]
                            mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 1
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
            _393 = mem[(64 * uid2Investor[arg1].field_1024) + 160]
            mem[(32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 512 len floor32(mem[(64 * uid2Investor[arg1].field_1024) + 160])] = mem[(64 * uid2Investor[arg1].field_1024) + 192 len floor32(mem[(64 * uid2Investor[arg1].field_1024) + 160])]
            mem[(164 * uid2Investor[arg1].field_1024) + 352] = (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 256
            mem[(32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 512] = mem[(98 * uid2Investor[arg1].field_1024) + 192]
            _437 = mem[(98 * uid2Investor[arg1].field_1024) + 192]
            mem[(32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 544 len floor32(mem[(98 * uid2Investor[arg1].field_1024) + 192])] = mem[(98 * uid2Investor[arg1].field_1024) + 224 len floor32(mem[(98 * uid2Investor[arg1].field_1024) + 192])]
            mem[(164 * uid2Investor[arg1].field_1024) + 384] = (32 * _437) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 288
            mem[(32 * _437) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 544] = mem[(131 * uid2Investor[arg1].field_1024) + 224]
            _469 = mem[(131 * uid2Investor[arg1].field_1024) + 224]
            mem[(32 * _437) + (32 * _393) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 576 len floor32(mem[(131 * uid2Investor[arg1].field_1024) + 224])] = mem[(131 * uid2Investor[arg1].field_1024) + 256 len floor32(mem[(131 * uid2Investor[arg1].field_1024) + 224])]
            return 160, 
                   (32 * uid2Investor[arg1].field_1024) + 192,
                   mem[(164 * uid2Investor[arg1].field_1024) + 320 len 96],
                   uid2Investor[arg1].field_1024,
                   mem[(164 * uid2Investor[arg1].field_1024) + 448 len (33 * uid2Investor[arg1].field_1024) + (32 * _469) + (32 * _437) + (32 * _393) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + 128]
        mem[128 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
        mem[(32 * uid2Investor[arg1].field_1024) + 128] = uid2Investor[arg1].field_1024
        mem[(32 * uid2Investor[arg1].field_1024) + 160 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
        mem[(64 * uid2Investor[arg1].field_1024) + 160] = uid2Investor[arg1].field_1024
        mem[(64 * uid2Investor[arg1].field_1024) + 192 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
        mem[(98 * uid2Investor[arg1].field_1024) + 192] = uid2Investor[arg1].field_1024
        mem[(98 * uid2Investor[arg1].field_1024) + 224 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
        mem[(131 * uid2Investor[arg1].field_1024) + 224] = uid2Investor[arg1].field_1024
        mem[(131 * uid2Investor[arg1].field_1024) + 256 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
        idx = 0
        while idx < uid2Investor[arg1].field_1024:
            if not uid2Investor[arg1][5][idx].field_256:
                revert with 0, 'wrong investment date'
            require idx < uid2Investor[arg1].field_1024
            mem[(32 * idx) + 128] = uid2Investor[arg1][5][idx].field_0
            require idx < mem[(98 * uid2Investor[arg1].field_1024) + 192]
            mem[(98 * uid2Investor[arg1].field_1024) + (32 * idx) + 224] = uid2Investor[arg1][5][idx].field_1024
            require idx < mem[(32 * uid2Investor[arg1].field_1024) + 128]
            mem[(32 * uid2Investor[arg1].field_1024) + (32 * idx) + 160] = uid2Investor[arg1][5][idx].field_256
            require idx < mem[(64 * uid2Investor[arg1].field_1024) + 160]
            mem[(64 * uid2Investor[arg1].field_1024) + (32 * idx) + 192] = uid2Investor[arg1][5][idx].field_512
            mem[0] = idx
            mem[32] = sha3(arg1, 7) + 5
            require idx < mem[(131 * uid2Investor[arg1].field_1024) + 224]
            if uid2Investor[arg1][5][idx].field_1280:
                mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 1
            else:
                mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 0
                mem[32] = sha3(arg1, 7) + 5
                require uid2Investor[arg1][5][idx].field_0 < stor8.length
                mem[0] = 8
                if stor8[stor7[arg1][5][idx].field_0].field_256 > 0:
                    require uid2Investor[arg1][5][idx].field_0 < stor8.length
                    mem[0] = idx
                    mem[32] = sha3(arg1, 7) + 5
                    require stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256 >= uid2Investor[arg1][5][idx].field_256
                    if block.timestamp >= stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256:
                        require idx < mem[(131 * uid2Investor[arg1].field_1024) + 224]
                        mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 1
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
        _440 = mem[(98 * uid2Investor[arg1].field_1024) + 192]
        mem[(32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 544 len floor32(mem[(98 * uid2Investor[arg1].field_1024) + 192])] = mem[(98 * uid2Investor[arg1].field_1024) + 224 len floor32(mem[(98 * uid2Investor[arg1].field_1024) + 192])]
        mem[(164 * uid2Investor[arg1].field_1024) + 384] = (32 * _440) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 288
        mem[(32 * _440) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 544] = mem[(131 * uid2Investor[arg1].field_1024) + 224]
        _472 = mem[(131 * uid2Investor[arg1].field_1024) + 224]
        mem[(32 * _440) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 576 len floor32(mem[(131 * uid2Investor[arg1].field_1024) + 224])] = mem[(131 * uid2Investor[arg1].field_1024) + 256 len floor32(mem[(131 * uid2Investor[arg1].field_1024) + 224])]
        return memory
          from (164 * uid2Investor[arg1].field_1024) + 256
           len (32 * _472) + (32 * _440) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (33 * uid2Investor[arg1].field_1024) + 320
    if arg1 != address2UID[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'only owner or self can check the investment plan info.'
    if not uid2Investor[arg1].field_1024:
        mem[(32 * uid2Investor[arg1].field_1024) + 128] = uid2Investor[arg1].field_1024
        mem[(64 * uid2Investor[arg1].field_1024) + 160] = uid2Investor[arg1].field_1024
        mem[(98 * uid2Investor[arg1].field_1024) + 192] = uid2Investor[arg1].field_1024
        mem[(131 * uid2Investor[arg1].field_1024) + 224] = uid2Investor[arg1].field_1024
        idx = 0
        while idx < uid2Investor[arg1].field_1024:
            if not uid2Investor[arg1][5][idx].field_256:
                revert with 0, 'wrong investment date'
            require idx < uid2Investor[arg1].field_1024
            mem[(32 * idx) + 128] = uid2Investor[arg1][5][idx].field_0
            require idx < mem[(98 * uid2Investor[arg1].field_1024) + 192]
            mem[(98 * uid2Investor[arg1].field_1024) + (32 * idx) + 224] = uid2Investor[arg1][5][idx].field_1024
            require idx < mem[(32 * uid2Investor[arg1].field_1024) + 128]
            mem[(32 * uid2Investor[arg1].field_1024) + (32 * idx) + 160] = uid2Investor[arg1][5][idx].field_256
            require idx < mem[(64 * uid2Investor[arg1].field_1024) + 160]
            mem[(64 * uid2Investor[arg1].field_1024) + (32 * idx) + 192] = uid2Investor[arg1][5][idx].field_512
            mem[0] = idx
            mem[32] = sha3(arg1, 7) + 5
            require idx < mem[(131 * uid2Investor[arg1].field_1024) + 224]
            if uid2Investor[arg1][5][idx].field_1280:
                mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 1
            else:
                mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 0
                mem[32] = sha3(arg1, 7) + 5
                require uid2Investor[arg1][5][idx].field_0 < stor8.length
                mem[0] = 8
                if stor8[stor7[arg1][5][idx].field_0].field_256 > 0:
                    require uid2Investor[arg1][5][idx].field_0 < stor8.length
                    mem[0] = idx
                    mem[32] = sha3(arg1, 7) + 5
                    require stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256 >= uid2Investor[arg1][5][idx].field_256
                    if block.timestamp >= stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256:
                        require idx < mem[(131 * uid2Investor[arg1].field_1024) + 224]
                        mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 1
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
        _399 = mem[(64 * uid2Investor[arg1].field_1024) + 160]
        mem[(32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 512 len floor32(mem[(64 * uid2Investor[arg1].field_1024) + 160])] = mem[(64 * uid2Investor[arg1].field_1024) + 192 len floor32(mem[(64 * uid2Investor[arg1].field_1024) + 160])]
        mem[(164 * uid2Investor[arg1].field_1024) + 352] = (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 256
        mem[(32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 512] = mem[(98 * uid2Investor[arg1].field_1024) + 192]
        _443 = mem[(98 * uid2Investor[arg1].field_1024) + 192]
        mem[(32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 544 len floor32(mem[(98 * uid2Investor[arg1].field_1024) + 192])] = mem[(98 * uid2Investor[arg1].field_1024) + 224 len floor32(mem[(98 * uid2Investor[arg1].field_1024) + 192])]
        mem[(164 * uid2Investor[arg1].field_1024) + 384] = (32 * _443) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 288
        mem[(32 * _443) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 544] = mem[(131 * uid2Investor[arg1].field_1024) + 224]
        _475 = mem[(131 * uid2Investor[arg1].field_1024) + 224]
        mem[(32 * _443) + (32 * _399) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 576 len floor32(mem[(131 * uid2Investor[arg1].field_1024) + 224])] = mem[(131 * uid2Investor[arg1].field_1024) + 256 len floor32(mem[(131 * uid2Investor[arg1].field_1024) + 224])]
        return 160, 
               (32 * uid2Investor[arg1].field_1024) + 192,
               mem[(164 * uid2Investor[arg1].field_1024) + 320 len 96],
               uid2Investor[arg1].field_1024,
               mem[(164 * uid2Investor[arg1].field_1024) + 448 len (33 * uid2Investor[arg1].field_1024) + (32 * _475) + (32 * _443) + (32 * _399) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + 128]
    mem[128 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
    mem[(32 * uid2Investor[arg1].field_1024) + 128] = uid2Investor[arg1].field_1024
    mem[(32 * uid2Investor[arg1].field_1024) + 160 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
    mem[(64 * uid2Investor[arg1].field_1024) + 160] = uid2Investor[arg1].field_1024
    mem[(64 * uid2Investor[arg1].field_1024) + 192 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
    mem[(98 * uid2Investor[arg1].field_1024) + 192] = uid2Investor[arg1].field_1024
    mem[(98 * uid2Investor[arg1].field_1024) + 224 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
    mem[(131 * uid2Investor[arg1].field_1024) + 224] = uid2Investor[arg1].field_1024
    mem[(131 * uid2Investor[arg1].field_1024) + 256 len 32 * uid2Investor[arg1].field_1024] = code.data[11615 len 32 * uid2Investor[arg1].field_1024]
    idx = 0
    while idx < uid2Investor[arg1].field_1024:
        if not uid2Investor[arg1][5][idx].field_256:
            revert with 0, 'wrong investment date'
        require idx < uid2Investor[arg1].field_1024
        mem[(32 * idx) + 128] = uid2Investor[arg1][5][idx].field_0
        require idx < mem[(98 * uid2Investor[arg1].field_1024) + 192]
        mem[(98 * uid2Investor[arg1].field_1024) + (32 * idx) + 224] = uid2Investor[arg1][5][idx].field_1024
        require idx < mem[(32 * uid2Investor[arg1].field_1024) + 128]
        mem[(32 * uid2Investor[arg1].field_1024) + (32 * idx) + 160] = uid2Investor[arg1][5][idx].field_256
        require idx < mem[(64 * uid2Investor[arg1].field_1024) + 160]
        mem[(64 * uid2Investor[arg1].field_1024) + (32 * idx) + 192] = uid2Investor[arg1][5][idx].field_512
        mem[0] = idx
        mem[32] = sha3(arg1, 7) + 5
        require idx < mem[(131 * uid2Investor[arg1].field_1024) + 224]
        if uid2Investor[arg1][5][idx].field_1280:
            mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 1
        else:
            mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 0
            mem[32] = sha3(arg1, 7) + 5
            require uid2Investor[arg1][5][idx].field_0 < stor8.length
            mem[0] = 8
            if stor8[stor7[arg1][5][idx].field_0].field_256 > 0:
                require uid2Investor[arg1][5][idx].field_0 < stor8.length
                mem[0] = idx
                mem[32] = sha3(arg1, 7) + 5
                require stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256 >= uid2Investor[arg1][5][idx].field_256
                if block.timestamp >= stor8[stor7[arg1][5][idx].field_0].field_256 + uid2Investor[arg1][5][idx].field_256:
                    require idx < mem[(131 * uid2Investor[arg1].field_1024) + 224]
                    mem[(131 * uid2Investor[arg1].field_1024) + (32 * idx) + 256] = 1
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
    _446 = mem[(98 * uid2Investor[arg1].field_1024) + 192]
    mem[(32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 544 len floor32(mem[(98 * uid2Investor[arg1].field_1024) + 192])] = mem[(98 * uid2Investor[arg1].field_1024) + 224 len floor32(mem[(98 * uid2Investor[arg1].field_1024) + 192])]
    mem[(164 * uid2Investor[arg1].field_1024) + 384] = (32 * _446) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (32 * uid2Investor[arg1].field_1024) + 288
    mem[(32 * _446) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 544] = mem[(131 * uid2Investor[arg1].field_1024) + 224]
    _478 = mem[(131 * uid2Investor[arg1].field_1024) + 224]
    mem[(32 * _446) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + (197 * uid2Investor[arg1].field_1024) + 576 len floor32(mem[(131 * uid2Investor[arg1].field_1024) + 224])] = mem[(131 * uid2Investor[arg1].field_1024) + 256 len floor32(mem[(131 * uid2Investor[arg1].field_1024) + 224])]
    return 160, 
           (32 * uid2Investor[arg1].field_1024) + 192,
           mem[(164 * uid2Investor[arg1].field_1024) + 320 len 96],
           uid2Investor[arg1].field_1024,
           mem[(164 * uid2Investor[arg1].field_1024) + 448 len (33 * uid2Investor[arg1].field_1024) + (32 * _478) + (32 * _446) + (32 * mem[(64 * uid2Investor[arg1].field_1024) + 160]) + (32 * mem[(32 * uid2Investor[arg1].field_1024) + 128]) + 128]
}

function _fallback() payable {
    if not msg.value:
        if not address2UID[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not withdraw because no any investments'
        idx = 0
        while idx < uid2Investor[stor6[msg.sender]].field_1024:
            if not uid2Investor[stor6[msg.sender]][5][idx].field_1280:
                require uid2Investor[stor6[msg.sender]][5][idx].field_0 < stor8.length
                if stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 <= 0:
                    require (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 >= 0
                    call msg.sender with:
                       value (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uid2Investor[stor6[msg.sender]][5][idx].field_768 = block.timestamp
                    uid2Investor[stor6[msg.sender]][5][idx].field_1280 = 0
                    uid2Investor[stor6[msg.sender]][5][idx].field_1024 += (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600
                else:
                    require stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 + uid2Investor[stor6[msg.sender]][5][idx].field_256 >= uid2Investor[stor6[msg.sender]][5][idx].field_256
                    if block.timestamp < stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 + uid2Investor[stor6[msg.sender]][5][idx].field_256:
                        require (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 >= 0
                        call msg.sender with:
                           value (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uid2Investor[stor6[msg.sender]][5][idx].field_768 = block.timestamp
                        uid2Investor[stor6[msg.sender]][5][idx].field_1280 = 0
                        uid2Investor[stor6[msg.sender]][5][idx].field_1024 += (block.timestamp * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600
                    else:
                        require (stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) + (uid2Investor[stor6[msg.sender]][5][idx].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 >= 0
                        call msg.sender with:
                           value (stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) + (uid2Investor[stor6[msg.sender]][5][idx].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uid2Investor[stor6[msg.sender]][5][idx].field_768 = stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 + uid2Investor[stor6[msg.sender]][5][idx].field_256
                        uid2Investor[stor6[msg.sender]][5][idx].field_1280 = 1
                        uid2Investor[stor6[msg.sender]][5][idx].field_1024 += (stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) + (uid2Investor[stor6[msg.sender]][5][idx].field_256 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) - (uid2Investor[stor6[msg.sender]][5][idx].field_768 * stor8[stor7[stor6[msg.sender]][5][idx].field_0].field_0 * uid2Investor[stor6[msg.sender]][5][idx].field_512 / 1000) / 24 * 3600
            mem[0] = address2UID[msg.sender]
            mem[32] = 7
            idx = idx + 1
            continue 
        if uid2Investor[stor6[msg.sender]].field_512 > 0:
            call msg.sender with:
               value uid2Investor[stor6[msg.sender]].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require uid2Investor[stor6[msg.sender]].field_256 + uid2Investor[stor6[msg.sender]].field_512 >= uid2Investor[stor6[msg.sender]].field_512
            uid2Investor[stor6[msg.sender]].field_256 += uid2Investor[stor6[msg.sender]].field_512
            uid2Investor[stor6[msg.sender]].field_512 = 0
        emit onWithdraw(msg.sender, 0);
    else:
        if 0 >= stor8.length:
            revert with 0, 'Wrong investment plan id'
        if msg.value < 10^16:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Less than the minimum amount of deposit requirement'
        if address2UID[address(msg.sender)]:
            require 0 < stor8.length
            if uint256(stor8.field_512) > 0:
                if uint256(stor8.field_1024) < msg.value:
                    revert with 0, '1 - Not enough limit'
                if uint256(stor8.field_768) < msg.value:
                    revert with 0, '1 - Not enough limit'
                idx = 0
                while idx < uid2Investor[stor6[address(msg.sender)]].field_1024:
                    if not uid2Investor[stor6[address(msg.sender)]][5][idx].field_256:
                        revert with 0, 'wrong investment date'
                    mem[0] = idx
                    mem[32] = sha3(address2UID[address(msg.sender)], 7) + 5
                    if uid2Investor[stor6[address(msg.sender)]][5][idx].field_0 != 0:
                        idx = idx + 1
                        continue 
                    mem[0] = idx
                    mem[32] = sha3(address2UID[address(msg.sender)], 7) + 5
                    if uid2Investor[stor6[address(msg.sender)]][5][idx].field_256 < uint256(stor8.field_1280):
                        idx = idx + 1
                        continue 
                    mem[0] = idx
                    mem[32] = sha3(address2UID[address(msg.sender)], 7) + 5
                    require uid2Investor[stor6[address(msg.sender)]][5][idx].field_512 >= 0
                    idx = idx + 1
                    continue 
                if 0 > uint256(stor8.field_768):
                    if 0 < msg.value:
                        revert with 0, '2 - Not enough limit'
                else:
                    if uint256(stor8.field_768) < msg.value:
                        revert with 0, '2 - Not enough limit'
                require msg.value <= uint256(stor8.field_1024)
                uint256(stor8.field_1024) -= msg.value
            uid2Investor[stor6[address(msg.sender)]][5][uid2Investor[stor6[address(msg.sender)]].field_1024].field_0 = 0
            uid2Investor[stor6[address(msg.sender)]][5][uid2Investor[stor6[address(msg.sender)]].field_1024].field_256 = block.timestamp
            uid2Investor[stor6[address(msg.sender)]][5][uid2Investor[stor6[address(msg.sender)]].field_1024].field_768 = block.timestamp
            uid2Investor[stor6[address(msg.sender)]][5][uid2Investor[stor6[address(msg.sender)]].field_1024].field_512 = msg.value
            uid2Investor[stor6[address(msg.sender)]][5][uid2Investor[stor6[address(msg.sender)]].field_1024].field_1024 = 0
            uid2Investor[stor6[address(msg.sender)]][5][uid2Investor[stor6[address(msg.sender)]].field_1024].field_1280 = 0
            uid2Investor[stor6[address(msg.sender)]][5][uid2Investor[stor6[address(msg.sender)]].field_1024].field_1288 = 0
            require uid2Investor[stor6[address(msg.sender)]].field_1024 + 1 >= uid2Investor[stor6[address(msg.sender)]].field_1024
            uid2Investor[stor6[address(msg.sender)]].field_1024++
            if not msg.value:
                if uid2Investor[stor6[address(msg.sender)]].field_768:
                    if not msg.value:
                        require uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_512 >= 0
                        if not uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768:
                            if uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                if not msg.value:
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                else:
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 1000 <= 0
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                    uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                    if -10 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value -10 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not msg.value:
                                require uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 >= 0
                                if uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                    if not msg.value:
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= 0
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if -10 * msg.value / 1000 > 0:
                                            call referenceAccount with:
                                               value -10 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 20 * msg.value / msg.value == 20
                                require 20 * msg.value / 1000 <= 0
                                require uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 + (20 * msg.value / 1000) >= 20 * msg.value / 1000
                                uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 += 20 * msg.value / 1000
                                if not uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                    if -20 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value -20 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= -20 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                        if -20 * msg.value / 1000 > 0:
                                            call referenceAccount with:
                                               value -20 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= -20 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if -(20 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value -(20 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 50 * msg.value / msg.value == 50
                        require 50 * msg.value / 1000 <= 0
                        require uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_512 + (50 * msg.value / 1000) >= 50 * msg.value / 1000
                        uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_512 += 50 * msg.value / 1000
                        if not uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768:
                            if not uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                if -50 * msg.value / 1000 > 0:
                                    call referenceAccount with:
                                       value -50 * msg.value / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not msg.value:
                                    require 0 <= -50 * msg.value / 1000
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                    if -50 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value -50 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 1000 <= -50 * msg.value / 1000
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                    uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                    if -(50 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value -(50 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not msg.value:
                                require 0 <= -50 * msg.value / 1000
                                require uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 >= 0
                                if not uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                    if -50 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value -50 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= -50 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                        if -50 * msg.value / 1000 > 0:
                                            call referenceAccount with:
                                               value -50 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= -50 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if -(50 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value -(50 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 20 * msg.value / msg.value == 20
                                require 20 * msg.value / 1000 <= -50 * msg.value / 1000
                                require uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 + (20 * msg.value / 1000) >= 20 * msg.value / 1000
                                uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 += 20 * msg.value / 1000
                                if not uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                    if -(50 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value -(50 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= -(50 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                        if -(50 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value -(50 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= -(50 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if -(50 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value -(50 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
            else:
                require 80 * msg.value / msg.value == 80
                if not uid2Investor[stor6[address(msg.sender)]].field_768:
                    if 80 * msg.value / 1000 > 0:
                        call referenceAccount with:
                           value 80 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not msg.value:
                        require 0 <= 80 * msg.value / 1000
                        require uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_512 >= 0
                        if not uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768:
                            if not uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                if 80 * msg.value / 1000 > 0:
                                    call referenceAccount with:
                                       value 80 * msg.value / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not msg.value:
                                    require 0 <= 80 * msg.value / 1000
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                    if 80 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value 80 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 1000 <= 80 * msg.value / 1000
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                    uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                    if (80 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not msg.value:
                                require 0 <= 80 * msg.value / 1000
                                require uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 >= 0
                                if not uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                    if 80 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value 80 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= 80 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                        if 80 * msg.value / 1000 > 0:
                                            call referenceAccount with:
                                               value 80 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= 80 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if (80 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 20 * msg.value / msg.value == 20
                                require 20 * msg.value / 1000 <= 80 * msg.value / 1000
                                require uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 + (20 * msg.value / 1000) >= 20 * msg.value / 1000
                                uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 += 20 * msg.value / 1000
                                if not uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                    if (80 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= (80 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                        if (80 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= (80 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if (80 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 50 * msg.value / msg.value == 50
                        require 50 * msg.value / 1000 <= 80 * msg.value / 1000
                        require uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_512 + (50 * msg.value / 1000) >= 50 * msg.value / 1000
                        uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_512 += 50 * msg.value / 1000
                        if not uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768:
                            if not uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                if (80 * msg.value / 1000) - (50 * msg.value / 1000) > 0:
                                    call referenceAccount with:
                                       value (80 * msg.value / 1000) - (50 * msg.value / 1000) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not msg.value:
                                    require 0 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                    if (80 * msg.value / 1000) - (50 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (50 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 1000 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                    uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                    if (80 * msg.value / 1000) - (50 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (50 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not msg.value:
                                require 0 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                require uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 >= 0
                                if not uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                    if (80 * msg.value / 1000) - (50 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (50 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                        if (80 * msg.value / 1000) - (50 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (50 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if (80 * msg.value / 1000) - (50 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (50 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 20 * msg.value / msg.value == 20
                                require 20 * msg.value / 1000 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                require uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 + (20 * msg.value / 1000) >= 20 * msg.value / 1000
                                uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_512 += 20 * msg.value / 1000
                                if not uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768:
                                    if (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 >= 0
                                        if (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor6[address(msg.sender)]].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
        else:
            require latestReferrerCode + 1 >= latestReferrerCode
            latestReferrerCode++
            address2UID[address(msg.sender)] = latestReferrerCode + 1
            uid2Investor[stor1 + 1].field_0 = msg.sender
            uid2Investor[stor1].field_768 = 0
            uid2Investor[stor1].field_1024 = 0
            require 0 < stor8.length
            if uint256(stor8.field_512) > 0:
                if uint256(stor8.field_1024) < msg.value:
                    revert with 0, '1 - Not enough limit'
                if uint256(stor8.field_768) < msg.value:
                    revert with 0, '1 - Not enough limit'
                idx = 0
                while idx < uid2Investor[stor1].field_1024:
                    if not uid2Investor[stor1][5][idx].field_256:
                        revert with 0, 'wrong investment date'
                    mem[0] = idx
                    mem[32] = sha3(latestReferrerCode, 7) + 5
                    if uid2Investor[stor1][5][idx].field_0 != 0:
                        idx = idx + 1
                        continue 
                    mem[0] = idx
                    mem[32] = sha3(latestReferrerCode, 7) + 5
                    if uid2Investor[stor1][5][idx].field_256 < uint256(stor8.field_1280):
                        idx = idx + 1
                        continue 
                    mem[0] = idx
                    mem[32] = sha3(latestReferrerCode, 7) + 5
                    require uid2Investor[stor1][5][idx].field_512 >= 0
                    idx = idx + 1
                    continue 
                if 0 > uint256(stor8.field_768):
                    if 0 < msg.value:
                        revert with 0, '2 - Not enough limit'
                else:
                    if uint256(stor8.field_768) < msg.value:
                        revert with 0, '2 - Not enough limit'
                require msg.value <= uint256(stor8.field_1024)
                uint256(stor8.field_1024) -= msg.value
            uid2Investor[stor1][5][uid2Investor[stor1].field_1024].field_0 = 0
            uid2Investor[stor1][5][uid2Investor[stor1].field_1024].field_256 = block.timestamp
            uid2Investor[stor1][5][uid2Investor[stor1].field_1024].field_768 = block.timestamp
            uid2Investor[stor1][5][uid2Investor[stor1].field_1024].field_512 = msg.value
            uid2Investor[stor1][5][uid2Investor[stor1].field_1024].field_1024 = 0
            uid2Investor[stor1][5][uid2Investor[stor1].field_1024].field_1280 = 0
            uid2Investor[stor1][5][uid2Investor[stor1].field_1024].field_1288 = 0
            require uid2Investor[stor1].field_1024 + 1 >= uid2Investor[stor1].field_1024
            uid2Investor[stor1].field_1024++
            if not msg.value:
                if uid2Investor[stor1].field_768:
                    if not msg.value:
                        require uid2Investor[uid2Investor[stor1].field_768].field_512 >= 0
                        if not uid2Investor[uid2Investor[stor1].field_768].field_768:
                            if uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                if not msg.value:
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                else:
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 1000 <= 0
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                    uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                    if -10 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value -10 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not msg.value:
                                require uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 >= 0
                                if uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                    if not msg.value:
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= 0
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if -10 * msg.value / 1000 > 0:
                                            call referenceAccount with:
                                               value -10 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 20 * msg.value / msg.value == 20
                                require 20 * msg.value / 1000 <= 0
                                require uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 + (20 * msg.value / 1000) >= 20 * msg.value / 1000
                                uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 += 20 * msg.value / 1000
                                if not uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                    if -20 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value -20 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= -20 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                        if -20 * msg.value / 1000 > 0:
                                            call referenceAccount with:
                                               value -20 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= -20 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if -(20 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value -(20 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 50 * msg.value / msg.value == 50
                        require 50 * msg.value / 1000 <= 0
                        require uid2Investor[uid2Investor[stor1].field_768].field_512 + (50 * msg.value / 1000) >= 50 * msg.value / 1000
                        uid2Investor[uid2Investor[stor1].field_768].field_512 += 50 * msg.value / 1000
                        if not uid2Investor[uid2Investor[stor1].field_768].field_768:
                            if not uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                if -50 * msg.value / 1000 > 0:
                                    call referenceAccount with:
                                       value -50 * msg.value / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not msg.value:
                                    require 0 <= -50 * msg.value / 1000
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                    if -50 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value -50 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 1000 <= -50 * msg.value / 1000
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                    uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                    if -(50 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value -(50 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not msg.value:
                                require 0 <= -50 * msg.value / 1000
                                require uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 >= 0
                                if not uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                    if -50 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value -50 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= -50 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                        if -50 * msg.value / 1000 > 0:
                                            call referenceAccount with:
                                               value -50 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= -50 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if -(50 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value -(50 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 20 * msg.value / msg.value == 20
                                require 20 * msg.value / 1000 <= -50 * msg.value / 1000
                                require uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 + (20 * msg.value / 1000) >= 20 * msg.value / 1000
                                uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 += 20 * msg.value / 1000
                                if not uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                    if -(50 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value -(50 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= -(50 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                        if -(50 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value -(50 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= -(50 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if -(50 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value -(50 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
            else:
                require 80 * msg.value / msg.value == 80
                if not uid2Investor[stor1].field_768:
                    if 80 * msg.value / 1000 > 0:
                        call referenceAccount with:
                           value 80 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not msg.value:
                        require 0 <= 80 * msg.value / 1000
                        require uid2Investor[uid2Investor[stor1].field_768].field_512 >= 0
                        if not uid2Investor[uid2Investor[stor1].field_768].field_768:
                            if not uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                if 80 * msg.value / 1000 > 0:
                                    call referenceAccount with:
                                       value 80 * msg.value / 1000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not msg.value:
                                    require 0 <= 80 * msg.value / 1000
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                    if 80 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value 80 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 1000 <= 80 * msg.value / 1000
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                    uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                    if (80 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not msg.value:
                                require 0 <= 80 * msg.value / 1000
                                require uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 >= 0
                                if not uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                    if 80 * msg.value / 1000 > 0:
                                        call referenceAccount with:
                                           value 80 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= 80 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                        if 80 * msg.value / 1000 > 0:
                                            call referenceAccount with:
                                               value 80 * msg.value / 1000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= 80 * msg.value / 1000
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if (80 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 20 * msg.value / msg.value == 20
                                require 20 * msg.value / 1000 <= 80 * msg.value / 1000
                                require uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 + (20 * msg.value / 1000) >= 20 * msg.value / 1000
                                uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 += 20 * msg.value / 1000
                                if not uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                    if (80 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= (80 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                        if (80 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= (80 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if (80 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 50 * msg.value / msg.value == 50
                        require 50 * msg.value / 1000 <= 80 * msg.value / 1000
                        require uid2Investor[uid2Investor[stor1].field_768].field_512 + (50 * msg.value / 1000) >= 50 * msg.value / 1000
                        uid2Investor[uid2Investor[stor1].field_768].field_512 += 50 * msg.value / 1000
                        if not uid2Investor[uid2Investor[stor1].field_768].field_768:
                            if not uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                if (80 * msg.value / 1000) - (50 * msg.value / 1000) > 0:
                                    call referenceAccount with:
                                       value (80 * msg.value / 1000) - (50 * msg.value / 1000) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not msg.value:
                                    require 0 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                    if (80 * msg.value / 1000) - (50 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (50 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require 10 * msg.value / msg.value == 10
                                    require 10 * msg.value / 1000 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                    require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                    uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                    if (80 * msg.value / 1000) - (50 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (50 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not msg.value:
                                require 0 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                require uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 >= 0
                                if not uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                    if (80 * msg.value / 1000) - (50 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (50 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                        if (80 * msg.value / 1000) - (50 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (50 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if (80 * msg.value / 1000) - (50 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (50 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require 20 * msg.value / msg.value == 20
                                require 20 * msg.value / 1000 <= (80 * msg.value / 1000) - (50 * msg.value / 1000)
                                require uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 + (20 * msg.value / 1000) >= 20 * msg.value / 1000
                                uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_512 += 20 * msg.value / 1000
                                if not uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768:
                                    if (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                        call referenceAccount with:
                                           value (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not msg.value:
                                        require 0 <= (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 >= 0
                                        if (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require 10 * msg.value / msg.value == 10
                                        require 10 * msg.value / 1000 <= (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000)
                                        require uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 + (10 * msg.value / 1000) >= 10 * msg.value / 1000
                                        uid2Investor[uid2Investor[uid2Investor[uid2Investor[stor1].field_768].field_768].field_768].field_512 += 10 * msg.value / 1000
                                        if (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) > 0:
                                            call referenceAccount with:
                                               value (80 * msg.value / 1000) - (50 * msg.value / 1000) - (20 * msg.value / 1000) - (10 * msg.value / 1000) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
        require msg.value + totalInvestments >= totalInvestments
        totalInvestments += msg.value
        if not msg.value:
            call developerAccount with:
                 gas 2300 wei
        else:
            require 30 * msg.value / msg.value == 30
            call developerAccount with:
               value 30 * msg.value / 1000 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not msg.value:
            call marketingAccount with:
                 gas 2300 wei
        else:
            require 70 * msg.value / msg.value == 70
            call marketingAccount with:
               value 70 * msg.value / 1000 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onInvest(msg.sender, msg.value);
}



}
