contract main {




// =====================  Runtime code  =====================


#
#  - invested()
#
const getBalance = eth.balance(this.address)

const sub_7c15dd60(?) = (block.timestamp + -(block.timestamp % 24 * 3600) - (8 * 3600))


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 sub_967b42e5;
uint256 sub_c3591fa6;
uint256 sub_99bf3266;
address owner;
address sub_95aad082Address;
address sub_8dc12a16Address;
uint256 sub_e6052940;
uint256 sub_61c719a5;
uint256 sub_bcb26e30;
uint256 sub_a4aa8ae9;
array of struct sub_90c5a074;
array of struct sub_0a926786;
array of struct sub_04ab8747;
uint256 awardPool;
uint256 sub_7931873b;
uint256 page;
mapping of uint256 sub_317626e2;
mapping of uint64 sub_4cd8de13;

function sub_04ab8747(?) {
    require arg1 < sub_04ab8747.length
    return sub_04ab8747[arg1].field_0
}

function sub_0a926786(?) {
    require arg1 < sub_0a926786.length
    return sub_0a926786[arg1].field_0
}

function page() {
    return page
}

function sub_317626e2(?) {
    return sub_317626e2[Mask(48, 208, arg1)]
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return investors[arg1].field_0, 
           investors[arg1].field_256,
           investors[arg1].field_416 << 208,
           investors[arg1].field_464 << 208,
           investors[arg1].field_512,
           investors[arg1].field_768,
           investors[arg1].field_1024,
           investors[arg1].field_1280,
           investors[arg1].field_1536,
           investors[arg1].field_1792,
           investors[arg1].field_2048,
           investors[arg1].field_2304,
           investors[arg1].field_2560
}

function sub_4c5d5964(?) {
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    return investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1536
}

function sub_4cd8de13(?) {
    return Mask(48, 208, sub_4cd8de13[address(arg1)])
}

function sub_4f6ac66b(?) {
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    return investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1024
}

function sub_60a60c35(?) {
    return bool(uint8(stor0.field_8))
}

function sub_61c719a5(?) {
    return sub_61c719a5
}

function sub_7931873b(?) {
    return sub_7931873b
}

function owner() {
    return owner
}

function sub_8dc12a16(?) {
    return sub_8dc12a16Address
}

function sub_8e823aef(?) {
    return Mask(48, 208, sub_4cd8de13[arg1])
}

function sub_90c5a074(?) {
    require arg1 < sub_90c5a074.length
    return sub_90c5a074[arg1].field_0
}

function sub_95aad082(?) {
    return sub_95aad082Address
}

function getInvestorCount() {
    return investors.length
}

function sub_967b42e5(?) {
    return sub_967b42e5
}

function sub_99bf3266(?) {
    return sub_99bf3266
}

function sub_a4aa8ae9(?) {
    return sub_a4aa8ae9
}

function sub_b38e6b93(?) {
    return sub_317626e2[Mask(48, 208, stor19[address(arg1)])]
}

function awardPool() {
    return awardPool
}

function sub_bcb26e30(?) {
    return sub_bcb26e30
}

function sub_c3591fa6(?) {
    return sub_c3591fa6
}

function sub_e6052940(?) {
    return sub_e6052940
}

function sub_ebdd5e4a(?) {
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    return investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1280
}

function sub_f271ccf3(?) {
    require sub_317626e2[Mask(48, 208, stor19[address(arg1)])] < investors.length
    return investors[stor18[Mask(48, 208, stor19[address(arg1)])]].field_1792
}

function sub_f831fcef(?) {
    return bool(uint8(stor0.field_0))
}

function _fallback() payable {
  stop
}

function sub_6de167c5(?) {
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    uint8(stor0.field_0) = uint8(arg1)
}

function sub_b2850731(?) {
    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
    return not not investors[stor18[Mask(48, 208, arg1)]].field_0
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_36b39215(?) {
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    require arg1
    emit OwnershipTransferred(sub_8dc12a16Address, arg1);
    sub_8dc12a16Address = arg1
}

function sub_3fe5c0b2(?) {
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    require arg1
    emit OwnershipTransferred(sub_95aad082Address, arg1);
    sub_95aad082Address = arg1
}

function sub_32351447(?) {
    require not uint8(stor0.field_0)
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    require arg1 >= 0
    require awardPool + arg1 >= awardPool
    awardPool += arg1
}

function sub_55f2a198(?) {
    require not uint8(stor0.field_0)
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    require arg1 >= 0
    require awardPool >= arg1
    require arg1 <= awardPool
    awardPool -= arg1
}

function transfer(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    require arg1 > 0
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTime(address arg1) {
    require sub_317626e2[Mask(48, 208, stor19[address(arg1)])] < investors.length
    require investors[stor18[Mask(48, 208, stor19[address(arg1)])]].field_2560 + sub_c3591fa6 >= investors[stor18[Mask(48, 208, stor19[address(arg1)])]].field_2560
    return investors[stor18[Mask(48, 208, stor19[address(arg1)])]].field_2560 + sub_c3591fa6 <= block.timestamp
}

function sub_7422e2b1(?) {
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    uint8(stor0.field_0) = uint8(arg1)
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg2)
    sub_7931873b = arg3
    sub_e6052940 = arg5
    if not arg4:
        awardPool = 0
    else:
        require arg4
        require 10^18 * arg4 / arg4 == 10^18
        awardPool = 10^18 * arg4
    sub_99bf3266 = arg6
}

function cancelApplication(address arg1) {
    require not uint8(stor0.field_0)
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    require sub_317626e2[Mask(48, 208, stor19[address(arg1)])] < investors.length
    require investors[stor18[Mask(48, 208, stor19[address(arg1)])]].field_2048 == 2
    require sub_317626e2[Mask(48, 208, stor19[address(arg1)])] < investors.length
    investors[stor18[Mask(48, 208, stor19[address(arg1)])]].field_2048 = 1
    emit 0xab431edb: block.timestamp, msg.sender
}

function confirmApplication(address arg1) {
    require not uint8(stor0.field_0)
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    if not uint8(stor0.field_8):
        require sub_317626e2[Mask(48, 208, stor19[address(arg1)])] < investors.length
        require investors[stor18[Mask(48, 208, stor19[address(arg1)])]].field_2048 == 2
        require sub_317626e2[Mask(48, 208, stor19[address(arg1)])] < investors.length
        investors[stor18[Mask(48, 208, stor19[address(arg1)])]].field_2048 = 3
        emit 0xff155535: address(arg1), block.timestamp, msg.sender
}

function sub_221bed75(?) {
    require not uint8(stor0.field_0)
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    require investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1280 >= sub_a4aa8ae9
    require eth.balance(this.address) >= investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1280
    call msg.sender with:
       value investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1280 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1280 = 0
    emit 0x7c5d4249: investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1280, block.timestamp, msg.sender
}

function sub_72d4b4a0(?) {
    require not uint8(stor0.field_0)
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    require investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1024 >= sub_a4aa8ae9
    require eth.balance(this.address) >= investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1024
    call msg.sender with:
       value investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1024 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1024 = 0
    emit 0x3ce16f49: investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1024, block.timestamp, msg.sender
}

function sub_a548ecba(?) {
    require not uint8(stor0.field_0)
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    require investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1536 >= sub_a4aa8ae9
    require eth.balance(this.address) >= investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1536
    call msg.sender with:
       value investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1536 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1536 = 0
    emit 0xdf64b6a4: investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_1536, block.timestamp, msg.sender
}

function sub_08038b7c(?) {
    if not sub_90c5a074.length:
        mem[(32 * sub_90c5a074.length) + 128] = 32
        mem[(32 * sub_90c5a074.length) + 160] = sub_90c5a074.length
        mem[(32 * sub_90c5a074.length) + 192 len floor32(sub_90c5a074.length)] = mem[128 len floor32(sub_90c5a074.length)]
        return memory
          from (32 * sub_90c5a074.length) + 128
           len (96 * sub_90c5a074.length) + 64
    mem[128] = uint256(sub_90c5a074.field_0)
    idx = 128
    s = 0
    while (32 * sub_90c5a074.length) + 96 > idx:
        mem[idx + 32] = sub_90c5a074[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_90c5a074.length) + 192 len floor32(sub_90c5a074.length)] = mem[128 len floor32(sub_90c5a074.length)]
    return Array(len=sub_90c5a074.length, data=mem[128 len floor32(sub_90c5a074.length)], mem[(32 * sub_90c5a074.length) + floor32(sub_90c5a074.length) + 192 len (32 * sub_90c5a074.length) - floor32(sub_90c5a074.length)]), 
}

function sub_3a2350f1(?) {
    if not sub_0a926786.length:
        mem[(32 * sub_0a926786.length) + 128] = 32
        mem[(32 * sub_0a926786.length) + 160] = sub_0a926786.length
        mem[(32 * sub_0a926786.length) + 192 len floor32(sub_0a926786.length)] = mem[128 len floor32(sub_0a926786.length)]
        return memory
          from (32 * sub_0a926786.length) + 128
           len (96 * sub_0a926786.length) + 64
    mem[128] = uint256(sub_0a926786.field_0)
    idx = 128
    s = 0
    while (32 * sub_0a926786.length) + 96 > idx:
        mem[idx + 32] = sub_0a926786[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_0a926786.length) + 192 len floor32(sub_0a926786.length)] = mem[128 len floor32(sub_0a926786.length)]
    return Array(len=sub_0a926786.length, data=mem[128 len floor32(sub_0a926786.length)], mem[(32 * sub_0a926786.length) + floor32(sub_0a926786.length) + 192 len (32 * sub_0a926786.length) - floor32(sub_0a926786.length)]), 
}

