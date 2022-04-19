contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint8 stor2;
address stor2; offset 8
address stor6;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    uint8(stor2.field_0) = 0
    require not msg.value
    require code.data[4643 len 20]
    address(stor0.field_8) = code.data[4643 len 20]
    address(stor2.field_8) = msg.sender
    require code.data[4675 len 20]
    stor6 = code.data[4675 len 20]
    return code.data[241 len 4390]
}



// =====================  Runtime code  =====================


#
#  - iaInvestedBy(address arg1)
#
const c_STQperETH = 100000

const getMinInvestment = 10^16

const c_paymentChannelBonusPercent = 2


uint8 stor0;
address m_tokenAddress; offset 8
uint256 tokenMinted;
uint8 stor2;
address owner; offset 8
mapping of uint256 m_investmentsByPaymentChannel;
mapping of uint8 stor4;
array of struct m_paymentChannels;
address m_walletAddress;
uint256 m_wcStored;

function getWeiCollected() {
    return m_wcStored
}

function getTokenMinted() {
    return tokenMinted
}

function m_paymentChannels(uint256 arg1) {
    require arg1 < m_paymentChannels.length
    return address(m_paymentChannels[arg1].field_0)
}

function m_token() {
    return m_tokenAddress
}

function m_walletAddress() {
    return m_walletAddress
}

function owner() {
    return owner
}

function m_investmentsByPaymentChannel(address arg1) {
    return m_investmentsByPaymentChannel[arg1]
}

function paymentChannelsCount() {
    return m_paymentChannels.length
}

function m_wcStored() {
    return m_wcStored
}

