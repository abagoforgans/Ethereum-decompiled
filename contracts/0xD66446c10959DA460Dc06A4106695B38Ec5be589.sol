contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1461]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_824d0227;

function sub_2c854a1a(?) payable {
    return bool(sub_824d0227[arg1[all]].field_256)
}

function sub_824d0227(?) payable {
    return sub_824d0227[arg1[all]][0 len sub_824d0227[arg1[all]].length].field_0
}

function sub_e3ac064a(?) payable {
    return bool(sub_824d0227[arg1[all]].field_264)
}

function kill() payable {
    if msg.sender == stor0:
        selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sendEtherToOwner() payable {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function sub_f6a0576d(?) payable {
    if stor0 == msg.sender:
        sub_824d0227[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
        sub_824d0227[arg1[all]].field_256 = 0
        sub_824d0227[arg1[all]].field_512 = 0
        sub_824d0227[arg1[all]].field_512 = 0
        sub_824d0227[arg1[all]].field_512 = 0
}



}