function sub_4671c22f(?) {
    if not sub_04ab8747.length:
        mem[(32 * sub_04ab8747.length) + 128] = 32
        mem[(32 * sub_04ab8747.length) + 160] = sub_04ab8747.length
        mem[(32 * sub_04ab8747.length) + 192 len floor32(sub_04ab8747.length)] = mem[128 len floor32(sub_04ab8747.length)]
        return memory
          from (32 * sub_04ab8747.length) + 128
           len (96 * sub_04ab8747.length) + 64
    mem[128] = uint256(sub_04ab8747.field_0)
    idx = 128
    s = 0
    while (32 * sub_04ab8747.length) + 96 > idx:
        mem[idx + 32] = sub_04ab8747[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_04ab8747.length) + 192 len floor32(sub_04ab8747.length)] = mem[128 len floor32(sub_04ab8747.length)]
    return Array(len=sub_04ab8747.length, data=mem[128 len floor32(sub_04ab8747.length)], mem[(32 * sub_04ab8747.length) + floor32(sub_04ab8747.length) + 192 len (32 * sub_04ab8747.length) - floor32(sub_04ab8747.length)]), 
}

function sub_5351ffe2(?) {
    require not uint8(stor0.field_0)
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    require investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2048 == 1
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2048 = 2
    require investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2560 + sub_c3591fa6 >= investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2560
    require block.timestamp >= investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2560 + sub_c3591fa6
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2304 = block.timestamp
    emit 0x35c92fcb: investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_512, 2, block.timestamp, msg.sender
}