function amIOwner() {
    require owner == msg.sender
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function createMorePaymentChannels(uint256 arg1) {
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1:
        mem[96 len 410] = code.data[3937 len 410]
        create contract with 0 wei
                        code: code.data[3937 len 410]
        require create.new_address
        mem[32] = 4
        stor4[address(create.new_address)] = 1
        m_paymentChannels.length++
        if not m_paymentChannels.length <= m_paymentChannels.length + 1:
            t = m_paymentChannels.length + sha3(5) + 1
            while sha3(5) + m_paymentChannels.length > t:
                stor[t] = 0
                t = t + 1
                continue 
        mem[0] = 5
        address(m_paymentChannels[m_paymentChannels.length].field_0) = address(create.new_address)
        require gas_remaining <= gas_remaining
        if 50000 <= gas_remaining:
            s = create.new_address
            s = gas_remaining
            idx = idx + 1
            s = s + 1
            continue 
        return (s + 1)
    return s
}

function readPaymentChannels() {
    if not m_paymentChannels.length:
        mem[(32 * m_paymentChannels.length) + 160] = 32
        mem[(32 * m_paymentChannels.length) + 192] = m_paymentChannels.length
        mem[(32 * m_paymentChannels.length) + 224 len floor32(m_paymentChannels.length)] = mem[160 len floor32(m_paymentChannels.length)]
        return memory
          from (32 * m_paymentChannels.length) + 160
           len (96 * m_paymentChannels.length) + 64
    mem[160] = address(m_paymentChannels.field_0)
    idx = 160
    s = 0
    while (32 * m_paymentChannels.length) + 128 > idx:
        mem[idx + 32] = address(m_paymentChannels[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * m_paymentChannels.length) + 224 len floor32(m_paymentChannels.length)] = mem[160 len floor32(m_paymentChannels.length)]
    return Array(len=m_paymentChannels.length, data=mem[160 len floor32(m_paymentChannels.length)], mem[(32 * m_paymentChannels.length) + floor32(m_paymentChannels.length) + 224 len (32 * m_paymentChannels.length) - floor32(m_paymentChannels.length)]), 
}

function readAnalyticsMap() {
    if 256 < (32 * m_paymentChannels.length) + 256:
        mem[(32 * m_paymentChannels.length) + 256] = m_paymentChannels.length
        s = 0
        idx = 0
        while idx < m_paymentChannels.length:
            require idx < m_paymentChannels.length
            mem[(32 * idx) + 256] = address(m_paymentChannels[idx].field_0)
            mem[0] = address(m_paymentChannels[idx].field_0)
            mem[32] = 3
            require idx < mem[(32 * m_paymentChannels.length) + 256]
            mem[(32 * m_paymentChannels.length) + (32 * idx) + 288] = m_investmentsByPaymentChannel[address(stor5[idx].field_0)]
            s = address(m_paymentChannels[idx].field_0)
            idx = idx + 1
            continue 
        mem[(64 * m_paymentChannels.length) + 288] = 64
        mem[(64 * m_paymentChannels.length) + 352] = m_paymentChannels.length
        mem[(64 * m_paymentChannels.length) + 384 len floor32(m_paymentChannels.length)] = mem[256 len floor32(m_paymentChannels.length)]
        mem[(64 * m_paymentChannels.length) + 320] = (32 * m_paymentChannels.length) + 96
        mem[(98 * m_paymentChannels.length) + 384] = mem[(32 * m_paymentChannels.length) + 256]
        mem[(98 * m_paymentChannels.length) + 416 len floor32(mem[(32 * m_paymentChannels.length) + 256])] = mem[(32 * m_paymentChannels.length) + 288 len floor32(mem[(32 * m_paymentChannels.length) + 256])]
        return memory
          from (64 * m_paymentChannels.length) + 288
           len (32 * mem[(32 * m_paymentChannels.length) + 256]) + (161 * m_paymentChannels.length) + 128
    mem[256] = m_paymentChannels.length
    s = 0
    idx = 0
    while idx < m_paymentChannels.length:
        require idx < m_paymentChannels.length
        mem[(32 * idx) + 256] = address(m_paymentChannels[idx].field_0)
        mem[0] = address(m_paymentChannels[idx].field_0)
        mem[32] = 3
        require idx < mem[256]
        mem[(32 * idx) + 288] = m_investmentsByPaymentChannel[address(stor5[idx].field_0)]
        s = address(m_paymentChannels[idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * m_paymentChannels.length) + 288] = 64
    mem[(32 * m_paymentChannels.length) + 352] = m_paymentChannels.length
    mem[(32 * m_paymentChannels.length) + 384 len floor32(m_paymentChannels.length)] = mem[256 len floor32(m_paymentChannels.length)]
    mem[(32 * m_paymentChannels.length) + 320] = (32 * m_paymentChannels.length) + 96
    mem[(64 * m_paymentChannels.length) + 384] = mem[256]
    mem[(64 * m_paymentChannels.length) + 416 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
    return Array(len=m_paymentChannels.length, data=mem[256 len floor32(m_paymentChannels.length)], mem[(32 * m_paymentChannels.length) + floor32(m_paymentChannels.length) + 384 len (32 * m_paymentChannels.length) + (32 * mem[256]) + -floor32(m_paymentChannels.length) + 32]), 
           (32 * m_paymentChannels.length) + 96
}

function buy() payable {
    require not stor0
    stor0 = 1
    require msg.value >= 10^16
    if block.timestamp < 419155 * 3600:
        require owner == msg.sender
    if block.timestamp < 419880 * 24 * 3600:
        if stor2:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
            require m_wcStored <= 100000000 * 10^18
            require -m_wcStored + 100000000 * 10^18
            if -m_wcStored + 100000000 * 10^18 >= msg.value:
                if msg.value >= 5000 * 10^18:
                    if msg.value:
                        require msg.value
                        require 153000 * msg.value / msg.value == 153000
                    require ext_code.size(m_tokenAddress)
                    call m_tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 153000 * msg.value
                    require ext_call.success
                    tokenMinted += 153000 * msg.value
                else:
                    if msg.value >= 3000 * 10^18:
                        if msg.value:
                            require msg.value
                            require 148000 * msg.value / msg.value == 148000
                        require ext_code.size(m_tokenAddress)
                        call m_tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 148000 * msg.value
                        require ext_call.success
                        tokenMinted += 148000 * msg.value
                    else:
                        if msg.value >= 1000 * 10^18:
                            if msg.value:
                                require msg.value
                                require 143000 * msg.value / msg.value == 143000
                            require ext_code.size(m_tokenAddress)
                            call m_tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 143000 * msg.value
                            require ext_call.success
                            tokenMinted += 143000 * msg.value
                        else:
                            if msg.value >= 800 * 10^18:
                                if msg.value:
                                    require msg.value
                                    require 141000 * msg.value / msg.value == 141000
                                require ext_code.size(m_tokenAddress)
                                call m_tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 141000 * msg.value
                                require ext_call.success
                                tokenMinted += 141000 * msg.value
                            else:
                                if msg.value >= 500 * 10^18:
                                    if msg.value:
                                        require msg.value
                                        require 138000 * msg.value / msg.value == 138000
                                    require ext_code.size(m_tokenAddress)
                                    call m_tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 138000 * msg.value
                                    require ext_call.success
                                    tokenMinted += 138000 * msg.value
                                else:
                                    if msg.value < 200 * 10^18:
                                        if msg.value:
                                            require msg.value
                                            require 133000 * msg.value / msg.value == 133000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 133000 * msg.value
                                        require ext_call.success
                                        tokenMinted += 133000 * msg.value
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require 135000 * msg.value / msg.value == 135000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 135000 * msg.value
                                        require ext_call.success
                                        tokenMinted += 135000 * msg.value
                m_wcStored += msg.value
                call m_walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require m_wcStored <= 100000000 * 10^18
                require m_wcStored > m_wcStored
                emit FundTransfer(msg.sender, msg.value, 1);
                if m_wcStored == 100000000 * 10^18:
                    if not stor2:
                        stor2 = 1
                require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
                require m_wcStored + eth.balance(this.address) == m_wcStored + eth.balance(this.address)
            else:
                require -m_wcStored + 100000000 * 10^18 <= msg.value
                if -m_wcStored + 100000000 * 10^18 >= 5000 * 10^18:
                    if -m_wcStored + 100000000 * 10^18:
                        require -m_wcStored + 100000000 * 10^18
                        require (-153000 * m_wcStored) + (4250000000 * 10^18 * 3600) / -m_wcStored + 100000000 * 10^18 == 153000
                    require ext_code.size(m_tokenAddress)
                    call m_tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (-153000 * m_wcStored) + (4250000000 * 10^18 * 3600)
                    require ext_call.success
                    tokenMinted = (-153000 * m_wcStored) + tokenMinted + (4250000000 * 10^18 * 3600)
                else:
                    if -m_wcStored + 100000000 * 10^18 >= 3000 * 10^18:
                        if -m_wcStored + 100000000 * 10^18:
                            require -m_wcStored + 100000000 * 10^18
                            require (-148000 * m_wcStored) + 14800000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 148000
                        require ext_code.size(m_tokenAddress)
                        call m_tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (-148000 * m_wcStored) + 14800000000000 * 10^18
                        require ext_call.success
                        tokenMinted = (-148000 * m_wcStored) + tokenMinted + 14800000000000 * 10^18
                    else:
                        if -m_wcStored + 100000000 * 10^18 >= 1000 * 10^18:
                            if -m_wcStored + 100000000 * 10^18:
                                require -m_wcStored + 100000000 * 10^18
                                require (-143000 * m_wcStored) + 14300000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 143000
                            require ext_code.size(m_tokenAddress)
                            call m_tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (-143000 * m_wcStored) + 14300000000000 * 10^18
                            require ext_call.success
                            tokenMinted = (-143000 * m_wcStored) + tokenMinted + 14300000000000 * 10^18
                        else:
                            if -m_wcStored + 100000000 * 10^18 >= 800 * 10^18:
                                if -m_wcStored + 100000000 * 10^18:
                                    require -m_wcStored + 100000000 * 10^18
                                    require (-141000 * m_wcStored) + 14100000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 141000
                                require ext_code.size(m_tokenAddress)
                                call m_tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (-141000 * m_wcStored) + 14100000000000 * 10^18
                                require ext_call.success
                                tokenMinted = (-141000 * m_wcStored) + tokenMinted + 14100000000000 * 10^18
                            else:
                                if -m_wcStored + 100000000 * 10^18 >= 500 * 10^18:
                                    if -m_wcStored + 100000000 * 10^18:
                                        require -m_wcStored + 100000000 * 10^18
                                        require (-138000 * m_wcStored) + 13800000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 138000
                                    require ext_code.size(m_tokenAddress)
                                    call m_tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (-138000 * m_wcStored) + 13800000000000 * 10^18
                                    require ext_call.success
                                    tokenMinted = (-138000 * m_wcStored) + tokenMinted + 13800000000000 * 10^18
                                else:
                                    if -m_wcStored + 100000000 * 10^18 < 200 * 10^18:
                                        if -m_wcStored + 100000000 * 10^18:
                                            require -m_wcStored + 100000000 * 10^18
                                            require (-133000 * m_wcStored) + 13300000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 133000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (-133000 * m_wcStored) + 13300000000000 * 10^18
                                        require ext_call.success
                                        tokenMinted = (-133000 * m_wcStored) + tokenMinted + 13300000000000 * 10^18
                                    else:
                                        if -m_wcStored + 100000000 * 10^18:
                                            require -m_wcStored + 100000000 * 10^18
                                            require (-135000 * m_wcStored) + (3750000000 * 10^18 * 24 * 3600) / -m_wcStored + 100000000 * 10^18 == 135000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (-135000 * m_wcStored) + (3750000000 * 10^18 * 24 * 3600)
                                        require ext_call.success
                                        tokenMinted = (-135000 * m_wcStored) + tokenMinted + (3750000000 * 10^18 * 24 * 3600)
                m_wcStored = 100000000 * 10^18
                call m_walletAddress with:
                   value -m_wcStored + 100000000 * 10^18 wei
                     gas 2300 * is_zero(value) wei
                require m_wcStored <= 100000000 * 10^18
                require m_wcStored > m_wcStored
                emit FundTransfer(msg.sender, -m_wcStored + 100000000 * 10^18, 1);
                if m_wcStored == 100000000 * 10^18:
                    if not stor2:
                        stor2 = 1
                if msg.value + m_wcStored - 100000000 * 10^18 > 0:
                    call msg.sender with:
                       value msg.value + m_wcStored - 100000000 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
                require msg.value + (2 * m_wcStored) - 100000000 * 10^18 >= m_wcStored
                require m_wcStored + eth.balance(this.address) == msg.value + (2 * m_wcStored) + eth.balance(this.address) - 100000000 * 10^18
    else:
        if stor2:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            stor2 = 1
            if stor2:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
                require m_wcStored <= 100000000 * 10^18
                require -m_wcStored + 100000000 * 10^18
                if -m_wcStored + 100000000 * 10^18 >= msg.value:
                    if msg.value >= 5000 * 10^18:
                        if msg.value:
                            require msg.value
                            require 153000 * msg.value / msg.value == 153000
                        require ext_code.size(m_tokenAddress)
                        call m_tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 153000 * msg.value
                        require ext_call.success
                        tokenMinted += 153000 * msg.value
                    else:
                        if msg.value >= 3000 * 10^18:
                            if msg.value:
                                require msg.value
                                require 148000 * msg.value / msg.value == 148000
                            require ext_code.size(m_tokenAddress)
                            call m_tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 148000 * msg.value
                            require ext_call.success
                            tokenMinted += 148000 * msg.value
                        else:
                            if msg.value >= 1000 * 10^18:
                                if msg.value:
                                    require msg.value
                                    require 143000 * msg.value / msg.value == 143000
                                require ext_code.size(m_tokenAddress)
                                call m_tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 143000 * msg.value
                                require ext_call.success
                                tokenMinted += 143000 * msg.value
                            else:
                                if msg.value >= 800 * 10^18:
                                    if msg.value:
                                        require msg.value
                                        require 141000 * msg.value / msg.value == 141000
                                    require ext_code.size(m_tokenAddress)
                                    call m_tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 141000 * msg.value
                                    require ext_call.success
                                    tokenMinted += 141000 * msg.value
                                else:
                                    if msg.value >= 500 * 10^18:
                                        if msg.value:
                                            require msg.value
                                            require 138000 * msg.value / msg.value == 138000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 138000 * msg.value
                                        require ext_call.success
                                        tokenMinted += 138000 * msg.value
                                    else:
                                        if msg.value < 200 * 10^18:
                                            if msg.value:
                                                require msg.value
                                                require 133000 * msg.value / msg.value == 133000
                                            require ext_code.size(m_tokenAddress)
                                            call m_tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 133000 * msg.value
                                            require ext_call.success
                                            tokenMinted += 133000 * msg.value
                                        else:
                                            if msg.value:
                                                require msg.value
                                                require 135000 * msg.value / msg.value == 135000
                                            require ext_code.size(m_tokenAddress)
                                            call m_tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 135000 * msg.value
                                            require ext_call.success
                                            tokenMinted += 135000 * msg.value
                    m_wcStored += msg.value
                    call m_walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require m_wcStored <= 100000000 * 10^18
                    require m_wcStored > m_wcStored
                    emit FundTransfer(msg.sender, msg.value, 1);
                    if m_wcStored == 100000000 * 10^18:
                        if not stor2:
                            stor2 = 1
                    require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
                    require m_wcStored + eth.balance(this.address) == m_wcStored + eth.balance(this.address)
                else:
                    require -m_wcStored + 100000000 * 10^18 <= msg.value
                    if -m_wcStored + 100000000 * 10^18 >= 5000 * 10^18:
                        if -m_wcStored + 100000000 * 10^18:
                            require -m_wcStored + 100000000 * 10^18
                            require (-153000 * m_wcStored) + (4250000000 * 10^18 * 3600) / -m_wcStored + 100000000 * 10^18 == 153000
                        require ext_code.size(m_tokenAddress)
                        call m_tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (-153000 * m_wcStored) + (4250000000 * 10^18 * 3600)
                        require ext_call.success
                        tokenMinted = (-153000 * m_wcStored) + tokenMinted + (4250000000 * 10^18 * 3600)
                    else:
                        if -m_wcStored + 100000000 * 10^18 >= 3000 * 10^18:
                            if -m_wcStored + 100000000 * 10^18:
                                require -m_wcStored + 100000000 * 10^18
                                require (-148000 * m_wcStored) + 14800000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 148000
                            require ext_code.size(m_tokenAddress)
                            call m_tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (-148000 * m_wcStored) + 14800000000000 * 10^18
                            require ext_call.success
                            tokenMinted = (-148000 * m_wcStored) + tokenMinted + 14800000000000 * 10^18
                        else:
                            if -m_wcStored + 100000000 * 10^18 >= 1000 * 10^18:
                                if -m_wcStored + 100000000 * 10^18:
                                    require -m_wcStored + 100000000 * 10^18
                                    require (-143000 * m_wcStored) + 14300000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 143000
                                require ext_code.size(m_tokenAddress)
                                call m_tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (-143000 * m_wcStored) + 14300000000000 * 10^18
                                require ext_call.success
                                tokenMinted = (-143000 * m_wcStored) + tokenMinted + 14300000000000 * 10^18
                            else:
                                if -m_wcStored + 100000000 * 10^18 >= 800 * 10^18:
                                    if -m_wcStored + 100000000 * 10^18:
                                        require -m_wcStored + 100000000 * 10^18
                                        require (-141000 * m_wcStored) + 14100000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 141000
                                    require ext_code.size(m_tokenAddress)
                                    call m_tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (-141000 * m_wcStored) + 14100000000000 * 10^18
                                    require ext_call.success
                                    tokenMinted = (-141000 * m_wcStored) + tokenMinted + 14100000000000 * 10^18
                                else:
                                    if -m_wcStored + 100000000 * 10^18 >= 500 * 10^18:
                                        if -m_wcStored + 100000000 * 10^18:
                                            require -m_wcStored + 100000000 * 10^18
                                            require (-138000 * m_wcStored) + 13800000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 138000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (-138000 * m_wcStored) + 13800000000000 * 10^18
                                        require ext_call.success
                                        tokenMinted = (-138000 * m_wcStored) + tokenMinted + 13800000000000 * 10^18
                                    else:
                                        if -m_wcStored + 100000000 * 10^18 < 200 * 10^18:
                                            if -m_wcStored + 100000000 * 10^18:
                                                require -m_wcStored + 100000000 * 10^18
                                                require (-133000 * m_wcStored) + 13300000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 133000
                                            require ext_code.size(m_tokenAddress)
                                            call m_tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (-133000 * m_wcStored) + 13300000000000 * 10^18
                                            require ext_call.success
                                            tokenMinted = (-133000 * m_wcStored) + tokenMinted + 13300000000000 * 10^18
                                        else:
                                            if -m_wcStored + 100000000 * 10^18:
                                                require -m_wcStored + 100000000 * 10^18
                                                require (-135000 * m_wcStored) + (3750000000 * 10^18 * 24 * 3600) / -m_wcStored + 100000000 * 10^18 == 135000
                                            require ext_code.size(m_tokenAddress)
                                            call m_tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (-135000 * m_wcStored) + (3750000000 * 10^18 * 24 * 3600)
                                            require ext_call.success
                                            tokenMinted = (-135000 * m_wcStored) + tokenMinted + (3750000000 * 10^18 * 24 * 3600)
                    m_wcStored = 100000000 * 10^18
                    call m_walletAddress with:
                       value -m_wcStored + 100000000 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require m_wcStored <= 100000000 * 10^18
                    require m_wcStored > m_wcStored
                    emit FundTransfer(msg.sender, -m_wcStored + 100000000 * 10^18, 1);
                    if m_wcStored == 100000000 * 10^18:
                        if not stor2:
                            stor2 = 1
                    if msg.value + m_wcStored - 100000000 * 10^18 > 0:
                        call msg.sender with:
                           value msg.value + m_wcStored - 100000000 * 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
                    require msg.value + (2 * m_wcStored) - 100000000 * 10^18 >= m_wcStored
                    require m_wcStored + eth.balance(this.address) == msg.value + (2 * m_wcStored) + eth.balance(this.address) - 100000000 * 10^18
    stor0 = 0
}

function _fallback() payable {
    require not calldata.size
    require not stor0
    stor0 = 1
    require msg.value >= 10^16
    if block.timestamp < 419155 * 3600:
        require owner == msg.sender
    if block.timestamp < 419880 * 24 * 3600:
        if stor2:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
            require m_wcStored <= 100000000 * 10^18
            require -m_wcStored + 100000000 * 10^18
            if -m_wcStored + 100000000 * 10^18 >= msg.value:
                if msg.value >= 5000 * 10^18:
                    if msg.value:
                        require msg.value
                        require 153000 * msg.value / msg.value == 153000
                    require ext_code.size(m_tokenAddress)
                    call m_tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 153000 * msg.value
                    require ext_call.success
                    tokenMinted += 153000 * msg.value
                else:
                    if msg.value >= 3000 * 10^18:
                        if msg.value:
                            require msg.value
                            require 148000 * msg.value / msg.value == 148000
                        require ext_code.size(m_tokenAddress)
                        call m_tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 148000 * msg.value
                        require ext_call.success
                        tokenMinted += 148000 * msg.value
                    else:
                        if msg.value >= 1000 * 10^18:
                            if msg.value:
                                require msg.value
                                require 143000 * msg.value / msg.value == 143000
                            require ext_code.size(m_tokenAddress)
                            call m_tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 143000 * msg.value
                            require ext_call.success
                            tokenMinted += 143000 * msg.value
                        else:
                            if msg.value >= 800 * 10^18:
                                if msg.value:
                                    require msg.value
                                    require 141000 * msg.value / msg.value == 141000
                                require ext_code.size(m_tokenAddress)
                                call m_tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 141000 * msg.value
                                require ext_call.success
                                tokenMinted += 141000 * msg.value
                            else:
                                if msg.value >= 500 * 10^18:
                                    if msg.value:
                                        require msg.value
                                        require 138000 * msg.value / msg.value == 138000
                                    require ext_code.size(m_tokenAddress)
                                    call m_tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 138000 * msg.value
                                    require ext_call.success
                                    tokenMinted += 138000 * msg.value
                                else:
                                    if msg.value < 200 * 10^18:
                                        if msg.value:
                                            require msg.value
                                            require 133000 * msg.value / msg.value == 133000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 133000 * msg.value
                                        require ext_call.success
                                        tokenMinted += 133000 * msg.value
                                    else:
                                        if msg.value:
                                            require msg.value
                                            require 135000 * msg.value / msg.value == 135000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 135000 * msg.value
                                        require ext_call.success
                                        tokenMinted += 135000 * msg.value
                m_wcStored += msg.value
                call m_walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require m_wcStored <= 100000000 * 10^18
                require m_wcStored > m_wcStored
                emit FundTransfer(msg.sender, msg.value, 1);
                if m_wcStored == 100000000 * 10^18:
                    if not stor2:
                        stor2 = 1
                require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
                require m_wcStored + eth.balance(this.address) == m_wcStored + eth.balance(this.address)
            else:
                require -m_wcStored + 100000000 * 10^18 <= msg.value
                if -m_wcStored + 100000000 * 10^18 >= 5000 * 10^18:
                    if -m_wcStored + 100000000 * 10^18:
                        require -m_wcStored + 100000000 * 10^18
                        require (-153000 * m_wcStored) + (4250000000 * 10^18 * 3600) / -m_wcStored + 100000000 * 10^18 == 153000
                    require ext_code.size(m_tokenAddress)
                    call m_tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (-153000 * m_wcStored) + (4250000000 * 10^18 * 3600)
                    require ext_call.success
                    tokenMinted = (-153000 * m_wcStored) + tokenMinted + (4250000000 * 10^18 * 3600)
                else:
                    if -m_wcStored + 100000000 * 10^18 >= 3000 * 10^18:
                        if -m_wcStored + 100000000 * 10^18:
                            require -m_wcStored + 100000000 * 10^18
                            require (-148000 * m_wcStored) + 14800000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 148000
                        require ext_code.size(m_tokenAddress)
                        call m_tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (-148000 * m_wcStored) + 14800000000000 * 10^18
                        require ext_call.success
                        tokenMinted = (-148000 * m_wcStored) + tokenMinted + 14800000000000 * 10^18
                    else:
                        if -m_wcStored + 100000000 * 10^18 >= 1000 * 10^18:
                            if -m_wcStored + 100000000 * 10^18:
                                require -m_wcStored + 100000000 * 10^18
                                require (-143000 * m_wcStored) + 14300000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 143000
                            require ext_code.size(m_tokenAddress)
                            call m_tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (-143000 * m_wcStored) + 14300000000000 * 10^18
                            require ext_call.success
                            tokenMinted = (-143000 * m_wcStored) + tokenMinted + 14300000000000 * 10^18
                        else:
                            if -m_wcStored + 100000000 * 10^18 >= 800 * 10^18:
                                if -m_wcStored + 100000000 * 10^18:
                                    require -m_wcStored + 100000000 * 10^18
                                    require (-141000 * m_wcStored) + 14100000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 141000
                                require ext_code.size(m_tokenAddress)
                                call m_tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (-141000 * m_wcStored) + 14100000000000 * 10^18
                                require ext_call.success
                                tokenMinted = (-141000 * m_wcStored) + tokenMinted + 14100000000000 * 10^18
                            else:
                                if -m_wcStored + 100000000 * 10^18 >= 500 * 10^18:
                                    if -m_wcStored + 100000000 * 10^18:
                                        require -m_wcStored + 100000000 * 10^18
                                        require (-138000 * m_wcStored) + 13800000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 138000
                                    require ext_code.size(m_tokenAddress)
                                    call m_tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (-138000 * m_wcStored) + 13800000000000 * 10^18
                                    require ext_call.success
                                    tokenMinted = (-138000 * m_wcStored) + tokenMinted + 13800000000000 * 10^18
                                else:
                                    if -m_wcStored + 100000000 * 10^18 < 200 * 10^18:
                                        if -m_wcStored + 100000000 * 10^18:
                                            require -m_wcStored + 100000000 * 10^18
                                            require (-133000 * m_wcStored) + 13300000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 133000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (-133000 * m_wcStored) + 13300000000000 * 10^18
                                        require ext_call.success
                                        tokenMinted = (-133000 * m_wcStored) + tokenMinted + 13300000000000 * 10^18
                                    else:
                                        if -m_wcStored + 100000000 * 10^18:
                                            require -m_wcStored + 100000000 * 10^18
                                            require (-135000 * m_wcStored) + (3750000000 * 10^18 * 24 * 3600) / -m_wcStored + 100000000 * 10^18 == 135000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (-135000 * m_wcStored) + (3750000000 * 10^18 * 24 * 3600)
                                        require ext_call.success
                                        tokenMinted = (-135000 * m_wcStored) + tokenMinted + (3750000000 * 10^18 * 24 * 3600)
                m_wcStored = 100000000 * 10^18
                call m_walletAddress with:
                   value -m_wcStored + 100000000 * 10^18 wei
                     gas 2300 * is_zero(value) wei
                require m_wcStored <= 100000000 * 10^18
                require m_wcStored > m_wcStored
                emit FundTransfer(msg.sender, -m_wcStored + 100000000 * 10^18, 1);
                if m_wcStored == 100000000 * 10^18:
                    if not stor2:
                        stor2 = 1
                if msg.value + m_wcStored - 100000000 * 10^18 > 0:
                    call msg.sender with:
                       value msg.value + m_wcStored - 100000000 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
                require msg.value + (2 * m_wcStored) - 100000000 * 10^18 >= m_wcStored
                require m_wcStored + eth.balance(this.address) == msg.value + (2 * m_wcStored) + eth.balance(this.address) - 100000000 * 10^18
    else:
        if stor2:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            stor2 = 1
            if stor2:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
                require m_wcStored <= 100000000 * 10^18
                require -m_wcStored + 100000000 * 10^18
                if -m_wcStored + 100000000 * 10^18 >= msg.value:
                    if msg.value >= 5000 * 10^18:
                        if msg.value:
                            require msg.value
                            require 153000 * msg.value / msg.value == 153000
                        require ext_code.size(m_tokenAddress)
                        call m_tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 153000 * msg.value
                        require ext_call.success
                        tokenMinted += 153000 * msg.value
                    else:
                        if msg.value >= 3000 * 10^18:
                            if msg.value:
                                require msg.value
                                require 148000 * msg.value / msg.value == 148000
                            require ext_code.size(m_tokenAddress)
                            call m_tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 148000 * msg.value
                            require ext_call.success
                            tokenMinted += 148000 * msg.value
                        else:
                            if msg.value >= 1000 * 10^18:
                                if msg.value:
                                    require msg.value
                                    require 143000 * msg.value / msg.value == 143000
                                require ext_code.size(m_tokenAddress)
                                call m_tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 143000 * msg.value
                                require ext_call.success
                                tokenMinted += 143000 * msg.value
                            else:
                                if msg.value >= 800 * 10^18:
                                    if msg.value:
                                        require msg.value
                                        require 141000 * msg.value / msg.value == 141000
                                    require ext_code.size(m_tokenAddress)
                                    call m_tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 141000 * msg.value
                                    require ext_call.success
                                    tokenMinted += 141000 * msg.value
                                else:
                                    if msg.value >= 500 * 10^18:
                                        if msg.value:
                                            require msg.value
                                            require 138000 * msg.value / msg.value == 138000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 138000 * msg.value
                                        require ext_call.success
                                        tokenMinted += 138000 * msg.value
                                    else:
                                        if msg.value < 200 * 10^18:
                                            if msg.value:
                                                require msg.value
                                                require 133000 * msg.value / msg.value == 133000
                                            require ext_code.size(m_tokenAddress)
                                            call m_tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 133000 * msg.value
                                            require ext_call.success
                                            tokenMinted += 133000 * msg.value
                                        else:
                                            if msg.value:
                                                require msg.value
                                                require 135000 * msg.value / msg.value == 135000
                                            require ext_code.size(m_tokenAddress)
                                            call m_tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 135000 * msg.value
                                            require ext_call.success
                                            tokenMinted += 135000 * msg.value
                    m_wcStored += msg.value
                    call m_walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require m_wcStored <= 100000000 * 10^18
                    require m_wcStored > m_wcStored
                    emit FundTransfer(msg.sender, msg.value, 1);
                    if m_wcStored == 100000000 * 10^18:
                        if not stor2:
                            stor2 = 1
                    require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
                    require m_wcStored + eth.balance(this.address) == m_wcStored + eth.balance(this.address)
                else:
                    require -m_wcStored + 100000000 * 10^18 <= msg.value
                    if -m_wcStored + 100000000 * 10^18 >= 5000 * 10^18:
                        if -m_wcStored + 100000000 * 10^18:
                            require -m_wcStored + 100000000 * 10^18
                            require (-153000 * m_wcStored) + (4250000000 * 10^18 * 3600) / -m_wcStored + 100000000 * 10^18 == 153000
                        require ext_code.size(m_tokenAddress)
                        call m_tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (-153000 * m_wcStored) + (4250000000 * 10^18 * 3600)
                        require ext_call.success
                        tokenMinted = (-153000 * m_wcStored) + tokenMinted + (4250000000 * 10^18 * 3600)
                    else:
                        if -m_wcStored + 100000000 * 10^18 >= 3000 * 10^18:
                            if -m_wcStored + 100000000 * 10^18:
                                require -m_wcStored + 100000000 * 10^18
                                require (-148000 * m_wcStored) + 14800000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 148000
                            require ext_code.size(m_tokenAddress)
                            call m_tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (-148000 * m_wcStored) + 14800000000000 * 10^18
                            require ext_call.success
                            tokenMinted = (-148000 * m_wcStored) + tokenMinted + 14800000000000 * 10^18
                        else:
                            if -m_wcStored + 100000000 * 10^18 >= 1000 * 10^18:
                                if -m_wcStored + 100000000 * 10^18:
                                    require -m_wcStored + 100000000 * 10^18
                                    require (-143000 * m_wcStored) + 14300000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 143000
                                require ext_code.size(m_tokenAddress)
                                call m_tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (-143000 * m_wcStored) + 14300000000000 * 10^18
                                require ext_call.success
                                tokenMinted = (-143000 * m_wcStored) + tokenMinted + 14300000000000 * 10^18
                            else:
                                if -m_wcStored + 100000000 * 10^18 >= 800 * 10^18:
                                    if -m_wcStored + 100000000 * 10^18:
                                        require -m_wcStored + 100000000 * 10^18
                                        require (-141000 * m_wcStored) + 14100000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 141000
                                    require ext_code.size(m_tokenAddress)
                                    call m_tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (-141000 * m_wcStored) + 14100000000000 * 10^18
                                    require ext_call.success
                                    tokenMinted = (-141000 * m_wcStored) + tokenMinted + 14100000000000 * 10^18
                                else:
                                    if -m_wcStored + 100000000 * 10^18 >= 500 * 10^18:
                                        if -m_wcStored + 100000000 * 10^18:
                                            require -m_wcStored + 100000000 * 10^18
                                            require (-138000 * m_wcStored) + 13800000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 138000
                                        require ext_code.size(m_tokenAddress)
                                        call m_tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (-138000 * m_wcStored) + 13800000000000 * 10^18
                                        require ext_call.success
                                        tokenMinted = (-138000 * m_wcStored) + tokenMinted + 13800000000000 * 10^18
                                    else:
                                        if -m_wcStored + 100000000 * 10^18 < 200 * 10^18:
                                            if -m_wcStored + 100000000 * 10^18:
                                                require -m_wcStored + 100000000 * 10^18
                                                require (-133000 * m_wcStored) + 13300000000000 * 10^18 / -m_wcStored + 100000000 * 10^18 == 133000
                                            require ext_code.size(m_tokenAddress)
                                            call m_tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (-133000 * m_wcStored) + 13300000000000 * 10^18
                                            require ext_call.success
                                            tokenMinted = (-133000 * m_wcStored) + tokenMinted + 13300000000000 * 10^18
                                        else:
                                            if -m_wcStored + 100000000 * 10^18:
                                                require -m_wcStored + 100000000 * 10^18
                                                require (-135000 * m_wcStored) + (3750000000 * 10^18 * 24 * 3600) / -m_wcStored + 100000000 * 10^18 == 135000
                                            require ext_code.size(m_tokenAddress)
                                            call m_tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (-135000 * m_wcStored) + (3750000000 * 10^18 * 24 * 3600)
                                            require ext_call.success
                                            tokenMinted = (-135000 * m_wcStored) + tokenMinted + (3750000000 * 10^18 * 24 * 3600)
                    m_wcStored = 100000000 * 10^18
                    call m_walletAddress with:
                       value -m_wcStored + 100000000 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require m_wcStored <= 100000000 * 10^18
                    require m_wcStored > m_wcStored
                    emit FundTransfer(msg.sender, -m_wcStored + 100000000 * 10^18, 1);
                    if m_wcStored == 100000000 * 10^18:
                        if not stor2:
                            stor2 = 1
                    if msg.value + m_wcStored - 100000000 * 10^18 > 0:
                        call msg.sender with:
                           value msg.value + m_wcStored - 100000000 * 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    require m_wcStored + eth.balance(this.address) >= eth.balance(this.address)
                    require msg.value + (2 * m_wcStored) - 100000000 * 10^18 >= m_wcStored
                    require m_wcStored + eth.balance(this.address) == msg.value + (2 * m_wcStored) + eth.balance(this.address) - 100000000 * 10^18
    stor0 = 0
}



}
