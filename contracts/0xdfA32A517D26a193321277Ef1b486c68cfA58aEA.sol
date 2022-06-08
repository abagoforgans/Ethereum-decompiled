contract main {




// =====================  Runtime code  =====================


const sub_610b9733(?) = 30000

const sub_913c5569(?) = 30000

const sub_a3a6ffdb(?) = 185000

const MIN_FEE = 5 * 10^13


uint64 stor0;
uint128 stor0; offset 160
uint256 itemCount;
mapping of struct sub_c933dc5b;
uint8 stor2;
address stor2;
address providerAddress; offset 8
address partnerAddress;
uint256 sub_7d1f8ea1;
uint256 sub_9a349c65;
uint256 feeRate;
uint256 stor7;
uint256 stor8;
uint256 stor9;
mapping of uint256 stor10;
address recovererAddress;

function active() {
    return bool(uint8(stor2.field_0))
}

function provider() {
    return providerAddress
}

function getItemCount() {
    if providerAddress != msg.sender:
        revert with 0, 'Sender must be the provider.'
    return itemCount
}

function sub_7d1f8ea1(?) {
    return sub_7d1f8ea1
}

function feeRate() {
    return feeRate
}

function sub_9a349c65(?) {
    return sub_9a349c65
}

function recoverer() {
    return recovererAddress
}

function partner() {
    return partnerAddress
}

function sub_c9157e12(?) {
    if sub_c933dc5b[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be the original sender of the item.'
    return bool(sub_c933dc5b[arg1].field_776)
}

function sub_c933dc5b(?) {
    if providerAddress != msg.sender:
        revert with 0, 'Sender must be the provider.'
    return sub_c933dc5b[arg1].field_0, sub_c933dc5b[arg1].field_256, sub_c933dc5b[arg1].field_512, sub_c933dc5b[arg1].field_768
}

function _fallback() payable {
    revert
}

function sub_25117b72(?) {
    if providerAddress != msg.sender:
        if partnerAddress != msg.sender:
            revert with 0, 'Sender must be an admin.'
    return stor7
}

function sub_e2608c9e(?) {
    if providerAddress != msg.sender:
        if partnerAddress != msg.sender:
            revert with 0, 'Sender must be an admin.'
    return stor10[address(msg.sender)]
}

function sub_480bf501(?) {
    if providerAddress != msg.sender:
        revert with 0, 'Sender must be the provider.'
    require arg1 > 0
    if not arg2:
        stor8 = arg1
    else:
        stor9 = arg1
}

function pauseDeposits() {
    if providerAddress != msg.sender:
        revert with 0, 'Sender must be the provider.'
    require uint8(stor2.field_0)
    uint8(stor2.field_0) = 0
    emit 0xfaad1342: block.timestamp
}

function unpauseDeposits() {
    if providerAddress != msg.sender:
        revert with 0, 'Sender must be the provider.'
    require not uint8(stor2.field_0)
    uint8(stor2.field_0) = 1
    emit 0xa53bad21: block.timestamp
}

function sub_0ac32cfe(?) {
    if providerAddress != msg.sender:
        if partnerAddress != msg.sender:
            revert with 0, 'Sender must be an admin.'
        if providerAddress != msg.sender:
            return stor9
    return stor8
}

function updateFeeRate(uint256 arg1) {
    if providerAddress != msg.sender:
        revert with 0, 'Sender must be the provider.'
    if uint8(stor2.field_0):
        revert with 0, 'Item deposits must be paused.'
    require arg1 > 0
    feeRate = arg1
    emit 0x79c496f1: feeRate, block.timestamp
}

function sub_512a17af(?) {
    if providerAddress != msg.sender:
        revert with 0, 'Sender must be the provider.'
    if uint8(stor2.field_0):
        revert with 0, 'Item deposits must be paused.'
    require arg1 > sub_7d1f8ea1
    sub_9a349c65 = arg1
    emit 0x153fe944: sub_9a349c65, block.timestamp
}

function sub_4e421efa(?) {
    if providerAddress != msg.sender:
        revert with 0, 'Sender must be the provider.'
    if uint8(stor2.field_0):
        revert with 0, 'Item deposits must be paused.'
    require arg1 >= 5 * 10^13
    require arg1 < sub_9a349c65
    sub_7d1f8ea1 = arg1
    emit 0x80480ca9: sub_7d1f8ea1, block.timestamp
}

function sub_0e983616(?) {
    if recovererAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender must be the ERC20 token recoverer.'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_8e03165d(?) {
    require arg1 >= sub_7d1f8ea1
    if not arg1:
        if 0 >= sub_7d1f8ea1:
            if 0 <= sub_9a349c65:
                return 0
        else:
            if sub_7d1f8ea1 <= sub_9a349c65:
                return sub_7d1f8ea1
    else:
        require arg1
        require arg1 * feeRate / arg1 == feeRate
        if arg1 * feeRate / 100000 >= sub_7d1f8ea1:
            if arg1 * feeRate / 100000 <= sub_9a349c65:
                return (arg1 * feeRate / 100000)
        else:
            if sub_7d1f8ea1 <= sub_9a349c65:
                return sub_7d1f8ea1
    return sub_9a349c65
}

function withdraw(bytes32 arg1) {
    if sub_c933dc5b[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be the original sender of the item.'
    require gas_remaining >= 30000
    if eth.balance(this.address) < sub_c933dc5b[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient contract balance for delivery.'
    require sub_c933dc5b[arg1].field_776
    sub_c933dc5b[arg1].field_0 = 0
    sub_c933dc5b[arg1].field_256 = 0
    sub_c933dc5b[arg1].field_512 = 0
    sub_c933dc5b[arg1].field_768 = 0
    sub_c933dc5b[arg1].field_776 = 0
    call sub_c933dc5b[arg1].field_0 with:
       value sub_c933dc5b[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6452c0d1: arg1
}

function sub_d3e06769(?) {
    if providerAddress != msg.sender:
        revert with 0, 'Sender must be the provider.'
    require gas_remaining >= 30000
    if eth.balance(this.address) < sub_c933dc5b[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient contract balance for delivery.'
    require sub_c933dc5b[arg1].field_776
    sub_c933dc5b[arg1].field_0 = 0
    sub_c933dc5b[arg1].field_256 = 0
    sub_c933dc5b[arg1].field_512 = 0
    sub_c933dc5b[arg1].field_768 = 0
    sub_c933dc5b[arg1].field_776 = 0
    if not arg2:
        call sub_c933dc5b[arg1].field_0 with:
           value sub_c933dc5b[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
    else:
        call sub_c933dc5b[arg1].field_256 with:
           value sub_c933dc5b[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x51f69a4b: arg1
}

function sub_fe5dd171(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if providerAddress != msg.sender:
        revert with 0, 'Sender must be the provider.'
    require arg1.length <= 150
    require 30000 * arg1.length / 30000 == arg1.length
    require gas_remaining >= 30000 * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if eth.balance(this.address) < sub_c933dc5b[mem[(32 * idx) + 128]].field_512:
            revert with 0, 'Insufficient contract balance for delivery.'
        require sub_c933dc5b[mem[(32 * idx) + 128]].field_776
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        sub_c933dc5b[mem[(32 * idx) + 128]].field_0 = 0
        sub_c933dc5b[mem[(32 * idx) + 128]].field_256 = 0
        sub_c933dc5b[mem[(32 * idx) + 128]].field_512 = 0
        sub_c933dc5b[mem[(32 * idx) + 128]].field_768 = 0
        sub_c933dc5b[mem[(32 * idx) + 128]].field_776 = 0
        if not arg2:
            call sub_c933dc5b[mem[(32 * idx) + 128]].field_0 with:
               value sub_c933dc5b[mem[(32 * idx) + 128]].field_512 wei
                 gas 2300 * is_zero(value) wei
        else:
            call sub_c933dc5b[mem[(32 * idx) + 128]].field_256 with:
               value sub_c933dc5b[mem[(32 * idx) + 128]].field_512 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 128]
        emit 0x51f69a4b: mem[(32 * arg1.length) + 128]
        idx = idx + 1
        continue 
}

function sub_dc5f290a(?) payable {
    if not uint8(stor2.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Item deposits are currently paused.'
    if msg.value < sub_7d1f8ea1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This deposit does not meet the minimum fee requirements.'
    require gas_remaining >= 185000
    require arg1
    require arg2 >= 10
    require arg2 <= 70
    require msg.value >= sub_7d1f8ea1
    if not msg.value:
        if 0 >= sub_7d1f8ea1:
            if 0 <= sub_9a349c65:
                require stor10[stor3] >= stor10[stor3]
                require stor10[address(stor2.field_0)] >= stor10[address(stor2.field_0)]
                if stor10[stor3] >= stor9:
                    stor10[stor3] = 0
                    call partnerAddress with:
                       value stor10[stor3] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor10[address(stor2.field_0)] >= stor8:
                    stor10[address(stor2.field_0)] = 0
                    call providerAddress with:
                       value stor10[address(stor2.field_0)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require 0 <= msg.value
                itemCount++
                mem[212] = uint64(stor0.field_0), Mask(96, 64, msg.sender) >> 64 or Mask(96, 160, mem[212])
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_0 = msg.sender
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_256 = arg1
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_512 = msg.value
            else:
                if not sub_9a349c65:
                    require 0 <= sub_9a349c65
                    require stor10[stor3] >= stor10[stor3]
                    require stor10[address(stor2.field_0)] + sub_9a349c65 >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] += sub_9a349c65
                else:
                    require sub_9a349c65
                    require sub_9a349c65 * stor7 / sub_9a349c65 == stor7
                    require sub_9a349c65 * stor7 / 100 <= sub_9a349c65
                    require stor10[stor3] + (sub_9a349c65 * stor7 / 100) >= stor10[stor3]
                    stor10[stor3] += sub_9a349c65 * stor7 / 100
                    require stor10[address(stor2.field_0)] + sub_9a349c65 - (sub_9a349c65 * stor7 / 100) >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] = stor10[address(stor2.field_0)] + sub_9a349c65 - (sub_9a349c65 * stor7 / 100)
                if stor10[stor3] >= stor9:
                    stor10[stor3] = 0
                    call partnerAddress with:
                       value stor10[stor3] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor10[address(stor2.field_0)] >= stor8:
                    stor10[address(stor2.field_0)] = 0
                    call providerAddress with:
                       value stor10[address(stor2.field_0)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require sub_9a349c65 <= msg.value
                itemCount++
                mem[212] = uint64(stor0.field_0), Mask(96, 64, msg.sender) >> 64 or Mask(96, 160, mem[212])
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_0 = msg.sender
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_256 = arg1
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_512 = msg.value - sub_9a349c65
        else:
            if sub_7d1f8ea1 <= sub_9a349c65:
                if not sub_7d1f8ea1:
                    require 0 <= sub_7d1f8ea1
                    require stor10[stor3] >= stor10[stor3]
                    require stor10[address(stor2.field_0)] + sub_7d1f8ea1 >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] += sub_7d1f8ea1
                else:
                    require sub_7d1f8ea1
                    require sub_7d1f8ea1 * stor7 / sub_7d1f8ea1 == stor7
                    require sub_7d1f8ea1 * stor7 / 100 <= sub_7d1f8ea1
                    require stor10[stor3] + (sub_7d1f8ea1 * stor7 / 100) >= stor10[stor3]
                    stor10[stor3] += sub_7d1f8ea1 * stor7 / 100
                    require stor10[address(stor2.field_0)] + sub_7d1f8ea1 - (sub_7d1f8ea1 * stor7 / 100) >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] = stor10[address(stor2.field_0)] + sub_7d1f8ea1 - (sub_7d1f8ea1 * stor7 / 100)
                if stor10[stor3] >= stor9:
                    stor10[stor3] = 0
                    call partnerAddress with:
                       value stor10[stor3] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor10[address(stor2.field_0)] >= stor8:
                    stor10[address(stor2.field_0)] = 0
                    call providerAddress with:
                       value stor10[address(stor2.field_0)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require sub_7d1f8ea1 <= msg.value
                itemCount++
                mem[212] = uint64(stor0.field_0), Mask(96, 64, msg.sender) >> 64 or Mask(96, 160, mem[212])
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_0 = msg.sender
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_256 = arg1
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_512 = msg.value - sub_7d1f8ea1
            else:
                if not sub_9a349c65:
                    require 0 <= sub_9a349c65
                    require stor10[stor3] >= stor10[stor3]
                    require stor10[address(stor2.field_0)] + sub_9a349c65 >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] += sub_9a349c65
                else:
                    require sub_9a349c65
                    require sub_9a349c65 * stor7 / sub_9a349c65 == stor7
                    require sub_9a349c65 * stor7 / 100 <= sub_9a349c65
                    require stor10[stor3] + (sub_9a349c65 * stor7 / 100) >= stor10[stor3]
                    stor10[stor3] += sub_9a349c65 * stor7 / 100
                    require stor10[address(stor2.field_0)] + sub_9a349c65 - (sub_9a349c65 * stor7 / 100) >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] = stor10[address(stor2.field_0)] + sub_9a349c65 - (sub_9a349c65 * stor7 / 100)
                if stor10[stor3] >= stor9:
                    stor10[stor3] = 0
                    call partnerAddress with:
                       value stor10[stor3] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor10[address(stor2.field_0)] >= stor8:
                    stor10[address(stor2.field_0)] = 0
                    call providerAddress with:
                       value stor10[address(stor2.field_0)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require sub_9a349c65 <= msg.value
                itemCount++
                mem[212] = uint64(stor0.field_0), Mask(96, 64, msg.sender) >> 64 or Mask(96, 160, mem[212])
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_0 = msg.sender
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_256 = arg1
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_512 = msg.value - sub_9a349c65
    else:
        require msg.value
        require msg.value * feeRate / msg.value == feeRate
        if msg.value * feeRate / 100000 >= sub_7d1f8ea1:
            if msg.value * feeRate / 100000 <= sub_9a349c65:
                if not msg.value * feeRate / 100000:
                    require 0 <= msg.value * feeRate / 100000
                    require stor10[stor3] >= stor10[stor3]
                    require stor10[address(stor2.field_0)] + (msg.value * feeRate / 100000) >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] += msg.value * feeRate / 100000
                else:
                    require msg.value * feeRate / 100000
                    require msg.value * feeRate / 100000 * stor7 / msg.value * feeRate / 100000 == stor7
                    require msg.value * feeRate / 100000 * stor7 / 100 <= msg.value * feeRate / 100000
                    require stor10[stor3] + (msg.value * feeRate / 100000 * stor7 / 100) >= stor10[stor3]
                    stor10[stor3] += msg.value * feeRate / 100000 * stor7 / 100
                    require stor10[address(stor2.field_0)] + (msg.value * feeRate / 100000) - (msg.value * feeRate / 100000 * stor7 / 100) >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] = stor10[address(stor2.field_0)] + (msg.value * feeRate / 100000) - (msg.value * feeRate / 100000 * stor7 / 100)
                if stor10[stor3] >= stor9:
                    stor10[stor3] = 0
                    call partnerAddress with:
                       value stor10[stor3] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor10[address(stor2.field_0)] >= stor8:
                    stor10[address(stor2.field_0)] = 0
                    call providerAddress with:
                       value stor10[address(stor2.field_0)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require msg.value * feeRate / 100000 <= msg.value
                itemCount++
                mem[212] = uint64(stor0.field_0), Mask(96, 64, msg.sender) >> 64 or Mask(96, 160, mem[212])
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_0 = msg.sender
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_256 = arg1
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_512 = msg.value - (msg.value * feeRate / 100000)
            else:
                if not sub_9a349c65:
                    require 0 <= sub_9a349c65
                    require stor10[stor3] >= stor10[stor3]
                    require stor10[address(stor2.field_0)] + sub_9a349c65 >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] += sub_9a349c65
                else:
                    require sub_9a349c65
                    require sub_9a349c65 * stor7 / sub_9a349c65 == stor7
                    require sub_9a349c65 * stor7 / 100 <= sub_9a349c65
                    require stor10[stor3] + (sub_9a349c65 * stor7 / 100) >= stor10[stor3]
                    stor10[stor3] += sub_9a349c65 * stor7 / 100
                    require stor10[address(stor2.field_0)] + sub_9a349c65 - (sub_9a349c65 * stor7 / 100) >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] = stor10[address(stor2.field_0)] + sub_9a349c65 - (sub_9a349c65 * stor7 / 100)
                if stor10[stor3] >= stor9:
                    stor10[stor3] = 0
                    call partnerAddress with:
                       value stor10[stor3] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor10[address(stor2.field_0)] >= stor8:
                    stor10[address(stor2.field_0)] = 0
                    call providerAddress with:
                       value stor10[address(stor2.field_0)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require sub_9a349c65 <= msg.value
                itemCount++
                mem[212] = uint64(stor0.field_0), Mask(96, 64, msg.sender) >> 64 or Mask(96, 160, mem[212])
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_0 = msg.sender
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_256 = arg1
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_512 = msg.value - sub_9a349c65
        else:
            if sub_7d1f8ea1 <= sub_9a349c65:
                if not sub_7d1f8ea1:
                    require 0 <= sub_7d1f8ea1
                    require stor10[stor3] >= stor10[stor3]
                    require stor10[address(stor2.field_0)] + sub_7d1f8ea1 >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] += sub_7d1f8ea1
                else:
                    require sub_7d1f8ea1
                    require sub_7d1f8ea1 * stor7 / sub_7d1f8ea1 == stor7
                    require sub_7d1f8ea1 * stor7 / 100 <= sub_7d1f8ea1
                    require stor10[stor3] + (sub_7d1f8ea1 * stor7 / 100) >= stor10[stor3]
                    stor10[stor3] += sub_7d1f8ea1 * stor7 / 100
                    require stor10[address(stor2.field_0)] + sub_7d1f8ea1 - (sub_7d1f8ea1 * stor7 / 100) >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] = stor10[address(stor2.field_0)] + sub_7d1f8ea1 - (sub_7d1f8ea1 * stor7 / 100)
                if stor10[stor3] >= stor9:
                    stor10[stor3] = 0
                    call partnerAddress with:
                       value stor10[stor3] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor10[address(stor2.field_0)] >= stor8:
                    stor10[address(stor2.field_0)] = 0
                    call providerAddress with:
                       value stor10[address(stor2.field_0)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require sub_7d1f8ea1 <= msg.value
                itemCount++
                mem[212] = uint64(stor0.field_0), Mask(96, 64, msg.sender) >> 64 or Mask(96, 160, mem[212])
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_0 = msg.sender
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_256 = arg1
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_512 = msg.value - sub_7d1f8ea1
            else:
                if not sub_9a349c65:
                    require 0 <= sub_9a349c65
                    require stor10[stor3] >= stor10[stor3]
                    require stor10[address(stor2.field_0)] + sub_9a349c65 >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] += sub_9a349c65
                else:
                    require sub_9a349c65
                    require sub_9a349c65 * stor7 / sub_9a349c65 == stor7
                    require sub_9a349c65 * stor7 / 100 <= sub_9a349c65
                    require stor10[stor3] + (sub_9a349c65 * stor7 / 100) >= stor10[stor3]
                    stor10[stor3] += sub_9a349c65 * stor7 / 100
                    require stor10[address(stor2.field_0)] + sub_9a349c65 - (sub_9a349c65 * stor7 / 100) >= stor10[address(stor2.field_0)]
                    stor10[address(stor2.field_0)] = stor10[address(stor2.field_0)] + sub_9a349c65 - (sub_9a349c65 * stor7 / 100)
                if stor10[stor3] >= stor9:
                    stor10[stor3] = 0
                    call partnerAddress with:
                       value stor10[stor3] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if stor10[address(stor2.field_0)] >= stor8:
                    stor10[address(stor2.field_0)] = 0
                    call providerAddress with:
                       value stor10[address(stor2.field_0)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require sub_9a349c65 <= msg.value
                itemCount++
                mem[212] = uint64(stor0.field_0), Mask(96, 64, msg.sender) >> 64 or Mask(96, 160, mem[212])
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_0 = msg.sender
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_256 = arg1
                sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_512 = msg.value - sub_9a349c65
    sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_768 = arg2
    sub_c933dc5b[msg.sender][Mask(96, 0, stor0.field_160)][mem[212 len 20]].field_776 = 1
    emit 0x41f73485: sha3(msg.sender, Mask(96, 0, stor0.field_160), mem[212 len 20])
    return sha3(msg.sender, Mask(96, 0, stor0.field_160), mem[212 len 20])
}



}