function sub_e8989841(?) {
    require not uint8(stor0.field_0)
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    require investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2304 + sub_967b42e5 >= investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2304
    if block.timestamp < investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2304 + sub_967b42e5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The withdrawal time is not yet up.'
    if not uint8(stor0.field_8):
        require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
        require investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2048 == 3
    require eth.balance(this.address) >= investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_512
    call msg.sender with:
       value investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_317626e2[Mask(48, 208, stor19[address(msg.sender)])] < investors.length
    investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_512 = 0
    investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_2048 = 1
    emit 0x2c2be620: investors[stor18[Mask(48, 208, stor19[address(msg.sender)])]].field_512, block.timestamp, msg.sender
}

function sub_dfdd782c(?) {
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    if arg5 < sub_61c719a5:
        revert with 0, 'Illegal amount'
    if arg5 > sub_bcb26e30:
        revert with 0, 'Illegal amount'
    require sub_61c719a5
    require sub_61c719a5
    if arg5 % sub_61c719a5:
        revert with 0, 'Illegal amount'
    require not Mask(48, 208, sub_4cd8de13[address(arg1)])
    require Mask(48, 208, arg2) != 0x73797374656d0000000000000000000000000000000000000000000000000000
    require not sub_317626e2[Mask(48, 208, arg2)]
    require Mask(48, 208, arg3) != 0x73797374656d0000000000000000000000000000000000000000000000000000
    require sub_317626e2[Mask(48, 208, arg3)]
    require sub_317626e2[Mask(48, 208, arg3)] < investors.length
    investors.length++
    investors[investors.length].field_0 = arg1
    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg3)]].field_0
    investors[investors.length].field_416 = Mask(48, 208, arg2) >> 208
    investors[investors.length].field_464 = Mask(48, 208, arg3) >> 208
    investors[investors.length].field_512 = arg5
    investors[investors.length].field_768 = 0
    investors[investors.length].field_1024 = 0
    investors[investors.length].field_1280 = 0
    investors[investors.length].field_1536 = 0
    investors[investors.length].field_1792 = arg4
    investors[investors.length].field_2048 = 1
    investors[investors.length].field_2304 = 0
    investors[investors.length].field_2560 = block.timestamp
    require 1 <= investors.length + 1
    sub_317626e2[Mask(48, 208, arg2)] = investors.length
    sub_4cd8de13[address(arg1)] = Mask(48, 208, arg2) >> 208
    emit 0xaa67662b: Mask(48, 208, arg2), investors.length, arg5, Mask(48, 208, arg3), block.timestamp, arg1, investors[stor18[Mask(48, 208, arg3)]].field_0
}

