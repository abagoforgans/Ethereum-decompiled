contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[41 len 877]
}



// =====================  Runtime code  =====================


address stor0;
uint256 sub_a8e5458c;
mapping of struct draws;

function draws(uint256 arg1) payable {
    return draws[arg1].field_0, draws[arg1].field_256
}

function sub_5d5015e8(?) payable {
    require sub_a8e5458c != 0
    return draws[stor1 - 1].field_256
}

function sub_a8e5458c(?) payable {
    return sub_a8e5458c
}

function sub_b4fd06fd(?) payable {
    require sub_a8e5458c >= 2
    return draws[stor1 - 2].field_256
}

function _fallback() payable {
  stop
}

function sub_8152bd4b(?) payable {
    require msg.sender == stor0
    draws[stor1].field_0 = block.timestamp
    draws[stor1].field_256 = arg1 or Mask(96, 160, draws[stor1].field_256)
    sub_a8e5458c++
}

function getPot() payable {
    require sub_a8e5458c != 0
    call draws[stor1 - 1].field_256.0x403c9fa8 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getWinningNumber() payable {
    require sub_a8e5458c >= 2
    call draws[stor1 - 2].field_256.winningNumber() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_dc408109(?) payable {
    require sub_a8e5458c >= 2
    call draws[stor1 - 2].field_256.0xdc408109 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function buyTicket(uint256 arg1) payable {
    require sub_a8e5458c != 0
    call draws[stor1 - 1].field_256.buyTicket(address rg1, uint256 rg2) with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args msg.sender, arg1
    require ext_call.success
}



}
