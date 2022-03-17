contract main {


// =======================  Init code  ======================


uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[36 len 1649]
}



// =====================  Runtime code  =====================


uint64 stor0; offset 128
uint128 stor0;
uint128 stor0; offset 128
address sub_51fb2bacAddress;
uint256 stor0;
array of uint256 stor1;
address sub_1d7244dbAddress;
uint256 stor2;
uint64 stor3;
uint64 sub_9705a7dd; offset 160
address changerAddress;
uint256 stor3;
mapping of struct sub_28b2cdfa;

function changer() payable {
    return changerAddress
}

function sub_1d7244db(?) payable {
    return address(sub_1d7244dbAddress)
}

function sub_28b2cdfa(?) payable {
    return uint64(sub_28b2cdfa[arg1 << 192].field_128)
}

function sub_51fb2bac(?) payable {
    return sub_51fb2bacAddress
}

function teller() payable {
    return address(stor1.length)
}

function sub_5d486075(?) payable {
    return uint128(sub_28b2cdfa[arg1 << 192].field_0)
}

function sub_7cc3d1e9(?) payable {
    return sub_9705a7dd
}

function sub_9705a7dd(?) payable {
    return sub_9705a7dd
}

function sub_ca71e347(?) payable {
    mem[224] = sub_28b2cdfa[arg1][1].field_0
    idx = 224
    s = 0
    while sub_28b2cdfa[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = sub_28b2cdfa[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return uint128(sub_28b2cdfa[arg1].field_0), 
           uint64(sub_28b2cdfa[arg1].field_0),
           Array(len=sub_28b2cdfa[arg1][1].length, data=mem[224 len sub_28b2cdfa[arg1][1].length + (floor32(sub_28b2cdfa[arg1][1].length - 1) + -sub_28b2cdfa[arg1][1].length + 32 % 32)])
}

function sub_f1d3d5d9(?) payable {
    return uint128(sub_28b2cdfa[arg1 << 192].field_0), uint64(sub_28b2cdfa[arg1 << 192].field_128)
}

function _fallback() payable {
  stop
}

function sub_30a9d4ef(?) payable {
  stop
}

function sub_8d541f35(?) payable {
    if address(stor1.length) == msg.sender:
        if arg1 < sub_9705a7dd:
            sub_28b2cdfa[arg1 << 192].field_0 = uint128(sub_28b2cdfa[arg1 << 192].field_128)
}

function sub_64b9982d(?) payable {
    if msg.sender == changerAddress:
        uint256(stor0.field_0) = arg1 or Mask(96, 160, uint256(stor0.field_0))
        stor1.length = arg2 or Mask(96, 160, stor1.length)
        uint256(stor2) = arg3 or Mask(96, 160, uint256(stor2))
        uint256(stor3.field_0) = arg4 or Mask(96, 160, uint256(stor3.field_0))
}

function sub_bd269838(?) payable {
    mem[128 len arg1.length] = arg1[all]
    uint128(stor0.field_0) = 0
    uint128(stor0.field_128) = uint128(block.timestamp)
    stor1.length = (2 * arg1.length) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint128(sub_28b2cdfa[uint64(stor3.field_0)].field_0) = uint128(stor0.field_0)
    uint128(sub_28b2cdfa[uint64(stor3.field_0)].field_0) = uint128(stor0.field_0)
    uint128(sub_28b2cdfa[uint64(stor3.field_0)].field_128) = uint64(stor0.field_128)
    uint64(sub_28b2cdfa[uint64(stor3.field_0)].field_192) = 0
    if 31 >= stor1.length:
        sub_28b2cdfa[uint64(stor3.field_0)].field_256 = stor1.length
        idx = 0
        while sub_28b2cdfa[uint64(stor3.field_0)][1].length + 31 / 32 > idx:
            sub_28b2cdfa[uint64(stor3.field_0)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_28b2cdfa[uint64(stor3.field_0)].field_256 = Mask(255, 1, stor1.length and (256 * not bool(stor1.length)) - 1) + 1
        if not Mask(255, 1, stor1.length and (256 * not bool(stor1.length)) - 1):
            idx = 0
            while sub_28b2cdfa[uint64(stor3.field_0)][1].length + 31 / 32 > idx:
                sub_28b2cdfa[uint64(stor3.field_0)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor1.length + 31 / 32 > idx:
                sub_28b2cdfa[uint64(stor3.field_0)][s + 1].field_0 = uint256(stor1[idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor1.length + 31 / 32
            while sub_28b2cdfa[uint64(stor3.field_0)][1].length + 31 / 32 > idx:
                sub_28b2cdfa[uint64(stor3.field_0)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    return 0
}



}
