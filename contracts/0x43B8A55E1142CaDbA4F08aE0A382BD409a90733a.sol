contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0
    return code.data[39 len 502]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_fc0d92bd;
mapping of struct addresses;
mapping of struct sub_03679666;

function sub_03679666(?) payable {
    return sub_03679666[arg1].field_256
}

function addresses(address arg1) payable {
    return addresses[arg1].field_0, addresses[arg1].field_256
}

function owner() payable {
    return owner
}

function getPhoneByAddress(address arg1) payable {
    return addresses[address(arg1)].field_0
}

function sub_f3730653(?) payable {
    return sub_03679666[arg1].field_0, sub_03679666[arg1].field_256
}

function sub_fa6af355(?) payable {
    return sub_fc0d92bd
}

function sub_fc0d92bd(?) payable {
    return sub_fc0d92bd
}

function _fallback() payable {
  stop
}

function newPhoneToAddr(address arg1, uint256 arg2) payable {
    if owner == msg.sender:
        addresses[address(arg1)].field_0 = arg2
        addresses[address(arg1)].field_256 = arg1 or Mask(96, 160, addresses[address(arg1)].field_256)
        sub_03679666[arg2].field_0 = arg2
        sub_03679666[arg2].field_256 = arg1 or Mask(96, 160, sub_03679666[arg2].field_256)
        sub_fc0d92bd++
}



}
