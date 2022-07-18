contract main {




// =====================  Runtime code  =====================


#
#  - getSwapInfo(uint256 arg1)
#
bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 176
uint128 stor0; offset 168
address owner;
mapping of struct swaps;
uint256 stor52;
array of struct sub_ff3357c8;
mapping of uint256 stor54;
mapping of uint256 stor55;
array of struct sub_0e850699;
mapping of uint256 stor57;
mapping of address sellerOf;
mapping of address sub_f749c92f;
mapping of uint8 stor60;
mapping of uint256 sub_7ef39c3d;
address sub_ae41ed8aAddress;
address sub_085cb072Address;
array of uint256 sub_c801dd40;
address oracleAddress;
mapping of uint256 sub_3e72d487;
uint8 stor67;
array of uint256 sub_df0d2734;
array of uint256 sub_1e224e3f;
array of uint256 stor31997345449574252472561286867836691613551392380036115619611668045310140188353;

function sub_085cb072(?) {
    return sub_085cb072Address
}

function sub_0e850699(?) {
    require arg2 < sub_0e850699[arg1].field_0
    return sub_0e850699[arg1][arg2].field_0
}

function sub_1e224e3f(?) {
    return sub_1e224e3f[arg1][0 len sub_1e224e3f[arg1].length]
}

function sub_39b300b7(?) {
    return sub_3e72d487[arg1]
}

function sub_3e72d487(?) {
    if oracleAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'function can only be called by racle'
    return sub_3e72d487[arg1]
}

function getSwap(uint256 arg1) {
    mem[832] = swaps[arg1][8].field_0
    idx = 832
    s = 0
    while swaps[arg1][8].length + 800 > idx:
        mem[idx + 32] = swaps[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if swaps[arg1].field_2560 <= 3:
        if swaps[arg1].field_2560 <= 3:
            return swaps[arg1].field_256, 
                   swaps[arg1].field_512,
                   swaps[arg1].field_768,
                   swaps[arg1].field_1024,
                   swaps[arg1].field_1280,
                   swaps[arg1].field_1536,
                   swaps[arg1].field_1792,
                   Array(len=swaps[arg1][8].length, data=mem[832 len swaps[arg1][8].length]),
                   swaps[arg1].field_2304,
                   swaps[arg1].field_2560
    revert
}

function sub_5ff4d41d(?) {
    return sellerOf[arg1]
}

function sub_7ef39c3d(?) {
    return sub_7ef39c3d[stor62][arg1]
}

function owner() {
    return owner
}

function oracleAddress() {
    return oracleAddress
}

function sub_ae41ed8a(?) {
    return sub_ae41ed8aAddress
}

function sub_c801dd40(?) {
    require arg1 < sub_c801dd40.length
    return sub_c801dd40[arg1]
}

function sub_da0ade50(?) {
    return sub_f749c92f[arg1]
}

function sub_df0d2734(?) {
    return sub_df0d2734[arg1][0 len sub_df0d2734[arg1].length]
}

function sellerOf(uint256 arg1) {
    return sellerOf[arg1]
}

function sub_e2ea6e39(?) {
    return bool(stor60[address(arg1)][arg2])
}

function swaps(uint256 arg1) {
    mem[128] = swaps[arg1][8].field_0
    idx = 128
    s = 0
    while swaps[arg1][8].length + 96 > idx:
        mem[idx + 32] = swaps[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if swaps[arg1].field_2560 <= 3:
        return swaps[arg1].field_0, 
               swaps[arg1].field_256,
               swaps[arg1].field_512,
               swaps[arg1].field_768,
               swaps[arg1].field_1024,
               swaps[arg1].field_1280,
               swaps[arg1].field_1536,
               swaps[arg1].field_1792,
               Array(len=swaps[arg1][8].length, data=mem[128 len swaps[arg1][8].length]),
               swaps[arg1].field_2304,
               swaps[arg1].field_2560
    revert
}

function sub_f749c92f(?) {
    return sub_f749c92f[arg1]
}

function sub_ff3357c8(?) {
    require arg2 < sub_ff3357c8[arg1].field_0
    return sub_ff3357c8[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function isValid(uint256 arg1) {
    return (block.timestamp < swaps[arg1].field_2304)
}

function sub_29d8c551(?) {
    require msg.sender == owner
    sub_085cb072Address = arg1
}

function sub_67f74486(?) {
    require msg.sender == owner
    sub_ae41ed8aAddress = arg1
}

function sub_c9bf9e55(?) {
    require not stor67
    oracleAddress = arg1
    stor67 = 1
}

function changeOracleAddress(address arg1) {
    require msg.sender == owner
    oracleAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_43d00e93(?) {
    if oracleAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'function can only be called by racle'
    sub_3e72d487[arg2] = arg1
}

function isApproved(uint256 arg1) {
    require ext_code.size(sub_ae41ed8aAddress)
    call sub_ae41ed8aAddress.getApproved(uint256 arg1) with:
         gas gas_remaining wei
        args swaps[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (this.address == ext_call.return_data[12 len 20])
}

function sub_d82d1981(?) {
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0, 'Contract instance has already been initialized'
    sub_ae41ed8aAddress = arg1
    oracleAddress = arg2
    uint8(stor0.field_160) = 1
    Mask(88, 0, stor0.field_168) = Mask(88, 0, bool(uint8(stor0.field_168)))
    Mask(80, 0, stor0.field_176) = 0
    Mask(80, 0, stor0.field_176) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
}

function sub_cec1460b(?) {
    if oracleAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'function can only be called by racle'
    if not arg2:
        revert with 0, 'Buyer address must not be 0x0'
    swaps[arg1].field_1024 = arg2
    swaps[arg1].field_2560 = 1
    sub_ff3357c8[address(arg2)].field_0++
    sub_ff3357c8[address(arg2)][sub_ff3357c8[address(arg2)].field_0].field_0 = arg1
    stor54[arg1] = sub_ff3357c8[address(arg2)].field_0
    stor60[address(arg2)][arg1] = 1
    require ext_code.size(sub_ae41ed8aAddress)
    call sub_ae41ed8aAddress.0x23b872dd with:
         gas gas_remaining wei
        args swaps[arg1].field_768, this.address, swaps[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e7618487(?) {
    if sub_ff3357c8[address(arg1)].field_0:
        mem[128] = sub_ff3357c8[address(arg1)].field_0
        if (32 * sub_ff3357c8[address(arg1)].field_0) + 32 > 64:
            mem[160] = sub_ff3357c8[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * sub_ff3357c8[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = sub_ff3357c8[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_ff3357c8[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_ff3357c8[address(arg1)].field_0) + 160] = sub_ff3357c8[address(arg1)].field_0
    mem[(32 * sub_ff3357c8[address(arg1)].field_0) + 192 len floor32(sub_ff3357c8[address(arg1)].field_0)] = mem[128 len floor32(sub_ff3357c8[address(arg1)].field_0)]
    return memory
      from (32 * sub_ff3357c8[address(arg1)].field_0) + 128
       len (96 * sub_ff3357c8[address(arg1)].field_0) + 64
}

function sub_6dc724b8(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    sub_c801dd40.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_c801dd40.length > idx:
            sub_c801dd40[idx] = 0
            idx = idx + 1
            continue 
    else:
        if 32 * arg1.length <= 0:
            idx = 0
            while sub_c801dd40.length > idx:
                sub_c801dd40[idx] = 0
                idx = idx + 1
                continue 
        else:
            sub_c801dd40 = mem[128]
            s = 1
            idx = 160
            while (32 * arg1.length) + 128 > idx:
                sub_c801dd40[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, (32 * arg1.length) - 1) >> 5) + 1
            while sub_c801dd40.length > idx:
                sub_c801dd40[idx] = 0
                idx = idx + 1
                continue 
}

function sub_e54f4170(?) {
    if not sub_0e850699[address(arg1)].field_0:
        mem[(32 * sub_0e850699[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_0e850699[address(arg1)].field_0) + 160] = sub_0e850699[address(arg1)].field_0
        mem[(32 * sub_0e850699[address(arg1)].field_0) + 192 len floor32(sub_0e850699[address(arg1)].field_0)] = mem[128 len floor32(sub_0e850699[address(arg1)].field_0)]
        return memory
          from (32 * sub_0e850699[address(arg1)].field_0) + 128
           len (96 * sub_0e850699[address(arg1)].field_0) + 64
    mem[128] = sub_0e850699[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_0e850699[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_0e850699[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_0e850699[address(arg1)].field_0) + 192 len floor32(sub_0e850699[address(arg1)].field_0)] = mem[128 len floor32(sub_0e850699[address(arg1)].field_0)]
    return Array(len=sub_0e850699[address(arg1)].field_0, data=mem[128 len floor32(sub_0e850699[address(arg1)].field_0)], mem[(32 * sub_0e850699[address(arg1)].field_0) + floor32(sub_0e850699[address(arg1)].field_0) + 192 len (32 * sub_0e850699[address(arg1)].field_0) - floor32(sub_0e850699[address(arg1)].field_0)]), 
}

function sub_3796ecfe(?) {
    if sub_7ef39c3d[stor62][arg5]:
        revert with 0, 'this token is already for sale'
    if not arg1:
        revert with 0, 'Owner address must not be 0x0'
    if not arg2:
        revert with 0, 'Seller address must not be 0x0'
    swaps[stor52 + 1].field_0 = uint64(block.timestamp)
    swaps[stor52 + 1].field_256 = stor52 + 1
    swaps[stor52 + 1].field_512 = arg1
    swaps[stor52 + 1].field_768 = arg2
    swaps[stor52 + 1].field_1024 = 0
    swaps[stor52 + 1].field_1280 = 0
    swaps[stor52 + 1].field_1280 = arg5
    swaps[stor52 + 1].field_1536 = arg6
    swaps[stor52 + 1].field_1792 = arg7
    swaps[stor52 + 1][8][].field_0 = Array(len=arg8.length, data=arg8[all])
    swaps[stor52 + 1].field_2304 = arg9
    swaps[stor52 + 1].field_2560 = 0
    swaps[stor52 + 1].field_2816 = 0
    stor52++
    stor46BD[stor52] = stor52 + 1
    sellerOf[stor52 + 1] = arg2
    sub_df0d2734[stor52 + 1][] = Array(len=arg3.length, data=arg3[all])
    sub_1e224e3f[stor52 + 1][] = Array(len=arg4.length, data=arg4[all])
    sub_ff3357c8[address(arg2)].field_0++
    sub_ff3357c8[address(arg2)][sub_ff3357c8[address(arg2)].field_0].field_0 = stor52 + 1
    stor55[stor52 + 1] = sub_ff3357c8[address(arg2)].field_0
    sub_0e850699[address(arg1)].field_0++
    sub_0e850699[address(arg1)][sub_0e850699[address(arg1)].field_0].field_0 = stor52 + 1
    stor57[stor52 + 1] = sub_0e850699[address(arg1)].field_0
    sub_7ef39c3d[stor62][arg5] = stor52 + 1
    emit 0x2ad41df8: block.timestamp << 192, stor52 + 1, address(arg1), address(arg2), arg5, arg6, address(arg7), Array(len=arg8.length, data=arg8[all]), arg9
}

function isClaimed(uint256 arg1) {
    mem[64] = 256
    mem[96 len 160] = code.data[14630 len 160]
    s = 96
    s = 0
    s = 96
    s = 0
    s = 96
    s = 0
    s = 0
    s = 96
    s = 0
    idx = 0
    while idx < sub_c801dd40.length:
        mem[0] = 64
        mem[mem[64]] = 0x28bf7faa00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_c801dd40[idx]
        mem[mem[64] + 36] = arg1
        require ext_code.size(sub_085cb072Address)
        call sub_085cb072Address.0x28bf7faa with:
             gas gas_remaining wei
            args sub_c801dd40[idx], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 416
        require mem[_28 + 32] <= 4294967296
        require mem[_28 + 32] + 32 <= return_data.size
        require return_data.size >= mem[_28 + mem[_28 + 32]] + mem[_28 + 32] + 32 and mem[_28 + mem[_28 + 32]] <= 4294967296
        require mem[_28 + 128] <= 4294967296
        require mem[_28 + 128] + 32 <= return_data.size
        require return_data.size >= mem[_28 + mem[_28 + 128]] + mem[_28 + 128] + 32 and mem[_28 + mem[_28 + 128]] <= 4294967296
        require mem[_28 + 192] <= 4294967296
        require mem[_28 + 192] + 32 <= return_data.size
        require return_data.size >= mem[_28 + mem[_28 + 192]] + mem[_28 + 192] + 32 and mem[_28 + mem[_28 + 192]] <= 4294967296
        if 0 == mem[_28 + 30 len 2]:
            if 200 == mem[_28 + 160]:
                s = _28 + 256
                s = mem[_28 + 224]
                s = _28 + mem[_28 + 192]
                s = mem[_28 + 160]
                s = _28 + mem[_28 + 128]
                s = mem[_28 + 96]
                s = mem[_28 + 64]
                s = _28 + mem[_28 + 32]
                s = mem[_28]
                idx = idx + 1
                continue 
            else:
                return 0
        else:
            return 0
    return 1
}

function cancel(uint256 arg1) {
    require block.timestamp < swaps[arg1].field_2304
    require ext_code.size(sub_ae41ed8aAddress)
    call sub_ae41ed8aAddress.0x6352211e with:
         gas gas_remaining wei
        args swaps[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if swaps[arg1].field_512 != msg.sender:
        require ext_call.return_data[12 len 20] == msg.sender
    swaps[arg1].field_2560 = 3
    require 1 <= sub_ff3357c8[stor51[arg1].field_768].field_0
    require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
    require stor55[arg1] < sub_ff3357c8[stor51[arg1].field_768].field_0
    sub_ff3357c8[stor51[arg1].field_768][stor55[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0
    require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
    sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0 = 0
    sub_ff3357c8[stor51[arg1].field_768].field_0--
    if sub_ff3357c8[stor51[arg1].field_768].field_0 > sub_ff3357c8[stor51[arg1].field_768].field_0 - 1:
        idx = sub_ff3357c8[stor51[arg1].field_768].field_0 - 1
        while sub_ff3357c8[stor51[arg1].field_768].field_0 > idx:
            sub_ff3357c8[stor51[arg1].field_768][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor55[arg1] = 0
    stor55[stor53[stor51[arg1].field_768][stor53[stor51[arg1].field_768].field_0].field_0] = stor55[arg1]
    require 1 <= sub_0e850699[stor51[arg1].field_512].field_0
    require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
    require stor57[arg1] < sub_0e850699[stor51[arg1].field_512].field_0
    sub_0e850699[stor51[arg1].field_512][stor57[arg1]].field_0 = sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0
    require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
    sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0 = 0
    sub_0e850699[stor51[arg1].field_512].field_0--
    if sub_0e850699[stor51[arg1].field_512].field_0 > sub_0e850699[stor51[arg1].field_512].field_0 - 1:
        idx = sub_0e850699[stor51[arg1].field_512].field_0 - 1
        while sub_0e850699[stor51[arg1].field_512].field_0 > idx:
            sub_0e850699[stor51[arg1].field_512][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor57[arg1] = 0
    stor57[stor56[stor51[arg1].field_512][stor56[stor51[arg1].field_512].field_0].field_0] = stor57[arg1]
    sub_7ef39c3d[stor62][stor51[arg1].field_1280] = 0
    swaps[arg1].field_0 = 0
    swaps[arg1].field_256 = 0
    swaps[arg1].field_512 = 0
    swaps[arg1].field_768 = 0
    swaps[arg1].field_1024 = 0
    swaps[arg1].field_1280 = 0
    swaps[arg1].field_1536 = 0
    swaps[arg1].field_1792 = 0
    swaps[arg1].field_2048 = 0
    if 31 < swaps[arg1][8].length:
        idx = 0
        while swaps[arg1][8].length + 31 / 32 > idx:
            swaps[arg1][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    swaps[arg1].field_2304 = 0
    swaps[arg1].field_2560 = 0
    emit 0x2be346d5: arg1, swaps[arg1].field_768, 0, swaps[arg1].field_512, swaps[arg1].field_1280
}

function closeSwap(uint256 arg1) {
    require block.timestamp >= swaps[arg1].field_2304
    if swaps[arg1].field_512 != msg.sender:
        if swaps[arg1].field_1024 != msg.sender:
            require swaps[arg1].field_768 == msg.sender
    swaps[arg1].field_2560 = 3
    require 1 <= sub_ff3357c8[stor51[arg1].field_768].field_0
    require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
    require stor55[arg1] < sub_ff3357c8[stor51[arg1].field_768].field_0
    sub_ff3357c8[stor51[arg1].field_768][stor55[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0
    require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
    sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0 = 0
    sub_ff3357c8[stor51[arg1].field_768].field_0--
    if sub_ff3357c8[stor51[arg1].field_768].field_0 > sub_ff3357c8[stor51[arg1].field_768].field_0 - 1:
        idx = sub_ff3357c8[stor51[arg1].field_768].field_0 - 1
        while sub_ff3357c8[stor51[arg1].field_768].field_0 > idx:
            sub_ff3357c8[stor51[arg1].field_768][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor55[arg1] = 0
    stor55[stor53[stor51[arg1].field_768][stor53[stor51[arg1].field_768].field_0].field_0] = stor55[arg1]
    require 1 <= sub_ff3357c8[stor51[arg1].field_1024].field_0
    require sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_1024].field_0
    require stor54[arg1] < sub_ff3357c8[stor51[arg1].field_1024].field_0
    sub_ff3357c8[stor51[arg1].field_1024][stor54[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_1024][sub_ff3357c8[stor51[arg1].field_1024].field_0].field_0
    require sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_1024].field_0
    sub_ff3357c8[stor51[arg1].field_1024][sub_ff3357c8[stor51[arg1].field_1024].field_0].field_0 = 0
    sub_ff3357c8[stor51[arg1].field_1024].field_0--
    if sub_ff3357c8[stor51[arg1].field_1024].field_0 > sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1:
        idx = sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1
        while sub_ff3357c8[stor51[arg1].field_1024].field_0 > idx:
            sub_ff3357c8[stor51[arg1].field_1024][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor54[arg1] = 0
    stor54[stor53[stor51[arg1].field_1024][stor53[stor51[arg1].field_1024].field_0].field_0] = stor54[arg1]
    require 1 <= sub_0e850699[stor51[arg1].field_512].field_0
    require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
    require stor57[arg1] < sub_0e850699[stor51[arg1].field_512].field_0
    sub_0e850699[stor51[arg1].field_512][stor57[arg1]].field_0 = sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0
    require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
    sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0 = 0
    sub_0e850699[stor51[arg1].field_512].field_0--
    if sub_0e850699[stor51[arg1].field_512].field_0 > sub_0e850699[stor51[arg1].field_512].field_0 - 1:
        idx = sub_0e850699[stor51[arg1].field_512].field_0 - 1
        while sub_0e850699[stor51[arg1].field_512].field_0 > idx:
            sub_0e850699[stor51[arg1].field_512][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor57[arg1] = 0
    stor57[stor56[stor51[arg1].field_512][stor56[stor51[arg1].field_512].field_0].field_0] = stor57[arg1]
    sub_7ef39c3d[stor62][stor51[arg1].field_1280] = 0
    swaps[arg1].field_0 = 0
    swaps[arg1].field_256 = 0
    swaps[arg1].field_512 = 0
    swaps[arg1].field_768 = 0
    swaps[arg1].field_1024 = 0
    swaps[arg1].field_1280 = 0
    swaps[arg1].field_1536 = 0
    swaps[arg1].field_1792 = 0
    swaps[arg1].field_2048 = 0
    if 31 < swaps[arg1][8].length:
        idx = 0
        while swaps[arg1][8].length + 31 / 32 > idx:
            swaps[arg1][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    swaps[arg1].field_2304 = 0
    swaps[arg1].field_2560 = 0
    emit 0x2be346d5: arg1, swaps[arg1].field_768, swaps[arg1].field_1024, swaps[arg1].field_512, swaps[arg1].field_1280
}

function sub_b7077e20(?) {
    if oracleAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'function can only be called by racle'
    swaps[arg1].field_2560 = 3
    require ext_code.size(sub_ae41ed8aAddress)
    call sub_ae41ed8aAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, swaps[arg1].field_768, swaps[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 <= sub_ff3357c8[stor51[arg1].field_768].field_0
    require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
    require stor55[arg1] < sub_ff3357c8[stor51[arg1].field_768].field_0
    sub_ff3357c8[stor51[arg1].field_768][stor55[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0
    require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
    sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0 = 0
    sub_ff3357c8[stor51[arg1].field_768].field_0--
    if sub_ff3357c8[stor51[arg1].field_768].field_0 > sub_ff3357c8[stor51[arg1].field_768].field_0 - 1:
        idx = sub_ff3357c8[stor51[arg1].field_768].field_0 - 1
        while sub_ff3357c8[stor51[arg1].field_768].field_0 > idx:
            sub_ff3357c8[stor51[arg1].field_768][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor55[arg1] = 0
    stor55[stor53[stor51[arg1].field_768][stor53[stor51[arg1].field_768].field_0].field_0] = stor55[arg1]
    require 1 <= sub_0e850699[stor51[arg1].field_512].field_0
    require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
    require stor57[arg1] < sub_0e850699[stor51[arg1].field_512].field_0
    sub_0e850699[stor51[arg1].field_512][stor57[arg1]].field_0 = sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0
    require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
    sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0 = 0
    sub_0e850699[stor51[arg1].field_512].field_0--
    if sub_0e850699[stor51[arg1].field_512].field_0 > sub_0e850699[stor51[arg1].field_512].field_0 - 1:
        idx = sub_0e850699[stor51[arg1].field_512].field_0 - 1
        while sub_0e850699[stor51[arg1].field_512].field_0 > idx:
            sub_0e850699[stor51[arg1].field_512][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor57[arg1] = 0
    stor57[stor56[stor51[arg1].field_512][stor56[stor51[arg1].field_512].field_0].field_0] = stor57[arg1]
    require 1 <= sub_ff3357c8[stor51[arg1].field_1024].field_0
    require sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_1024].field_0
    require stor54[arg1] < sub_ff3357c8[stor51[arg1].field_1024].field_0
    sub_ff3357c8[stor51[arg1].field_1024][stor54[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_1024][sub_ff3357c8[stor51[arg1].field_1024].field_0].field_0
    require sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_1024].field_0
    sub_ff3357c8[stor51[arg1].field_1024][sub_ff3357c8[stor51[arg1].field_1024].field_0].field_0 = 0
    sub_ff3357c8[stor51[arg1].field_1024].field_0--
    if sub_ff3357c8[stor51[arg1].field_1024].field_0 > sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1:
        idx = sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1
        while sub_ff3357c8[stor51[arg1].field_1024].field_0 > idx:
            sub_ff3357c8[stor51[arg1].field_1024][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor54[arg1] = 0
    stor54[stor53[stor51[arg1].field_1024][stor53[stor51[arg1].field_1024].field_0].field_0] = stor54[arg1]
    sub_7ef39c3d[stor62][stor51[arg1].field_1280] = 0
    swaps[arg1].field_0 = 0
    swaps[arg1].field_256 = 0
    swaps[arg1].field_512 = 0
    swaps[arg1].field_768 = 0
    swaps[arg1].field_1024 = 0
    swaps[arg1].field_1280 = 0
    swaps[arg1].field_1536 = 0
    swaps[arg1].field_1792 = 0
    swaps[arg1].field_2048 = 0
    if 31 < swaps[arg1][8].length:
        idx = 0
        while swaps[arg1][8].length + 31 / 32 > idx:
            swaps[arg1][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    swaps[arg1].field_2304 = 0
    swaps[arg1].field_2560 = 0
    emit 0x2be346d5: arg1, swaps[arg1].field_768, 0, swaps[arg1].field_512, swaps[arg1].field_1280
}

function sub_07b609b0(?) {
    if oracleAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'function can only be called by racle'
    mem[0] = arg1
    mem[32] = 51
    if not swaps[arg1].field_1024:
        revert with 0, 'Buyer address must not be 0x0'
    mem[64] = 256
    mem[96 len 160] = code.data[14630 len 160]
    s = 96
    s = 0
    s = 96
    s = 0
    s = 96
    s = 0
    s = 0
    s = 96
    s = 0
    idx = 0
    while idx < sub_c801dd40.length:
        mem[0] = 64
        mem[mem[64]] = 0x28bf7faa00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_c801dd40[idx]
        mem[mem[64] + 36] = swaps[arg1].field_1280
        require ext_code.size(sub_085cb072Address)
        call sub_085cb072Address.0x28bf7faa with:
             gas gas_remaining wei
            args sub_c801dd40[idx], swaps[arg1].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _166 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 416
        require mem[_166 + 32] <= 4294967296
        require mem[_166 + 32] + 32 <= return_data.size
        require return_data.size >= mem[_166 + mem[_166 + 32]] + mem[_166 + 32] + 32 and mem[_166 + mem[_166 + 32]] <= 4294967296
        require mem[_166 + 128] <= 4294967296
        require mem[_166 + 128] + 32 <= return_data.size
        require return_data.size >= mem[_166 + mem[_166 + 128]] + mem[_166 + 128] + 32 and mem[_166 + mem[_166 + 128]] <= 4294967296
        require mem[_166 + 192] <= 4294967296
        require mem[_166 + 192] + 32 <= return_data.size
        require return_data.size >= mem[_166 + mem[_166 + 192]] + mem[_166 + 192] + 32 and mem[_166 + mem[_166 + 192]] <= 4294967296
        if mem[_166 + 30 len 2] != 0:
            revert with 0, 'Token has not been claimed as valid'
        if mem[_166 + 160] != 200:
            revert with 0, 'Token has not been claimed as valid'
        s = _166 + 256
        s = mem[_166 + 224]
        s = _166 + mem[_166 + 192]
        s = mem[_166 + 160]
        s = _166 + mem[_166 + 128]
        s = mem[_166 + 96]
        s = mem[_166 + 64]
        s = _166 + mem[_166 + 32]
        s = mem[_166]
        idx = idx + 1
        continue 
    require ext_code.size(sub_ae41ed8aAddress)
    call sub_ae41ed8aAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, swaps[arg1].field_1024, swaps[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    swaps[arg1].field_2560 = 2
    require 1 <= sub_ff3357c8[stor51[arg1].field_768].field_0
    require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
    require stor55[arg1] < sub_ff3357c8[stor51[arg1].field_768].field_0
    sub_ff3357c8[stor51[arg1].field_768][stor55[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0
    require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
    sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0 = 0
    sub_ff3357c8[stor51[arg1].field_768].field_0--
    if sub_ff3357c8[stor51[arg1].field_768].field_0 > sub_ff3357c8[stor51[arg1].field_768].field_0 - 1:
        idx = sub_ff3357c8[stor51[arg1].field_768].field_0 - 1
        while sub_ff3357c8[stor51[arg1].field_768].field_0 > idx:
            sub_ff3357c8[stor51[arg1].field_768][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor55[arg1] = 0
    stor55[stor53[stor51[arg1].field_768][stor53[stor51[arg1].field_768].field_0].field_0] = stor55[arg1]
    require 1 <= sub_ff3357c8[stor51[arg1].field_1024].field_0
    require sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_1024].field_0
    require stor54[arg1] < sub_ff3357c8[stor51[arg1].field_1024].field_0
    sub_ff3357c8[stor51[arg1].field_1024][stor54[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_1024][sub_ff3357c8[stor51[arg1].field_1024].field_0].field_0
    require sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_1024].field_0
    sub_ff3357c8[stor51[arg1].field_1024][sub_ff3357c8[stor51[arg1].field_1024].field_0].field_0 = 0
    sub_ff3357c8[stor51[arg1].field_1024].field_0--
    if sub_ff3357c8[stor51[arg1].field_1024].field_0 > sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1:
        idx = sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1
        while sub_ff3357c8[stor51[arg1].field_1024].field_0 > idx:
            sub_ff3357c8[stor51[arg1].field_1024][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor54[arg1] = 0
    stor54[stor53[stor51[arg1].field_1024][stor53[stor51[arg1].field_1024].field_0].field_0] = stor54[arg1]
    require 1 <= sub_0e850699[stor51[arg1].field_512].field_0
    require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
    require stor57[arg1] < sub_0e850699[stor51[arg1].field_512].field_0
    sub_0e850699[stor51[arg1].field_512][stor57[arg1]].field_0 = sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0
    require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
    sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0 = 0
    sub_0e850699[stor51[arg1].field_512].field_0--
    if sub_0e850699[stor51[arg1].field_512].field_0 > sub_0e850699[stor51[arg1].field_512].field_0 - 1:
        idx = sub_0e850699[stor51[arg1].field_512].field_0 - 1
        while sub_0e850699[stor51[arg1].field_512].field_0 > idx:
            sub_0e850699[stor51[arg1].field_512][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor57[arg1] = 0
    stor57[stor56[stor51[arg1].field_512][stor56[stor51[arg1].field_512].field_0].field_0] = stor57[arg1]
    sub_7ef39c3d[stor62][stor51[arg1].field_1280] = 0
    emit 0x795237ce: arg1, swaps[arg1].field_768, swaps[arg1].field_1024, swaps[arg1].field_512, swaps[arg1].field_1280, swaps[arg1].field_1536
}

function sub_0c822e8b(?) {
    require block.timestamp < swaps[arg1].field_2304
    require msg.sender == sellerOf[arg1]
    mem[0] = arg1
    mem[32] = 51
    if not swaps[arg1].field_768:
        revert with 0, 'Seller address must not be 0x0'
    if not swaps[arg1].field_1024:
        revert with 0, 'Buyer address must not be 0x0'
    require ext_code.size(sub_ae41ed8aAddress)
    call sub_ae41ed8aAddress.0x6352211e with:
         gas gas_remaining wei
        args swaps[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != swaps[arg1].field_768:
        revert with 0, 'Seller must be the NFT owner'
    mem[64] = 256
    mem[96 len 160] = code.data[14630 len 160]
    s = 96
    s = 0
    s = 96
    s = 0
    s = 96
    s = 0
    s = 0
    s = 96
    s = 0
    idx = 0
    while idx < sub_c801dd40.length:
        mem[0] = 64
        mem[mem[64]] = 0x28bf7faa00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_c801dd40[idx]
        mem[mem[64] + 36] = swaps[arg1].field_1280
        require ext_code.size(sub_085cb072Address)
        call sub_085cb072Address.0x28bf7faa with:
             gas gas_remaining wei
            args sub_c801dd40[idx], swaps[arg1].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 416
        require mem[_179 + 32] <= 4294967296
        require mem[_179 + 32] + 32 <= return_data.size
        require return_data.size >= mem[_179 + mem[_179 + 32]] + mem[_179 + 32] + 32 and mem[_179 + mem[_179 + 32]] <= 4294967296
        require mem[_179 + 128] <= 4294967296
        require mem[_179 + 128] + 32 <= return_data.size
        require return_data.size >= mem[_179 + mem[_179 + 128]] + mem[_179 + 128] + 32 and mem[_179 + mem[_179 + 128]] <= 4294967296
        require mem[_179 + 192] <= 4294967296
        require mem[_179 + 192] + 32 <= return_data.size
        require return_data.size >= mem[_179 + mem[_179 + 192]] + mem[_179 + 192] + 32 and mem[_179 + mem[_179 + 192]] <= 4294967296
        if mem[_179 + 30 len 2] != 0:
            revert with 0, 'Token has not been claimed as valid'
        if mem[_179 + 160] != 200:
            revert with 0, 'Token has not been claimed as valid'
        s = _179 + 256
        s = mem[_179 + 224]
        s = _179 + mem[_179 + 192]
        s = mem[_179 + 160]
        s = _179 + mem[_179 + 128]
        s = mem[_179 + 96]
        s = mem[_179 + 64]
        s = _179 + mem[_179 + 32]
        s = mem[_179]
        idx = idx + 1
        continue 
    if not stor60[stor51[arg1].field_1024][arg1]:
        revert with 0, 'Swap has not been approved by buyer'
    require ext_code.size(sub_ae41ed8aAddress)
    call sub_ae41ed8aAddress.0x23b872dd with:
         gas gas_remaining wei
        args swaps[arg1].field_768, swaps[arg1].field_1024, swaps[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(swaps[arg1].field_1792)
    call swaps[arg1].field_1792.0x23b872dd with:
         gas gas_remaining wei
        args swaps[arg1].field_1024, swaps[arg1].field_768, swaps[arg1].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    swaps[arg1].field_2560 = 2
    require 1 <= sub_ff3357c8[stor51[arg1].field_768].field_0
    require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
    require stor55[arg1] < sub_ff3357c8[stor51[arg1].field_768].field_0
    sub_ff3357c8[stor51[arg1].field_768][stor55[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0
    require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
    sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0 = 0
    sub_ff3357c8[stor51[arg1].field_768].field_0--
    if sub_ff3357c8[stor51[arg1].field_768].field_0 > sub_ff3357c8[stor51[arg1].field_768].field_0 - 1:
        idx = sub_ff3357c8[stor51[arg1].field_768].field_0 - 1
        while sub_ff3357c8[stor51[arg1].field_768].field_0 > idx:
            sub_ff3357c8[stor51[arg1].field_768][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor55[arg1] = 0
    stor55[stor53[stor51[arg1].field_768][stor53[stor51[arg1].field_768].field_0].field_0] = stor55[arg1]
    require 1 <= sub_ff3357c8[stor51[arg1].field_1024].field_0
    require sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_1024].field_0
    require stor54[arg1] < sub_ff3357c8[stor51[arg1].field_1024].field_0
    sub_ff3357c8[stor51[arg1].field_1024][stor54[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_1024][sub_ff3357c8[stor51[arg1].field_1024].field_0].field_0
    require sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_1024].field_0
    sub_ff3357c8[stor51[arg1].field_1024][sub_ff3357c8[stor51[arg1].field_1024].field_0].field_0 = 0
    sub_ff3357c8[stor51[arg1].field_1024].field_0--
    if sub_ff3357c8[stor51[arg1].field_1024].field_0 > sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1:
        idx = sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1
        while sub_ff3357c8[stor51[arg1].field_1024].field_0 > idx:
            sub_ff3357c8[stor51[arg1].field_1024][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor54[arg1] = 0
    stor54[stor53[stor51[arg1].field_1024][stor53[stor51[arg1].field_1024].field_0].field_0] = stor54[arg1]
    require 1 <= sub_0e850699[stor51[arg1].field_512].field_0
    require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
    require stor57[arg1] < sub_0e850699[stor51[arg1].field_512].field_0
    sub_0e850699[stor51[arg1].field_512][stor57[arg1]].field_0 = sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0
    require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
    sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0 = 0
    sub_0e850699[stor51[arg1].field_512].field_0--
    if sub_0e850699[stor51[arg1].field_512].field_0 > sub_0e850699[stor51[arg1].field_512].field_0 - 1:
        idx = sub_0e850699[stor51[arg1].field_512].field_0 - 1
        while sub_0e850699[stor51[arg1].field_512].field_0 > idx:
            sub_0e850699[stor51[arg1].field_512][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor57[arg1] = 0
    stor57[stor56[stor51[arg1].field_512][stor56[stor51[arg1].field_512].field_0].field_0] = stor57[arg1]
    sub_7ef39c3d[stor62][stor51[arg1].field_1280] = 0
    emit 0x795237ce: arg1, swaps[arg1].field_768, swaps[arg1].field_1024, swaps[arg1].field_512, swaps[arg1].field_1280, swaps[arg1].field_1536
}

function sub_f750b788(?) {
    require ext_code.size(swaps[arg1].field_1792)
    call swaps[arg1].field_1792.allowance(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= swaps[arg1].field_1536
    require not swaps[arg1].field_1024
    swaps[arg1].field_1024 = msg.sender or Mask(96, 160, swaps[arg1].field_1024)
    sub_ff3357c8[address(msg.sender)].field_0++
    sub_ff3357c8[address(msg.sender)][sub_ff3357c8[address(msg.sender)].field_0].field_0 = arg1
    stor54[arg1] = sub_ff3357c8[address(msg.sender)].field_0
    stor60[msg.sender][arg1] = uint8(arg2)
    require ext_code.size(sub_ae41ed8aAddress)
    call sub_ae41ed8aAddress.getApproved(uint256 arg1) with:
         gas gas_remaining wei
        args swaps[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if this.address == ext_call.return_data[12 len 20]:
        mem[0] = arg1
        mem[32] = 51
        if not swaps[arg1].field_768:
            revert with 0, 'Seller address must not be 0x0'
        if not swaps[arg1].field_1024:
            revert with 0, 'Buyer address must not be 0x0'
        require ext_code.size(sub_ae41ed8aAddress)
        call sub_ae41ed8aAddress.0x6352211e with:
             gas gas_remaining wei
            args swaps[arg1].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != swaps[arg1].field_768:
            revert with 0, 'Seller must be the NFT owner'
        mem[64] = 256
        mem[96 len 160] = code.data[14630 len 160]
        s = 96
        s = 0
        s = 96
        s = 0
        s = 96
        s = 0
        s = 0
        s = 96
        s = 0
        idx = 0
        while idx < sub_c801dd40.length:
            mem[0] = 64
            mem[mem[64]] = 0x28bf7faa00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_c801dd40[idx]
            mem[mem[64] + 36] = swaps[arg1].field_1280
            require ext_code.size(sub_085cb072Address)
            call sub_085cb072Address.0x28bf7faa with:
                 gas gas_remaining wei
                args sub_c801dd40[idx], swaps[arg1].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 416
            require mem[_193 + 32] <= 4294967296
            require mem[_193 + 32] + 32 <= return_data.size
            require return_data.size >= mem[_193 + mem[_193 + 32]] + mem[_193 + 32] + 32 and mem[_193 + mem[_193 + 32]] <= 4294967296
            require mem[_193 + 128] <= 4294967296
            require mem[_193 + 128] + 32 <= return_data.size
            require return_data.size >= mem[_193 + mem[_193 + 128]] + mem[_193 + 128] + 32 and mem[_193 + mem[_193 + 128]] <= 4294967296
            require mem[_193 + 192] <= 4294967296
            require mem[_193 + 192] + 32 <= return_data.size
            require return_data.size >= mem[_193 + mem[_193 + 192]] + mem[_193 + 192] + 32 and mem[_193 + mem[_193 + 192]] <= 4294967296
            if mem[_193 + 30 len 2] != 0:
                revert with 0, 'Token has not been claimed as valid'
            if mem[_193 + 160] != 200:
                revert with 0, 'Token has not been claimed as valid'
            s = _193 + 256
            s = mem[_193 + 224]
            s = _193 + mem[_193 + 192]
            s = mem[_193 + 160]
            s = _193 + mem[_193 + 128]
            s = mem[_193 + 96]
            s = mem[_193 + 64]
            s = _193 + mem[_193 + 32]
            s = mem[_193]
            idx = idx + 1
            continue 
        if not stor60[stor51[arg1].field_1024][arg1]:
            revert with 0, 'Swap has not been approved by buyer'
        require ext_code.size(sub_ae41ed8aAddress)
        call sub_ae41ed8aAddress.0x23b872dd with:
             gas gas_remaining wei
            args swaps[arg1].field_768, swaps[arg1].field_1024, swaps[arg1].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(swaps[arg1].field_1792)
        call swaps[arg1].field_1792.0x23b872dd with:
             gas gas_remaining wei
            args swaps[arg1].field_1024, swaps[arg1].field_768, swaps[arg1].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        swaps[arg1].field_2560 = 2
        require 1 <= sub_ff3357c8[stor51[arg1].field_768].field_0
        require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
        require stor55[arg1] < sub_ff3357c8[stor51[arg1].field_768].field_0
        sub_ff3357c8[stor51[arg1].field_768][stor55[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0
        require sub_ff3357c8[stor51[arg1].field_768].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_768].field_0
        sub_ff3357c8[stor51[arg1].field_768][sub_ff3357c8[stor51[arg1].field_768].field_0].field_0 = 0
        sub_ff3357c8[stor51[arg1].field_768].field_0--
        if sub_ff3357c8[stor51[arg1].field_768].field_0 > sub_ff3357c8[stor51[arg1].field_768].field_0 - 1:
            idx = sub_ff3357c8[stor51[arg1].field_768].field_0 - 1
            while sub_ff3357c8[stor51[arg1].field_768].field_0 > idx:
                sub_ff3357c8[stor51[arg1].field_768][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor55[arg1] = 0
        stor55[stor53[stor51[arg1].field_768][stor53[stor51[arg1].field_768].field_0].field_0] = stor55[arg1]
        require 1 <= sub_ff3357c8[stor51[arg1].field_1024].field_0
        require sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_1024].field_0
        require stor54[arg1] < sub_ff3357c8[stor51[arg1].field_1024].field_0
        sub_ff3357c8[stor51[arg1].field_1024][stor54[arg1]].field_0 = sub_ff3357c8[stor51[arg1].field_1024][sub_ff3357c8[stor51[arg1].field_1024].field_0].field_0
        require sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1 < sub_ff3357c8[stor51[arg1].field_1024].field_0
        sub_ff3357c8[stor51[arg1].field_1024][sub_ff3357c8[stor51[arg1].field_1024].field_0].field_0 = 0
        sub_ff3357c8[stor51[arg1].field_1024].field_0--
        if sub_ff3357c8[stor51[arg1].field_1024].field_0 > sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1:
            idx = sub_ff3357c8[stor51[arg1].field_1024].field_0 - 1
            while sub_ff3357c8[stor51[arg1].field_1024].field_0 > idx:
                sub_ff3357c8[stor51[arg1].field_1024][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor54[arg1] = 0
        stor54[stor53[stor51[arg1].field_1024][stor53[stor51[arg1].field_1024].field_0].field_0] = stor54[arg1]
        require 1 <= sub_0e850699[stor51[arg1].field_512].field_0
        require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
        require stor57[arg1] < sub_0e850699[stor51[arg1].field_512].field_0
        sub_0e850699[stor51[arg1].field_512][stor57[arg1]].field_0 = sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0
        require sub_0e850699[stor51[arg1].field_512].field_0 - 1 < sub_0e850699[stor51[arg1].field_512].field_0
        sub_0e850699[stor51[arg1].field_512][sub_0e850699[stor51[arg1].field_512].field_0].field_0 = 0
        sub_0e850699[stor51[arg1].field_512].field_0--
        if sub_0e850699[stor51[arg1].field_512].field_0 > sub_0e850699[stor51[arg1].field_512].field_0 - 1:
            idx = sub_0e850699[stor51[arg1].field_512].field_0 - 1
            while sub_0e850699[stor51[arg1].field_512].field_0 > idx:
                sub_0e850699[stor51[arg1].field_512][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor57[arg1] = 0
        stor57[stor56[stor51[arg1].field_512][stor56[stor51[arg1].field_512].field_0].field_0] = stor57[arg1]
        sub_7ef39c3d[stor62][stor51[arg1].field_1280] = 0
        emit 0x795237ce: arg1, swaps[arg1].field_768, swaps[arg1].field_1024, swaps[arg1].field_512, swaps[arg1].field_1280, swaps[arg1].field_1536
}



}
