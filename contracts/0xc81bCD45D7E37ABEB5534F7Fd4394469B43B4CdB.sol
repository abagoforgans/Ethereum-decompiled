contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2782]




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
    return sub_28b2cdfa[arg1 << 192].field_128
}

function sub_51fb2bac(?) payable {
    return sub_51fb2bacAddress
}

function teller() payable {
    return address(stor1.length)
}

function sub_5d486075(?) payable {
    return sub_28b2cdfa[arg1 << 192].field_0
}

function sub_7cc3d1e9(?) payable {
    return sub_9705a7dd
}

function sub_9705a7dd(?) payable {
    return sub_9705a7dd
}

function sub_f1d3d5d9(?) payable {
    return sub_28b2cdfa[arg1 << 192].field_0, sub_28b2cdfa[arg1 << 192].field_128
}

function _fallback() payable {
  stop
}

function sub_30a9d4ef(?) payable {
  stop
}

function sub_6af8383e(?) payable {
    uint256(stor3.field_0) = msg.sender or Mask(96, 160, uint256(stor3.field_0))
}

function sub_8d541f35(?) payable {
    if msg.sender == address(stor1.length):
        if arg1 < sub_9705a7dd:
            sub_28b2cdfa[arg1 << 192].field_0 = sub_28b2cdfa[arg1 << 192].field_0 + arg2 or Mask(128, 128, sub_28b2cdfa[arg1 << 192].field_0)
}

function sub_64b9982d(?) payable {
    if msg.sender == changerAddress:
        uint256(stor0.field_0) = arg1 or Mask(96, 160, uint256(stor0.field_0))
        stor1.length = arg2 or Mask(96, 160, stor1.length)
        uint256(stor2) = arg3 or Mask(96, 160, uint256(stor2))
        uint256(stor3.field_0) = arg4 or Mask(96, 160, uint256(stor3.field_0))
}

function sub_bd269838(?) payable {
    uint128(stor0.field_0) = 0
    uint128(stor0.field_128) = uint128(block.timestamp)
    uint256(stor1[]) = Array(len=arg1.length, data=arg1[all])
    sub_28b2cdfa[uint64(stor3.field_0)].field_0 = uint128(stor0.field_0)
    sub_28b2cdfa[uint64(stor3.field_0)].field_128 = uint64(stor0.field_128)
    if 31 >= stor1.length:
        sub_28b2cdfa[uint64(stor3.field_0)].field_256 = stor1.length
        idx = 0
        while sub_28b2cdfa[uint64(stor3.field_0)][1].length + 31 / 32 > idx:
            sub_28b2cdfa[uint64(stor3.field_0)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_28b2cdfa[uint64(stor3.field_0)].field_256 = Mask(255, 1, (256 * not bool(stor1.length)) - 1 and stor1.length) + 1
        if not Mask(255, 1, (256 * not bool(stor1.length)) - 1 and stor1.length):
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
