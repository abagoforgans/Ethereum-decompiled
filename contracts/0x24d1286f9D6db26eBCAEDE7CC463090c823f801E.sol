contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor7290387335634266486249037663595860854047133815481999773725367799777733655939;
uint256 stor101E;
array of uint256 stor77676537065960878698898692042018114106337750925255485067533933387271373890921;
uint256 storABBB;
uint256 storAD32;
uint256 storADA5;

function _fallback() payable {
    mem[96 len -875] = code.data[1925 len -875]
    mem[64] = -715
    mem[-779] = mem[96] + 96
    mem[-747] = 0
    stor0[0] = (2 * mem[mem[96] + 96]) + 1
    s = 0xf0df3dcda05b4fbd9c655cde3d5ceb211e019e72ec816e127a59e7195f2cd7f5
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0xf20c2325fa4b042639aa321c2a314dee1fe618d137e91ed85a618e6a0d3280b
    while (stor('map', 0, ('name', 'stor0', 0)).length + 31 / 32) - 0xf20c2325fa4b042639aa321c2a314dee1fe618d137e91ed85a618e6a0d3280b > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    storAD32 = 0
    mem[64] = -651
    mem[-715] = mem[128] + 96
    mem[-683] = 0
    stor0[1] = (2 * mem[mem[128] + 96]) + 1
    s = 0x3f9553dc324cd1fd24b54243720c42e18e5c20165bc5e523e42b440a8654abd1
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x3f9553dc324cd1fd24b54243720c42e18e5c20165bc5e523e42b440a8654abd1
    while (stor('map', 1, ('name', 'stor0', 0)).length + 31 / 32) + 0x3f9553dc324cd1fd24b54243720c42e18e5c20165bc5e523e42b440a8654abd1 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    storADA5 = 0
    mem[64] = -587
    mem[-651] = mem[160] + 96
    mem[-619] = 0
    mem[32] = 0
    mem[0] = 0xabbb5caa7dda850e60932de0934eb1f9d0f59695050f761dc64e443e5030a569
    storABBB.length = (2 * mem[mem[160] + 96]) + 1
    s = 0x1cc5dcd5de6bb5e1f7c4a928dc89b7e9d1f623bcb525344ccd68ad5beab9bb1d
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) + 0x1cc5dcd5de6bb5e1f7c4a928dc89b7e9d1f623bcb525344ccd68ad5beab9bb1d
    while (storABBB.length + 31 / 32) + 0x1cc5dcd5de6bb5e1f7c4a928dc89b7e9d1f623bcb525344ccd68ad5beab9bb1d > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    storABBB = 0
    mem[64] = -523
    stor101E.length = (2 * mem[mem[192] + 96]) + 1
    s = 0x48605503187722f63911ca26b8cca1d0a2afc10509c8be7f963371fec52b188
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 0x48605503187722f63911ca26b8cca1d0a2afc10509c8be7f963371fec52b188
    while (stor101E.length + 31 / 32) + 0x48605503187722f63911ca26b8cca1d0a2afc10509c8be7f963371fec52b188 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor101E = 0
    return code.data[1050 len 875]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 stor1;
uint256 sub_a4baecc9;
uint256 sub_bbd8f83a;
uint256 sub_f33d3a41;
uint256 stor101E;
uint256 storABBB;
uint256 storAD32;
uint256 storADA5;

function sub_96a8797e(?) payable {
    return stor1.length
}

function sub_a4baecc9(?) payable {
    return sub_a4baecc9
}

function sub_bbd8f83a(?) payable {
    return sub_bbd8f83a
}

function sub_f33d3a41(?) payable {
    return sub_f33d3a41
}

function _fallback() payable {
  stop
}

function sub_a65fe0df(?) payable {
    stor0[arg1 << 248][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[arg1 << 248].field_256 = arg3
}

function sub_afd444af(?) payable {
    mem[192] = stor0[arg1].field_0
    idx = 192
    s = 0
    while stor0[arg1].length + 192 > idx + 32:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[192 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32)]), 
           stor0[arg1].field_256
}

function sub_cc07696d(?) payable {
    stor1.length = 0
    sub_a4baecc9 = 0
    sub_bbd8f83a = 0
    sub_f33d3a41 = 0
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < 4:
        mem[0] = uint8(idx)
        mem[32] = 0
        s = sha3(idx << 248, 0)
        idx = idx + 1
        s = stor0[idx << 248].field_256 + s
        continue 
    stor1.length = 100 * arg1 * stor1[_2] * None / stor1[_2] * None * stor1[_2] * None * storAD32
    sub_a4baecc9 = 100 * arg1 * stor1[_2] * None / stor1[_2] * None * stor1[_2] * None * storADA5
    sub_bbd8f83a = 100 * arg1 * stor1[_2] * None / stor1[_2] * None * stor1[_2] * None * storABBB
    sub_f33d3a41 = stor101E * 100 * arg1 * stor1[_2] * None / stor1[_2] * None * stor1[_2] * None
}



}