function sub_7f41be29(?) {
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = arg7.length
    mem[(32 * arg6.length) + 160 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg6.length) + (32 * arg7.length) + 160] = arg8.length
    mem[(32 * arg6.length) + (32 * arg7.length) + 192 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    if owner != msg.sender:
        require msg.sender == sub_8dc12a16Address
    sub_967b42e5 = arg1
    sub_c3591fa6 = arg2
    sub_bcb26e30 = arg3
    sub_a4aa8ae9 = arg4
    page = arg5
    sub_90c5a074.length = arg6.length
    if not arg6.length:
        idx = 0
        while sub_90c5a074.length > idx:
            sub_90c5a074[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg6.length) + 128 > idx:
            sub_90c5a074[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
        while sub_90c5a074.length > idx:
            sub_90c5a074[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_0a926786.length = arg7.length
    if not arg7.length:
        idx = 0
        while sub_0a926786.length > idx:
            sub_0a926786[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg6.length) + 160
        while (32 * arg6.length) + (32 * arg7.length) + 160 > idx:
            sub_0a926786[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
        while sub_0a926786.length > idx:
            sub_0a926786[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_04ab8747.length = arg8.length
    if not arg8.length:
        idx = 0
        while sub_04ab8747.length > idx:
            sub_04ab8747[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg6.length) + (32 * arg7.length) + 192
        while (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 192 > idx:
            sub_04ab8747[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
        while sub_04ab8747.length > idx:
            sub_04ab8747[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_5f5b914f(?) {
    require 0 < sub_90c5a074.length
    if not uint256(sub_90c5a074.field_0):
        if arg1 >= 0:
            require 1 < sub_90c5a074.length
            if not uint256(sub_90c5a074.field_256):
                if arg1 <= 0:
                    return 1
            else:
                require uint256(sub_90c5a074.field_256)
                require 10^18 * uint256(sub_90c5a074.field_256) / uint256(sub_90c5a074.field_256) == 10^18
                if arg1 <= 10^18 * uint256(sub_90c5a074.field_256):
                    return 1
    else:
        require uint256(sub_90c5a074.field_0)
        require 10^18 * uint256(sub_90c5a074.field_0) / uint256(sub_90c5a074.field_0) == 10^18
        if arg1 >= 10^18 * uint256(sub_90c5a074.field_0):
            require 1 < sub_90c5a074.length
            if not uint256(sub_90c5a074.field_256):
                if arg1 <= 0:
                    return 1
            else:
                require uint256(sub_90c5a074.field_256)
                require 10^18 * uint256(sub_90c5a074.field_256) / uint256(sub_90c5a074.field_256) == 10^18
                if arg1 <= 10^18 * uint256(sub_90c5a074.field_256):
                    return 1
    require 0 < sub_0a926786.length
    if not uint256(sub_0a926786.field_0):
        if arg1 >= 0:
            require 1 < sub_0a926786.length
            if not uint256(sub_0a926786.field_256):
                if arg1 <= 0:
                    return 2
            else:
                require uint256(sub_0a926786.field_256)
                require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                if arg1 <= 10^18 * uint256(sub_0a926786.field_256):
                    return 2
    else:
        require uint256(sub_0a926786.field_0)
        require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
        if arg1 >= 10^18 * uint256(sub_0a926786.field_0):
            require 1 < sub_0a926786.length
            if not uint256(sub_0a926786.field_256):
                if arg1 <= 0:
                    return 2
            else:
                require uint256(sub_0a926786.field_256)
                require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                if arg1 <= 10^18 * uint256(sub_0a926786.field_256):
                    return 2
    require 0 < sub_04ab8747.length
    if not uint256(sub_04ab8747.field_0):
        if arg1 < 0:
            return 0
    else:
        require uint256(sub_04ab8747.field_0)
        require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
        if arg1 < 10^18 * uint256(sub_04ab8747.field_0):
            return 0
    require 1 < sub_04ab8747.length
    if not uint256(sub_04ab8747.field_256):
        if arg1 > 0:
            return 0
    else:
        require uint256(sub_04ab8747.field_256)
        require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
        if arg1 > 10^18 * uint256(sub_04ab8747.field_256):
            return 0
    return 3
}

function sub_0663d475(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if msg.sender == sub_95aad082Address:
        require sub_7931873b + sub_e6052940 >= sub_7931873b
        require sub_7931873b + sub_e6052940 <= block.timestamp
        require arg5 > 0
        require arg5
        if investors.length / arg5 >= arg4:
            require arg5 == arg6
            require arg4 >= 1
            require arg4 == page
            require arg1.length == arg6
            require arg2.length == arg6
            require arg3.length == arg6
            require -arg5 + (arg4 * arg5) + arg6 <= investors.length
            require page + 1 >= page
            page++
            if -arg5 + (arg4 * arg5) + arg6 != investors.length:
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                idx = 0
                while idx < arg6:
                    require idx < mem[96]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 + mem[(32 * idx) + 128] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 += mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[0] = 14
                    require idx < mem[96]
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = block.timestamp
                    emit 0x558b10e6: mem[mem[64]], block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 32] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x2ea9d712: mem[mem[64]], stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _450 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64]] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    mem[mem[64] + 32] = _450
                    mem[mem[64] + 64] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 96] = block.timestamp
                    emit 0x2a21d1d2: stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512, _450, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = -arg5 + (arg4 * arg5) + idx
                    idx = idx + 1
                    continue 
            else:
                require block.timestamp % 24 * 3600 <= block.timestamp
                require 8 * 3600 <= block.timestamp - (block.timestamp % 24 * 3600)
                require sub_99bf3266 >= 0
                sub_7931873b = block.timestamp + -(block.timestamp % 24 * 3600) + sub_99bf3266 - (8 * 3600)
                page = 1
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                idx = 0
                while idx < arg6:
                    require idx < mem[96]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 + mem[(32 * idx) + 128] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 += mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[0] = 14
                    require idx < mem[96]
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = block.timestamp
                    emit 0x558b10e6: mem[mem[64]], block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 32] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x2ea9d712: mem[mem[64]], stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _453 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64]] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    mem[mem[64] + 32] = _453
                    mem[mem[64] + 64] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 96] = block.timestamp
                    emit 0x2a21d1d2: stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512, _453, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = -arg5 + (arg4 * arg5) + idx
                    idx = idx + 1
                    continue 
        else:
            require arg5
            require arg5
            if investors.length % arg5 != arg6:
                revert with 0, 'length error'
            require arg4 >= 1
            require arg4 == page
            require arg1.length == arg6
            require arg2.length == arg6
            require arg3.length == arg6
            require -arg5 + (arg4 * arg5) + arg6 <= investors.length
            require page + 1 >= page
            page++
            if -arg5 + (arg4 * arg5) + arg6 != investors.length:
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                idx = 0
                while idx < arg6:
                    require idx < mem[96]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 + mem[(32 * idx) + 128] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 += mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[0] = 14
                    require idx < mem[96]
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = block.timestamp
                    emit 0x558b10e6: mem[mem[64]], block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 32] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x2ea9d712: mem[mem[64]], stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _444 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64]] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    mem[mem[64] + 32] = _444
                    mem[mem[64] + 64] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 96] = block.timestamp
                    emit 0x2a21d1d2: stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512, _444, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = -arg5 + (arg4 * arg5) + idx
                    idx = idx + 1
                    continue 
            else:
                require block.timestamp % 24 * 3600 <= block.timestamp
                require 8 * 3600 <= block.timestamp - (block.timestamp % 24 * 3600)
                require sub_99bf3266 >= 0
                sub_7931873b = block.timestamp + -(block.timestamp % 24 * 3600) + sub_99bf3266 - (8 * 3600)
                page = 1
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                idx = 0
                while idx < arg6:
                    require idx < mem[96]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 + mem[(32 * idx) + 128] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 += mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[0] = 14
                    require idx < mem[96]
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = block.timestamp
                    emit 0x558b10e6: mem[mem[64]], block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 32] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x2ea9d712: mem[mem[64]], stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _447 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64]] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    mem[mem[64] + 32] = _447
                    mem[mem[64] + 64] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 96] = block.timestamp
                    emit 0x2a21d1d2: stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512, _447, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = -arg5 + (arg4 * arg5) + idx
                    idx = idx + 1
                    continue 
    else:
        require msg.sender == sub_8dc12a16Address
        require sub_7931873b + sub_e6052940 >= sub_7931873b
        require sub_7931873b + sub_e6052940 <= block.timestamp
        require arg5 > 0
        require arg5
        if investors.length / arg5 >= arg4:
            require arg5 == arg6
            require arg4 >= 1
            require arg4 == page
            require arg1.length == arg6
            require arg2.length == arg6
            require arg3.length == arg6
            require -arg5 + (arg4 * arg5) + arg6 <= investors.length
            require page + 1 >= page
            page++
            if -arg5 + (arg4 * arg5) + arg6 != investors.length:
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                idx = 0
                while idx < arg6:
                    require idx < mem[96]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 + mem[(32 * idx) + 128] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 += mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[0] = 14
                    require idx < mem[96]
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = block.timestamp
                    emit 0x558b10e6: mem[mem[64]], block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 32] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x2ea9d712: mem[mem[64]], stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _462 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64]] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    mem[mem[64] + 32] = _462
                    mem[mem[64] + 64] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 96] = block.timestamp
                    emit 0x2a21d1d2: stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512, _462, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = -arg5 + (arg4 * arg5) + idx
                    idx = idx + 1
                    continue 
            else:
                require block.timestamp % 24 * 3600 <= block.timestamp
                require 8 * 3600 <= block.timestamp - (block.timestamp % 24 * 3600)
                require sub_99bf3266 >= 0
                sub_7931873b = block.timestamp + -(block.timestamp % 24 * 3600) + sub_99bf3266 - (8 * 3600)
                page = 1
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                idx = 0
                while idx < arg6:
                    require idx < mem[96]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 + mem[(32 * idx) + 128] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 += mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[0] = 14
                    require idx < mem[96]
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = block.timestamp
                    emit 0x558b10e6: mem[mem[64]], block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 32] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x2ea9d712: mem[mem[64]], stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _465 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64]] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    mem[mem[64] + 32] = _465
                    mem[mem[64] + 64] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 96] = block.timestamp
                    emit 0x2a21d1d2: stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512, _465, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = -arg5 + (arg4 * arg5) + idx
                    idx = idx + 1
                    continue 
        else:
            require arg5
            require arg5
            if investors.length % arg5 != arg6:
                revert with 0, 'length error'
            require arg4 >= 1
            require arg4 == page
            require arg1.length == arg6
            require arg2.length == arg6
            require arg3.length == arg6
            require -arg5 + (arg4 * arg5) + arg6 <= investors.length
            require page + 1 >= page
            page++
            if -arg5 + (arg4 * arg5) + arg6 != investors.length:
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                idx = 0
                while idx < arg6:
                    require idx < mem[96]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 + mem[(32 * idx) + 128] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 += mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[0] = 14
                    require idx < mem[96]
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = block.timestamp
                    emit 0x558b10e6: mem[mem[64]], block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 32] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x2ea9d712: mem[mem[64]], stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _456 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64]] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    mem[mem[64] + 32] = _456
                    mem[mem[64] + 64] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 96] = block.timestamp
                    emit 0x2a21d1d2: stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512, _456, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = -arg5 + (arg4 * arg5) + idx
                    idx = idx + 1
                    continue 
            else:
                require block.timestamp % 24 * 3600 <= block.timestamp
                require 8 * 3600 <= block.timestamp - (block.timestamp % 24 * 3600)
                require sub_99bf3266 >= 0
                sub_7931873b = block.timestamp + -(block.timestamp % 24 * 3600) + sub_99bf3266 - (8 * 3600)
                page = 1
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                idx = 0
                while idx < arg6:
                    require idx < mem[96]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 + mem[(32 * idx) + 128] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1024 += mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 + mem[(32 * idx) + (32 * arg1.length) + 160] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1280 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    require stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536
                    require -arg5 + (arg4 * arg5) + idx < investors.length
                    stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1536 += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[0] = 14
                    require idx < mem[96]
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = block.timestamp
                    emit 0x558b10e6: mem[mem[64]], block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 32] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x2ea9d712: mem[mem[64]], stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _459 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64]] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    mem[mem[64] + 32] = _459
                    mem[mem[64] + 64] = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    mem[mem[64] + 96] = block.timestamp
                    emit 0x2a21d1d2: stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512, _459, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792, block.timestamp, stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_512
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_1792
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_256
                    s = stor[(-11 * arg5) + (11 * arg4 * arg5) + (11 * idx) + ('name', 'investors', 14)].field_0
                    s = -arg5 + (arg4 * arg5) + idx
                    idx = idx + 1
                    continue 
}

