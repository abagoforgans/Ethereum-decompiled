contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    stor2 = code.data[4901 len 20]
    stor0 = code.data[4965 len 20]
    stor3 = code.data[4933 len 20]
    stor1 = code.data[4869 len 20]
    return code.data[354 len 4503]
}



// =====================  Runtime code  =====================


const sub_64b723f5(?) = 20

const sub_a7ed69a9(?) = 0


address commissionHolderAddress;
address sub_013e2addAddress;
address sub_ab451c1dAddress;
address sub_bb0af720Address;
uint256 minimalInvestment;

function sub_013e2add(?) {
    return sub_013e2addAddress
}

function minimalInvestment() {
    return minimalInvestment
}

function commissionHolder() {
    return commissionHolderAddress
}

function sub_ab451c1d(?) {
    return sub_ab451c1dAddress
}

function sub_bb0af720(?) {
    return sub_bb0af720Address
}

function sub_9a9e431b(?) {
    require ext_code.size(sub_ab451c1dAddress)
    call sub_ab451c1dAddress.0xfdff9b4d with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    minimalInvestment = arg1
}

function sub_af1145ff(?) {
    require ext_code.size(sub_ab451c1dAddress)
    call sub_ab451c1dAddress.0xfdff9b4d with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    sub_bb0af720Address = arg1
}

function sub_74a80f10(?) {
    require ext_code.size(sub_ab451c1dAddress)
    call sub_ab451c1dAddress.0xfdff9b4d with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    commissionHolderAddress = arg1
}

function sub_89b4b44c(?) {
    require ext_code.size(sub_ab451c1dAddress)
    call sub_ab451c1dAddress.0xfdff9b4d with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xfdff9b4d with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    sub_ab451c1dAddress = arg1
}

function sub_b02e839f(?) payable {
    require ext_code.size(sub_ab451c1dAddress)
    call sub_ab451c1dAddress.0xa4fbc8e3 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_bb0af720Address)
    call sub_bb0af720Address.0x7ff9b596 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_bb0af720Address)
    call sub_bb0af720Address.0xbc6548fb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x2e6f2136 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value / ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require msg.value >= minimalInvestment
    require ext_code.size(sub_ab451c1dAddress)
    call sub_ab451c1dAddress.0xbf61301e with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    require ext_call.return_data[0] >= 0
    require ext_call.return_data[0] <= 20
    require ext_code.size(sub_bb0af720Address)
    call sub_bb0af720Address.0x7ff9b596 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_bb0af720Address)
    call sub_bb0af720Address.0xbc6548fb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value msg.value - (ext_call.return_data[0] * msg.value / 100) wei
         gas 2300 * is_zero(value) wei
    call commissionHolderAddress with:
       value ext_call.return_data[0] * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x2e6f2136 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (ext_call.return_data[0] * msg.value / 100) / ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(sub_bb0af720Address)
    call sub_bb0af720Address.0x2fde999c with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (ext_call.return_data[0] * msg.value / 100)
    require ext_call.success
}



}
