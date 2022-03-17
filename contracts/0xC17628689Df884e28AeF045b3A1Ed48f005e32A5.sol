contract main {


// =======================  Init code  ======================


uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[63 len 2512]
}



// =====================  Runtime code  =====================


address sub_51fb2bacAddress;
uint256 stor0;
address tellerAddress;
uint256 stor1;
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
    return address(sub_51fb2bacAddress)
}

function teller() payable {
    return address(tellerAddress)
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

function sub_8d541f35(?) payable {
    if msg.sender == address(tellerAddress):
        if arg1 < sub_9705a7dd:
            sub_28b2cdfa[arg1 << 192].field_0 = sub_28b2cdfa[arg1 << 192].field_0 + arg2 or Mask(128, 128, sub_28b2cdfa[arg1 << 192].field_0)
}

function sub_bd269838(?) payable {
    sub_28b2cdfa[uint64(stor3.field_0)].field_0 = 0
    sub_28b2cdfa[uint64(stor3.field_0)].field_256 = 0
    sub_28b2cdfa[uint64(stor3.field_0)].field_128 = uint64(block.timestamp)
    sub_28b2cdfa[uint64(stor3.field_0)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    return 0
}

function sub_64b9982d(?) payable {
    if msg.sender == changerAddress:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        uint256(stor1) = arg2 or Mask(96, 160, uint256(stor1))
        uint256(stor2) = arg3 or Mask(96, 160, uint256(stor2))
        uint256(stor3.field_0) = arg4 or Mask(96, 160, uint256(stor3.field_0))
}



}