function sub_d4afd1c7(?) payable {
    require not uint8(stor0.field_0)
    if msg.value < sub_61c719a5:
        revert with 0, 'Illegal amount'
    if msg.value > sub_bcb26e30:
        revert with 0, 'Illegal amount'
    require sub_61c719a5
    require sub_61c719a5
    if msg.value % sub_61c719a5:
        revert with 0, 'Illegal amount'
    require not Mask(48, 208, sub_4cd8de13[address(msg.sender)])
    require Mask(48, 208, arg1) != 0x73797374656d0000000000000000000000000000000000000000000000000000
    require not sub_317626e2[Mask(48, 208, arg1)]
    require Mask(48, 208, arg2) != 0x73797374656d0000000000000000000000000000000000000000000000000000
    require sub_317626e2[Mask(48, 208, arg2)]
    require sub_317626e2[Mask(48, 208, arg2)] < investors.length
    if sub_317626e2[Mask(48, 208, arg1)]:
        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
        require investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value >= investors[stor18[Mask(48, 208, arg1)]].field_512
        require 0 < sub_90c5a074.length
        if not uint256(sub_90c5a074.field_0):
            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                require 0 < sub_0a926786.length
                if not uint256(sub_0a926786.field_0):
                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                        require 0 < sub_04ab8747.length
                        if not uint256(sub_04ab8747.field_0):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_04ab8747.field_0)
                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                    else:
                        require 1 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_256):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_256)
                            require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                else:
                    require uint256(sub_0a926786.field_0)
                    require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_0a926786.field_0):
                        require 0 < sub_04ab8747.length
                        if not uint256(sub_04ab8747.field_0):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_04ab8747.field_0)
                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                    else:
                        require 1 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_256):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_256)
                            require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
            else:
                require 1 < sub_90c5a074.length
                if not uint256(sub_90c5a074.field_256):
                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 1
                    else:
                        require 0 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_0):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_0)
                            require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_0a926786.field_0):
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                else:
                    require uint256(sub_90c5a074.field_256)
                    require 10^18 * uint256(sub_90c5a074.field_256) / uint256(sub_90c5a074.field_256) == 10^18
                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_90c5a074.field_256):
                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 1
                    else:
                        require 0 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_0):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_0)
                            require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_0a926786.field_0):
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
        else:
            require uint256(sub_90c5a074.field_0)
            require 10^18 * uint256(sub_90c5a074.field_0) / uint256(sub_90c5a074.field_0) == 10^18
            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_90c5a074.field_0):
                require 0 < sub_0a926786.length
                if not uint256(sub_0a926786.field_0):
                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                        require 0 < sub_04ab8747.length
                        if not uint256(sub_04ab8747.field_0):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_04ab8747.field_0)
                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                    else:
                        require 1 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_256):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_256)
                            require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                else:
                    require uint256(sub_0a926786.field_0)
                    require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_0a926786.field_0):
                        require 0 < sub_04ab8747.length
                        if not uint256(sub_04ab8747.field_0):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_04ab8747.field_0)
                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                    else:
                        require 1 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_256):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_256)
                            require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
            else:
                require 1 < sub_90c5a074.length
                if not uint256(sub_90c5a074.field_256):
                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 1
                    else:
                        require 0 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_0):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_0)
                            require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_0a926786.field_0):
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                else:
                    require uint256(sub_90c5a074.field_256)
                    require 10^18 * uint256(sub_90c5a074.field_256) / uint256(sub_90c5a074.field_256) == 10^18
                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_90c5a074.field_256):
                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 1
                    else:
                        require 0 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_0):
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_0)
                            require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_0a926786.field_0):
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 0:
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 0:
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 0:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    require sub_317626e2[Mask(48, 208, arg1)] < investors.length
                                                    if investors[stor18[Mask(48, 208, arg1)]].field_512 + msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 0
                                                    else:
                                                        investors[stor18[Mask(48, 208, arg1)]].field_1792 = 3
        require sub_317626e2[Mask(48, 208, arg1)] < investors.length
        if investors[stor18[Mask(48, 208, arg1)]].field_512:
        else:
            investors[stor18[Mask(48, 208, arg1)]].field_2560 = block.timestamp
        investors[stor18[Mask(48, 208, arg1)]].field_512 += msg.value
        emit 0xaa67662b: Mask(48, 208, arg1), sub_317626e2[Mask(48, 208, arg1)], msg.value, Mask(48, 208, arg2), block.timestamp, msg.sender, investors[stor18[Mask(48, 208, arg2)]].field_0
    else:
        require 0 < sub_90c5a074.length
        if not uint256(sub_90c5a074.field_0):
            if msg.value < 0:
                require 0 < sub_0a926786.length
                if not uint256(sub_0a926786.field_0):
                    if msg.value < 0:
                        require 0 < sub_04ab8747.length
                        if not uint256(sub_04ab8747.field_0):
                            if msg.value < 0:
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 0:
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_04ab8747.field_0)
                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 0:
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                    else:
                        require 1 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_256):
                            if msg.value <= 0:
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_256)
                            require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                            if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                else:
                    require uint256(sub_0a926786.field_0)
                    require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                    if msg.value < 10^18 * uint256(sub_0a926786.field_0):
                        require 0 < sub_04ab8747.length
                        if not uint256(sub_04ab8747.field_0):
                            if msg.value < 0:
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 0:
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_04ab8747.field_0)
                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 0:
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                    else:
                        require 1 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_256):
                            if msg.value <= 0:
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_256)
                            require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                            if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
            else:
                require 1 < sub_90c5a074.length
                if not uint256(sub_90c5a074.field_256):
                    if msg.value <= 0:
                        investors.length++
                        investors[investors.length].field_0 = msg.sender
                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                        investors[investors.length].field_512 = msg.value
                        investors[investors.length].field_768 = 0
                        investors[investors.length].field_1024 = 0
                        investors[investors.length].field_1280 = 0
                        investors[investors.length].field_1536 = 0
                        investors[investors.length].field_1792 = 1
                    else:
                        require 0 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_0):
                            if msg.value < 0:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if msg.value <= 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_0)
                            require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                            if msg.value < 10^18 * uint256(sub_0a926786.field_0):
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if msg.value <= 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                else:
                    require uint256(sub_90c5a074.field_256)
                    require 10^18 * uint256(sub_90c5a074.field_256) / uint256(sub_90c5a074.field_256) == 10^18
                    if msg.value <= 10^18 * uint256(sub_90c5a074.field_256):
                        investors.length++
                        investors[investors.length].field_0 = msg.sender
                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                        investors[investors.length].field_512 = msg.value
                        investors[investors.length].field_768 = 0
                        investors[investors.length].field_1024 = 0
                        investors[investors.length].field_1280 = 0
                        investors[investors.length].field_1536 = 0
                        investors[investors.length].field_1792 = 1
                    else:
                        require 0 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_0):
                            if msg.value < 0:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if msg.value <= 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_0)
                            require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                            if msg.value < 10^18 * uint256(sub_0a926786.field_0):
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if msg.value <= 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
        else:
            require uint256(sub_90c5a074.field_0)
            require 10^18 * uint256(sub_90c5a074.field_0) / uint256(sub_90c5a074.field_0) == 10^18
            if msg.value < 10^18 * uint256(sub_90c5a074.field_0):
                require 0 < sub_0a926786.length
                if not uint256(sub_0a926786.field_0):
                    if msg.value < 0:
                        require 0 < sub_04ab8747.length
                        if not uint256(sub_04ab8747.field_0):
                            if msg.value < 0:
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 0:
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_04ab8747.field_0)
                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 0:
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                    else:
                        require 1 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_256):
                            if msg.value <= 0:
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_256)
                            require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                            if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                else:
                    require uint256(sub_0a926786.field_0)
                    require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                    if msg.value < 10^18 * uint256(sub_0a926786.field_0):
                        require 0 < sub_04ab8747.length
                        if not uint256(sub_04ab8747.field_0):
                            if msg.value < 0:
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 0:
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_04ab8747.field_0)
                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 0
                            else:
                                require 1 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_256):
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 0:
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_256)
                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                    investors.length++
                                    investors[investors.length].field_0 = msg.sender
                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                    investors[investors.length].field_512 = msg.value
                                    investors[investors.length].field_768 = 0
                                    investors[investors.length].field_1024 = 0
                                    investors[investors.length].field_1280 = 0
                                    investors[investors.length].field_1536 = 0
                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        investors[investors.length].field_1792 = 3
                    else:
                        require 1 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_256):
                            if msg.value <= 0:
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_256)
                            require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                            if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                investors.length++
                                investors[investors.length].field_0 = msg.sender
                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                investors[investors.length].field_512 = msg.value
                                investors[investors.length].field_768 = 0
                                investors[investors.length].field_1024 = 0
                                investors[investors.length].field_1280 = 0
                                investors[investors.length].field_1536 = 0
                                investors[investors.length].field_1792 = 2
                            else:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
            else:
                require 1 < sub_90c5a074.length
                if not uint256(sub_90c5a074.field_256):
                    if msg.value <= 0:
                        investors.length++
                        investors[investors.length].field_0 = msg.sender
                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                        investors[investors.length].field_512 = msg.value
                        investors[investors.length].field_768 = 0
                        investors[investors.length].field_1024 = 0
                        investors[investors.length].field_1280 = 0
                        investors[investors.length].field_1536 = 0
                        investors[investors.length].field_1792 = 1
                    else:
                        require 0 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_0):
                            if msg.value < 0:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if msg.value <= 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_0)
                            require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                            if msg.value < 10^18 * uint256(sub_0a926786.field_0):
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if msg.value <= 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                else:
                    require uint256(sub_90c5a074.field_256)
                    require 10^18 * uint256(sub_90c5a074.field_256) / uint256(sub_90c5a074.field_256) == 10^18
                    if msg.value <= 10^18 * uint256(sub_90c5a074.field_256):
                        investors.length++
                        investors[investors.length].field_0 = msg.sender
                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                        investors[investors.length].field_512 = msg.value
                        investors[investors.length].field_768 = 0
                        investors[investors.length].field_1024 = 0
                        investors[investors.length].field_1280 = 0
                        investors[investors.length].field_1536 = 0
                        investors[investors.length].field_1792 = 1
                    else:
                        require 0 < sub_0a926786.length
                        if not uint256(sub_0a926786.field_0):
                            if msg.value < 0:
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if msg.value <= 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                        else:
                            require uint256(sub_0a926786.field_0)
                            require 10^18 * uint256(sub_0a926786.field_0) / uint256(sub_0a926786.field_0) == 10^18
                            if msg.value < 10^18 * uint256(sub_0a926786.field_0):
                                require 0 < sub_04ab8747.length
                                if not uint256(sub_04ab8747.field_0):
                                    if msg.value < 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_04ab8747.field_0)
                                    require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                    if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 0
                                    else:
                                        require 1 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_256):
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 0:
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_256)
                                            require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                            investors.length++
                                            investors[investors.length].field_0 = msg.sender
                                            investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                            investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                            investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                            investors[investors.length].field_512 = msg.value
                                            investors[investors.length].field_768 = 0
                                            investors[investors.length].field_1024 = 0
                                            investors[investors.length].field_1280 = 0
                                            investors[investors.length].field_1536 = 0
                                            if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                investors[investors.length].field_1792 = 3
                            else:
                                require 1 < sub_0a926786.length
                                if not uint256(sub_0a926786.field_256):
                                    if msg.value <= 0:
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                else:
                                    require uint256(sub_0a926786.field_256)
                                    require 10^18 * uint256(sub_0a926786.field_256) / uint256(sub_0a926786.field_256) == 10^18
                                    if msg.value <= 10^18 * uint256(sub_0a926786.field_256):
                                        investors.length++
                                        investors[investors.length].field_0 = msg.sender
                                        investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                        investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                        investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                        investors[investors.length].field_512 = msg.value
                                        investors[investors.length].field_768 = 0
                                        investors[investors.length].field_1024 = 0
                                        investors[investors.length].field_1280 = 0
                                        investors[investors.length].field_1536 = 0
                                        investors[investors.length].field_1792 = 2
                                    else:
                                        require 0 < sub_04ab8747.length
                                        if not uint256(sub_04ab8747.field_0):
                                            if msg.value < 0:
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                        else:
                                            require uint256(sub_04ab8747.field_0)
                                            require 10^18 * uint256(sub_04ab8747.field_0) / uint256(sub_04ab8747.field_0) == 10^18
                                            if msg.value < 10^18 * uint256(sub_04ab8747.field_0):
                                                investors.length++
                                                investors[investors.length].field_0 = msg.sender
                                                investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                investors[investors.length].field_512 = msg.value
                                                investors[investors.length].field_768 = 0
                                                investors[investors.length].field_1024 = 0
                                                investors[investors.length].field_1280 = 0
                                                investors[investors.length].field_1536 = 0
                                                investors[investors.length].field_1792 = 0
                                            else:
                                                require 1 < sub_04ab8747.length
                                                if not uint256(sub_04ab8747.field_256):
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 0:
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
                                                else:
                                                    require uint256(sub_04ab8747.field_256)
                                                    require 10^18 * uint256(sub_04ab8747.field_256) / uint256(sub_04ab8747.field_256) == 10^18
                                                    investors.length++
                                                    investors[investors.length].field_0 = msg.sender
                                                    investors[investors.length].field_256 = investors[stor18[Mask(48, 208, arg2)]].field_0
                                                    investors[investors.length].field_416 = Mask(48, 208, arg1) >> 208
                                                    investors[investors.length].field_464 = Mask(48, 208, arg2) >> 208
                                                    investors[investors.length].field_512 = msg.value
                                                    investors[investors.length].field_768 = 0
                                                    investors[investors.length].field_1024 = 0
                                                    investors[investors.length].field_1280 = 0
                                                    investors[investors.length].field_1536 = 0
                                                    if msg.value > 10^18 * uint256(sub_04ab8747.field_256):
                                                        investors[investors.length].field_1792 = 0
                                                    else:
                                                        investors[investors.length].field_1792 = 3
        investors[investors.length].field_2048 = 1
        investors[investors.length].field_2304 = 0
        investors[investors.length].field_2560 = block.timestamp
        require 1 <= investors.length + 1
        sub_317626e2[Mask(48, 208, arg1)] = investors.length
        sub_4cd8de13[address(msg.sender)] = Mask(48, 208, arg1) >> 208
        emit 0xaa67662b: Mask(48, 208, arg1), investors.length, msg.value, Mask(48, 208, arg2), block.timestamp, msg.sender, investors[stor18[Mask(48, 208, arg2)]].field_0
    require sub_317626e2[Mask(48, 208, arg2)] < investors.length
    require investors[stor18[Mask(48, 208, arg2)]].field_768 + 1 >= investors[stor18[Mask(48, 208, arg2)]].field_768
    require sub_317626e2[Mask(48, 208, arg2)] < investors.length
    investors[stor18[Mask(48, 208, arg2)]].field_768++
}



}
