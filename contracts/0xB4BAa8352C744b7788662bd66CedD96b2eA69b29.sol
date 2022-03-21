contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 storE90B;
mapping of uint256 stor2;
uint256 storAC33;

function _fallback() payable {
    mem[96 len -1068] = code.data[1666 len -1068]
    stor0 = mem[96]
    stor1 = mem[128]
    mem[64] = -908
    stor2[0] = (2 * mem[mem[160] + 96]) + 1
    s = 0x7d2944a272ac5bae96b5bd2f67b6c13276d541dc09eb1cf414d96b19a09e1c2f
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) + 0x7d2944a272ac5bae96b5bd2f67b6c13276d541dc09eb1cf414d96b19a09e1c2f
    while (stor('map', 0, ('name', 'stor2', 2)).length + 31 / 32) + 0x7d2944a272ac5bae96b5bd2f67b6c13276d541dc09eb1cf414d96b19a09e1c2f > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    storAC33 = 0
    mem[64] = -844
    stor2[1] = (2 * mem[mem[192] + 96]) + 1
    s = 0x7fef4bf8f63cf9dd467136c679c02b5c17fcf6322d9562512bf5eb952cf7cc53
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 0x7fef4bf8f63cf9dd467136c679c02b5c17fcf6322d9562512bf5eb952cf7cc53
    while (stor('map', 1, ('name', 'stor2', 2)).length + 31 / 32) + 0x7fef4bf8f63cf9dd467136c679c02b5c17fcf6322d9562512bf5eb952cf7cc53 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    storE90B = 0
    return code.data[598 len 1068]
}



// =====================  Runtime code  =====================


address sub_d0cc99ccAddress;
array of uint256 stor1;
array of struct sub_afd444af;
uint256 sub_96a8797e;
uint256 sub_a4baecc9;

function sub_73572371(?) payable {
    return address(stor1.length)
}

function sub_96a8797e(?) payable {
    return sub_96a8797e
}

function sub_a4baecc9(?) payable {
    return sub_a4baecc9
}

function sub_afd444af(?) payable {
    mem[192] = sub_afd444af[arg1].field_0
    idx = 192
    s = 0
    while sub_afd444af[arg1].length + 192 > idx + 32:
        mem[idx + 32] = sub_afd444af[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_afd444af[arg1].length, data=mem[192 len sub_afd444af[arg1].length + (floor32(sub_afd444af[arg1].length - 1) + -sub_afd444af[arg1].length + 32 % 32)]), 
           sub_afd444af[arg1].field_256
}

function sub_d0cc99cc(?) payable {
    return sub_d0cc99ccAddress
}

function _fallback() payable {
  stop
}

function sub_a65fe0df(?) payable {
    sub_afd444af[arg1 << 248][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_afd444af[arg1 << 248].field_256 = arg3
}

function sub_cc07696d(?) payable {
    sub_96a8797e = 0
    sub_a4baecc9 = 0
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < 4:
        mem[0] = uint8(idx)
        mem[32] = 2
        s = sha3(idx << 248, 2)
        idx = idx + 1
        s = sub_afd444af[idx << 248].field_256 + s
        continue 
    sub_96a8797e = sub_afd444af[0].field_256 * 10000 * arg2 * uint256(stor1[_6]) * None / uint256(stor1[_6]) * None * uint256(stor1[_6]) * None
    sub_a4baecc9 = sub_afd444af[1].field_256 * 10000 * arg2 * uint256(stor1[_6]) * None / uint256(stor1[_6]) * None * uint256(stor1[_6]) * None
    call sub_d0cc99ccAddress.0xa4088264 with:
         gas gas_remaining - 25050 wei
        args address(arg1), sub_96a8797e
    require ext_call.success
    call address(stor1.length).0xa4088264 with:
         gas gas_remaining - 25050 wei
        args address(arg1), sub_a4baecc9
}



}
